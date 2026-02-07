local showEndTime = 0
local isShowActive = false

local function GetTimeParts(timestamp)
    local date = os.date("*t", timestamp)
    return {
        timestamp = timestamp,
        min = date.min,
        hour = date.hour,
        wday = date.wday, -- 1 = Sunday, 7 = Saturday
        day = date.day,
        month = date.month,
        year = date.year
    }
end

local function StopFireworkShow()
    if isShowActive then
        print("^1Fireworkshow is over.^0")
        TriggerClientEvent("firework:stopFireworkShow", -1)
        isShowActive = false
        showEndTime = 0
    end
end

local function StartFireworkShow(endTime)
    if not isShowActive then
        print("Starting Fireworkshow....")
        TriggerClientEvent("firework:startFireworkShow", -1)
        isShowActive = true
        showEndTime = endTime
    end
end

local function CheckSchedules()
    if isShowActive then return end

    local currentTimestamp = os.time()
    local t = GetTimeParts(currentTimestamp)

    for _, schedule in ipairs(Config.Schedules) do
        local isDayMatch = false
        
        -- Check if "Today" matches the schedule requirement
        if schedule.type == "daily" then
            isDayMatch = true
        elseif schedule.type == "weekly" then
            if t.wday == schedule.dayOfWeek then
                isDayMatch = true
            end
        elseif schedule.type == "date" then
            if t.month == schedule.date[1] and t.day == schedule.date[2] then
                isDayMatch = true
            end
        end

        if isDayMatch then
            -- Calculate precise start and end timestamps for this schedule "today"
            local schedStartTimestamp = os.time({
                year = t.year,
                month = t.month,
                day = t.day,
                hour = schedule.time[1],
                min = schedule.time[2],
                sec = 0
            })
            
            local schedEndTimestamp = schedStartTimestamp + (schedule.duration * 60)

            -- Check if current time is within the window
            if currentTimestamp >= schedStartTimestamp and currentTimestamp < schedEndTimestamp then
                print(string.format("Resuming/Starting schedule. Ends in %d seconds.", schedEndTimestamp - currentTimestamp))
                StartFireworkShow(schedEndTimestamp)
                return -- Found a valid schedule, stop checking
            end
        end
    end
end

CreateThread(function()
    -- Initial check on startup (handles restart resume)
    Wait(1000)
    CheckSchedules()

    while true do
        Wait(60000) -- Check every minute
        local currentTimestamp = os.time()

        -- Check if we need to stop the show
        if isShowActive and currentTimestamp >= showEndTime then
            StopFireworkShow()
        end

        -- Check schedules
        if not isShowActive then
            CheckSchedules()
        end
    end
end)

RegisterCommand("fireworkshow", function(source, args)
    TriggerClientEvent('firework:client:openMenu', source)
end, true)

RegisterNetEvent('firework:server:startShow', function(duration)
    local src = source
    if not IsPlayerAceAllowed(src, 'command.fireworkshow') then
        return
    end
    
    local duration = tonumber(duration) or 15
    print(string.format("^2Fireworkshow started by %s for %d minutes.^0", GetPlayerName(src), duration))
    StartFireworkShow(os.time() + (duration * 60))
end)

RegisterCommand("stopfirework", function(source)
    if isShowActive then
        StopFireworkShow()
        TriggerClientEvent('firework:client:notify', source, '成功', '花火ショーを停止しました', 'success')
    else
        TriggerClientEvent('firework:client:notify', source, 'エラー', '花火ショーは実行されていません', 'error')
    end
end, true)
