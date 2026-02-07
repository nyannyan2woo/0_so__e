local particleDict = "scr_indep_fireworks"
local fireworkOver = false

local function LaunchFirework(fireworkPos, fireworkType)
    RequestNamedPtfxAsset(particleDict)
    while not HasNamedPtfxAssetLoaded(particleDict) do
        Wait(1)
    end

    local particleEffect = ""
    local delay = 1500
    local iterations = 10

    if fireworkType == "Battery" then
        particleEffect = "scr_indep_firework_trailburst"
    elseif fireworkType == "Rocket" then
        particleEffect = "scr_indep_firework_starburst"
    elseif fireworkType == "Fountain" then
        particleEffect = "scr_indep_firework_fountain"
        delay = 2500
        iterations = 8
    end

    CreateThread(function()
        while not fireworkOver do 
             for i = 1, iterations do
                if fireworkOver then break end

                UseParticleFxAssetNextCall(particleDict)
                StartNetworkedParticleFxNonLoopedAtCoord(particleEffect, fireworkPos, 0.0, 0.0, 0.0, math.random() * 0.5 + 0.8, false, false, false, false)
                Wait(delay)
            end
            Wait(math.random(500, 2000)) -- Small random pause between sets
        end
    end)
end

RegisterNetEvent("firework:startFireworkShow", function()
    fireworkOver = false
    for i = 1, #Config.FireworkLocations do
        local loc = Config.FireworkLocations[i]
        local fireworkPos = loc.pos
        local fireworkType = loc.type

        LaunchFirework(fireworkPos, fireworkType)
    end
end)

RegisterNetEvent("firework:stopFireworkShow", function()
    fireworkOver = true
end)

RegisterNetEvent('firework:client:openMenu', function()
    local result = exports.lation_ui:input({
        title = '花火ショー設定',
        options = {
            {
                type = 'number',
                label = '実行時間(分)',
                placeholder = '15',
                min = 1,
                max = 600, -- 10 hours max? reasonable limit
                required = true
            }
        }
    })

    if result then
        local duration = tonumber(result[1])
        if duration then
            TriggerServerEvent('firework:server:startShow', duration)
            exports.lation_ui:notify({
                title = '成功',
                message = duration .. '分間の花火ショーを開始しました',
                type = 'success'
            })
        end
    end
end)

RegisterNetEvent('firework:client:notify', function(title, message, type)
    exports.lation_ui:notify({
        title = title,
        message = message,
        type = type
    })
end)
