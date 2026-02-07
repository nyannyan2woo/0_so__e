-- Server-side Location Music Manager
-- Handles server events for location music

-- Command to reinitialize location music for all players (admin only)
RegisterCommand('reinitlocationmusic', function(source, args, rawCommand)
    -- You can add permission check here if needed
    -- Example: if not IsPlayerAceAllowed(source, 'admin') then return end
    
    TriggerClientEvent('xsound:reinitializeLocationMusic', -1)
    
    if source > 0 then
        print('[xsound] Location music reinitialized for all players by player ' .. source)
    else
        print('[xsound] Location music reinitialized for all players')
    end
end, false)

-- Event to initialize location music for a specific player
RegisterNetEvent('xsound:requestLocationMusic', function()
    local src = source
    TriggerClientEvent('xsound:reinitializeLocationMusic', src)
end)
