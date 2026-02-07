-- Location Music Manager
-- Automatically plays music at configured locations with loop

local locationMusicActive = {}

-- Initialize all location music from config
function InitializeLocationMusic()
    if not config.LocationMusic or #config.LocationMusic == 0 then
        return
    end

    for _, location in ipairs(config.LocationMusic) do
        if location.name and location.url and location.coords then
            local soundId = location.name
            local url = location.url
            local coords = location.coords
            local volume = location.volume or 0.5
            local distance = location.distance or 50.0
            local loop = location.loop ~= false -- Default to true

            -- Play music at the specified position with loop
            PlayUrlPos(soundId, url, volume, coords, loop)
            
            -- Set the distance for the sound
            Wait(100) -- Small delay to ensure sound is created
            if soundExists(soundId) then
                Distance(soundId, distance)
                locationMusicActive[soundId] = true
            end
        end
    end
end

-- Initialize location music when player spawns
CreateThread(function()
    -- Wait for player to be fully loaded
    while not NetworkIsPlayerActive(PlayerId()) do
        Wait(100)
    end
    
    -- Small delay to ensure xsound is fully initialized
    Wait(1000)
    
    InitializeLocationMusic()
end)

-- Event to reinitialize location music (useful for admin commands)
RegisterNetEvent('xsound:reinitializeLocationMusic', function()
    InitializeLocationMusic()
end)
