local points = {}

function Draw3DText(x, y, z, textInput, fontId, scaleX, scaleY)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = #(vector3(px, py, pz) - vector3(x, y, z))
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov
    SetTextScale(scaleX * scale, scaleY * scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(250, 250, 250, 255)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x, y, z + 2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

local function spawnCar(index)
    local data = Cars[index]
    if not data then return end

    local pos, heading
    if type(data.pos) == 'vector4' then
        pos = data.pos.xyz
        heading = data.pos.w
    else
        pos = data.pos
        heading = data.heading
    end
    
    local hash = joaat(data.model)
    if not lib.requestModel(hash, 5000) then return end
    
    local veh = CreateVehicle(hash, pos.x, pos.y, pos.z, heading, false, false)
    SetModelAsNoLongerNeeded(hash)
    
    SetVehicleEngineOn(veh, false, false, true)
    SetVehicleBrakeLights(veh, false)
    SetVehicleLights(veh, 0)
    SetVehicleLightsMode(veh, 0)
    SetVehicleInteriorlight(veh, false)
    SetVehicleOnGroundProperly(veh)
    FreezeEntityPosition(veh, true)
    SetVehicleCanBreak(veh, true)
    SetVehicleFullbeam(veh, false)
    
    SetVehicleDamage(veh, 0, 0, 0)
    SetVehicleDirtLevel(veh, 0.0)
    
    local primaryColor = math.random(0, 159)
    local secondaryColor = math.random(0, 159)
    SetVehicleColours(veh, primaryColor, secondaryColor)
    
    if carInvincible then
        SetVehicleReceivesRampDamage(veh, true)
        SetVehicleCanBeVisiblyDamaged(veh, true)
        SetVehicleLightsCanBeVisiblyDamaged(veh, true)
        SetVehicleWheelsCanBreakOffWhenBlowUp(veh, false)
        SetDisableVehicleWindowCollisions(veh, true)
        SetEntityInvincible(veh, true)
    end
    
    if DoorLock then
        SetVehicleDoorsLocked(veh, 2)
    end
    
    if data.plate then
        SetVehicleNumberPlateText(veh, data.plate)
    end
    
    Cars[index].spawned = veh
end

local function deleteCar(index)
    if Cars[index].spawned then
        if DoesEntityExist(Cars[index].spawned) then
            DeleteEntity(Cars[index].spawned)
        end
        Cars[index].spawned = nil
    end
end

CreateThread(function()
    for i = 1, #Cars do
        local car = Cars[i]
        local coords = type(car.pos) == 'vector4' and car.pos.xyz or car.pos
        
        points[i] = lib.points.new({
            coords = coords,
            distance = ShowRange,
            idx = i,
            onEnter = function(self)
                spawnCar(self.idx)
            end,
            onExit = function(self)
                deleteCar(self.idx)
            end,
            nearby = function(self)
                local data = Cars[self.idx]
                if data.spawned and DoesEntityExist(data.spawned) then
                    if data.spin then
                        SetEntityHeading(data.spawned, GetEntityHeading(data.spawned) - 0.3)
                    end
                end
                
                if data.text then
                    local pos = type(data.pos) == 'vector4' and data.pos.xyz or data.pos
                    Draw3DText(pos.x, pos.y, pos.z - 0.5, data.text, 0, 0.1, 0.1)
                end
            end
        })
    end
end)

AddEventHandler('onResourceStop', function(res)
    if res == GetCurrentResourceName() then
        for i = 1, #Cars do
            deleteCar(i)
        end
    end
end)
