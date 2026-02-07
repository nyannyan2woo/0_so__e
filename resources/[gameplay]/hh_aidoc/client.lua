local QBCore = exports['qb-core']:GetCoreObject()

local isDocActive = false
local docVehicle = nil
local docPed = nil
local canCallDoc = true

local function Notify(msg, type)
    lib.notify({
        title = 'AIドクター',
        description = msg,
        type = type or 'inform'
    })
end

local function CleanupDoctor()
    if DoesEntityExist(docPed) then
        TaskWanderStandard(docPed, 10.0, 10)
        SetEntityAsNoLongerNeeded(docPed)
        RemovePedElegantly(docPed)
        SetTimeout(10000, function()
            if DoesEntityExist(docPed) then DeleteEntity(docPed) end
        end)
    end
    if DoesEntityExist(docVehicle) then
        SetEntityAsNoLongerNeeded(docVehicle)
        SetTimeout(20000, function()
            if DoesEntityExist(docVehicle) then DeleteEntity(docVehicle) end
        end)
    end
    isDocActive = false
    canCallDoc = true
end

local function DoctorTreatment()
    lib.requestAnimDict("mini@cpr@char_a@cpr_str")
    TaskPlayAnim(docPed, "mini@cpr@char_a@cpr_str", "cpr_pumpchest", 8.0, 8.0, -1, 1, 0, false, false, false)

    if lib.progressBar({
        duration = Config.ReviveTime,
        label = Config.Lang.Treating,
        useWhileDead = true,
        canCancel = false,
        disable = {
            move = true,
            car = true,
            mouse = false,
            combat = true,
        },
    }) then
        ClearPedTasks(docPed)
        Wait(500)
        TriggerEvent("qbx_medical:client:playerRevived")
        StopScreenEffect('DeathFailOut')
        Notify(string.format(Config.Lang.TreatmentComplete, Config.Price), "success")
        CleanupDoctor()
    end
end

local function SpawnDoctor(coords)
    canCallDoc = false
    local vehHash = Config.VehicleModel
    local pedHash = Config.PedModel

    lib.requestModel(vehHash)
    lib.requestModel(pedHash)

    local spawnRadius = 50.0
    local found, spawnPos, spawnHeading = GetClosestVehicleNodeWithHeading(coords.x + math.random(-spawnRadius, spawnRadius), coords.y + math.random(-spawnRadius, spawnRadius), coords.z, 0, 3, 0)

    if not found then
        spawnPos = coords + vector3(math.random(-spawnRadius, spawnRadius), math.random(-spawnRadius, spawnRadius), 0)
        spawnHeading = 0.0
    end

    docVehicle = CreateVehicle(vehHash, spawnPos, spawnHeading, true, false)
    SetVehicleOnGroundProperly(docVehicle)
    SetVehicleNumberPlateText(docVehicle, "AIDOC")
    SetEntityAsMissionEntity(docVehicle, true, true)
    SetVehicleEngineOn(docVehicle, true, true, false)

    docPed = CreatePedInsideVehicle(docVehicle, 26, pedHash, -1, true, false)
    SetEntityAsMissionEntity(docPed, true, true)

    local blip = AddBlipForEntity(docVehicle)
    SetBlipSprite(blip, Config.Blip.Sprite)
    SetBlipColour(blip, Config.Blip.Color)
    SetBlipScale(blip, Config.Blip.Scale)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blip.Label)
    EndTextCommandSetBlipName(blip)
    SetBlipFlashes(blip, true)

    PlaySoundFrontend(-1, "Text_Arrive_Tone", "Phone_SoundSet_Default", 1)
    
    TaskVehicleDriveToCoord(docPed, docVehicle, coords.x, coords.y, coords.z, 20.0, 0, vehHash, 786603, 5.0)
    isDocActive = true

    CreateThread(function()
        local arrivalStep = 0
        while isDocActive do
            local playerPed = cache.ped
            local playerCoords = GetEntityCoords(playerPed)
            local vehCoords = GetEntityCoords(docVehicle)
            local pedCoords = GetEntityCoords(docPed)

            if arrivalStep == 0 then -- Driving to player
                if #(vehCoords - playerCoords) < 15.0 then
                    TaskVehicleTempAction(docPed, docVehicle, 1, 1000)
                    SetVehicleHandbrake(docVehicle, true)
                    TaskLeaveVehicle(docPed, docVehicle, 0)
                    arrivalStep = 1
                end
            elseif arrivalStep == 1 then -- Walking to player
                if not IsPedInAnyVehicle(docPed, false) then
                    TaskGoToCoordAnyMeans(docPed, playerCoords.x, playerCoords.y, playerCoords.z, 1.5, 0, 0, 786603, 0xbf800000)
                    arrivalStep = 2
                end
            elseif arrivalStep == 2 then -- Reached player
                if #(pedCoords - playerCoords) < 2.0 then
                    RemoveBlip(blip)
                    DoctorTreatment()
                    arrivalStep = 3
                end
            end
            Wait(500)
        end
        if DoesBlipExist(blip) then RemoveBlip(blip) end
    end)
end

RegisterCommand("help", function()
    local playerData = QBCore.Functions.GetPlayerData()
    local isDead = playerData.metadata["isdead"] or playerData.metadata["inlaststand"]

    if not isDead then
        Notify(Config.Lang.OnlyWhenDead, "error")
        return
    end

    if not canCallDoc then
        Notify(Config.Lang.AlreadyHeading, "primary")
        return
    end

    QBCore.Functions.TriggerCallback('hhfw:docOnline', function(emsOnline, hasEnoughMoney)
        if emsOnline <= Config.Doctor and hasEnoughMoney then
            local coords = GetEntityCoords(cache.ped)
            SpawnDoctor(coords)
            TriggerServerEvent('hhfw:charge')
            Notify(Config.Lang.DispatchSent, "success")
        elseif emsOnline > Config.Doctor then
            Notify(Config.Lang.TooManyEMS, "error")
        else
            Notify(Config.Lang.NotEnoughMoney, "error")
        end
    end)
end)
