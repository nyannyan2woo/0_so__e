function DrawText(text)
  SendNUIMessage({
    type = 'show',
    text = text
  })
end

exports('DrawText', DrawText)

function HideText()
  SendNUIMessage({
    type = 'hide'
  })
end

exports('HideText', HideText)

-- QBCore Events Support
-- RegisterNetEvent('qb-core:client:DrawText', function(text, position)
--     DrawText(text)
-- end)

-- RegisterNetEvent('qb-core:client:ChangeText', function(text, position)
--     DrawText(text)
-- end)

-- RegisterNetEvent('qb-core:client:HideText', function()
--     HideText()
-- end)