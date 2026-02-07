local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('hhfw:docOnline', function(source, cb)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local xPlayers = QBCore.Functions.GetPlayers()
    local emsCount = 0
    local canPay = false

    if player.PlayerData.money.cash >= Config.Price then
        canPay = true
    elseif player.PlayerData.money.bank >= Config.Price then
        canPay = true
    end

    for i = 1, #xPlayers do
        local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
        if xPlayer and xPlayer.PlayerData.job.name == 'ambulance' and xPlayer.PlayerData.job.onduty then
            emsCount = emsCount + 1
        end
    end

    cb(emsCount, canPay)
end)

RegisterServerEvent('hhfw:charge', function()
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    if not player then return end

    if player.PlayerData.money.cash >= Config.Price then
        player.Functions.RemoveMoney("cash", Config.Price, "ai-doc-treatment")
    else
        player.Functions.RemoveMoney("bank", Config.Price, "ai-doc-treatment")
    end
    
    TriggerEvent("qb-bossmenu:server:addAccountMoney", 'ambulance', Config.Price)
end)
