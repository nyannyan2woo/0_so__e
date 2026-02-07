-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local swapHook, buyHook

if not IsESX() and not IsQBCore() then
	error('Framework not detected')
end

-- Discord Webhook Helper Function
local function SendDiscordWebhook(title, description, fields, color)
	if not Config.Webhook.enabled or not Config.Webhook.url or Config.Webhook.url == '' then
		return
	end

	local embed = {
		{
			['title'] = title,
			['description'] = description,
			['color'] = color or Config.Webhook.color,
			['fields'] = fields or {},
			['footer'] = {
				['text'] = os.date('%Y-%m-%d %H:%M:%S'),
			},
		}
	}

	PerformHttpRequest(Config.Webhook.url, function(err, text, headers) end, 'POST', json.encode({
		username = Config.Webhook.botName,
		embeds = embed
	}), { ['Content-Type'] = 'application/json' })
end

CreateThread(function()
	if IsESX() then
		for k in pairs(Config.Shops) do
			TriggerEvent('esx_society:registerSociety', k, k, 'society_'..k, 'society_'..k, 'society_'..k, {type = 'public'})
		end
	end
end)

CreateThread(function()
	while GetResourceState('ox_inventory') ~= 'started' do Wait(1000) end

	for k, v in pairs(Config.Shops) do
		local stash = {
			id = k,
			label = v.label..' '..Strings.inventory,
			slots = 50,
			weight = 100000,
		}
		exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight)
		local items = exports.ox_inventory:GetInventoryItems(k, false)
		local stashItems = {}
		if items and items ~= {} then
			for _, v2 in pairs(items) do
				if v2 and v2.name then
					stashItems[#stashItems + 1] = { name = v2.name, metadata = v2.metadata, count = v2.count, price = (v2.metadata.shopData.price or 0) }
				end
			end

			exports.ox_inventory:RegisterShop(k, {
				name = v.label,
				inventory = stashItems,
				locations = {
					v.locations.shop.coords,
				}
			})
		end
	end

	swapHook = exports.ox_inventory:registerHook('swapItems', function(payload)
		for k in pairs(Config.Shops) do
			if payload.fromInventory == k then
				TriggerEvent('wasabi_oxshops:refreshShop', k)
			elseif payload.toInventory == k and tonumber(payload.fromInventory) then
				-- Process item validation asynchronously to avoid hook execution warning
				CreateThread(function()
					Wait(100) -- Small delay to ensure inventory state is ready
					local item = exports.ox_inventory:GetSlot(k, payload.toSlot)
					
					if not item then 
						print('[wasabi_oxshops] Error: Item not found in slot ' .. payload.toSlot)
						return 
					end
					
					print('[wasabi_oxshops] Item moved to shop: ' .. item.name .. ' (Shop: ' .. k .. ')')
					
					-- Check if the item has a configured price
					local shopConfig = Config.Shops[k]
					if not shopConfig then 
						print('[wasabi_oxshops] Error: Shop config not found for ' .. k)
						return 
					end
					
					if not shopConfig.prices then 
						print('[wasabi_oxshops] Warning: No prices configured for shop ' .. k)
						TriggerClientEvent('ox_lib:notify', payload.fromInventory, {
							title = 'エラー',
							description = 'このショップには価格設定がありません',
							type = 'error'
						})
						return 
					end
					
					local configuredPrice = shopConfig.prices[item.name]
					print('[wasabi_oxshops] Configured price for ' .. item.name .. ': ' .. tostring(configuredPrice))
					
					if not configuredPrice then
						-- Item not configured - reject and return to player
						print('[wasabi_oxshops] Item not configured, rejecting: ' .. item.name)
						exports.ox_inventory:RemoveItem(k, item.name, item.count, nil, payload.toSlot)
						exports.ox_inventory:AddItem(payload.fromInventory, item.name, item.count, item.metadata)
						
						-- Notify the player
						TriggerClientEvent('ox_lib:notify', payload.fromInventory, {
							title = 'エラー',
							description = ('アイテム "%s" はこのショップで販売できません'):format(item.label or item.name),
							type = 'error'
						})
						return
					end
					
					-- Item is configured - set price automatically
					local metadata = item.metadata or {}
					metadata.shopData = {
						shop = k,
						price = configuredPrice
					}
					
					exports.ox_inventory:SetMetadata(k, payload.toSlot, metadata)
					TriggerEvent('wasabi_oxshops:refreshShop', k)
					
					-- Notify the player of success
					TriggerClientEvent('ox_lib:notify', payload.fromInventory, {
						title = '成功',
						description = ('アイテムが $%s で登録されました'):format(configuredPrice),
						type = 'success'
					})
					
					-- Send event notification
					TriggerEvent('wasabi_oxshops:itemAdded', {
						shop = k,
						shopLabel = shopConfig.label,
						playerId = payload.fromInventory,
						itemName = item.name,
						itemLabel = item.label or item.name,
						count = item.count,
						price = configuredPrice
					})
					
					print('[wasabi_oxshops] Item successfully added to shop: ' .. item.name .. ' x' .. item.count .. ' @ $' .. configuredPrice)
				end)
			end
		end
	end, {})

	buyHook = exports.ox_inventory:registerHook('buyItem', function(payload)
		local metadata = payload.metadata
		if metadata?.shopData then
			exports.ox_inventory:RemoveItem(metadata.shopData.shop, payload.itemName, payload.count)
			AddMoney(metadata.shopData.shop, metadata.shopData.price)
			
			-- Send event notification for purchase
			local shopConfig = Config.Shops[metadata.shopData.shop]
			TriggerEvent('wasabi_oxshops:itemPurchased', {
				shop = metadata.shopData.shop,
				shopLabel = shopConfig and shopConfig.label or metadata.shopData.shop,
				playerId = payload.source or 0,
				itemName = payload.itemName,
				count = payload.count,
				price = metadata.shopData.price,
				totalPrice = metadata.shopData.price * payload.count
			})
			
			print('[wasabi_oxshops] Item purchased: ' .. payload.itemName .. ' x' .. payload.count .. ' @ $' .. metadata.shopData.price)
		end
	end, {})
end)

RegisterNetEvent('wasabi_oxshops:refreshShop', function(shop)
	Wait(250)
	local items = exports.ox_inventory:GetInventoryItems(shop, false)
	local stashItems = {}
	for _, v in pairs(items) do
		if v and v.name then
			local metadata = v.metadata
			if metadata?.shopData then
				stashItems[#stashItems + 1] = { name = v.name, metadata = metadata, count = v.count, price = metadata.shopData.price }
			end
		end
	end

	exports.ox_inventory:RegisterShop(shop, {
		name = Config.Shops[shop].label,
		inventory = stashItems,
		locations = {
			Config.Shops[shop].locations.shop.coords,
		}
	})
end)


RegisterNetEvent('wasabi_oxshops:setData', function(shop, slot, price)
	local item = exports.ox_inventory:GetSlot(shop, slot)
	if not item then return end

	local metadata = item.metadata
	metadata.shopData = {
		shop = shop,
		price = price
	}

	exports.ox_inventory:SetMetadata(shop, slot, metadata)
	TriggerEvent('wasabi_oxshops:refreshShop', shop)
end)

-- Event handler for item added to shop
RegisterNetEvent('wasabi_oxshops:itemAdded', function(data)
	if not Config.Webhook.itemAdded then return end
	
	local playerName = GetPlayerName(data.playerId) or 'Unknown'
	
	SendDiscordWebhook(
		'🛒 アイテムがショップに追加されました',
		('**%s** がアイテムをショップに追加しました'):format(playerName),
		{
			{ name = 'ショップ', value = data.shopLabel, inline = true },
			{ name = 'プレイヤー', value = playerName .. ' (ID: ' .. data.playerId .. ')', inline = true },
			{ name = 'アイテム', value = data.itemLabel, inline = true },
			{ name = '数量', value = tostring(data.count), inline = true },
			{ name = '価格', value = '$' .. tostring(data.price), inline = true },
			{ name = '合計価値', value = '$' .. tostring(data.price * data.count), inline = true },
		},
		3066993 -- Green color
	)
end)

-- Event handler for item purchased from shop
RegisterNetEvent('wasabi_oxshops:itemPurchased', function(data)
	if not Config.Webhook.itemPurchased then return end
	
	local playerName = GetPlayerName(data.playerId) or 'Unknown'
	
	SendDiscordWebhook(
		'💰 アイテムが購入されました',
		('**%s** がショップでアイテムを購入しました'):format(playerName),
		{
			{ name = 'ショップ', value = data.shopLabel, inline = true },
			{ name = 'プレイヤー', value = playerName .. ' (ID: ' .. data.playerId .. ')', inline = true },
			{ name = 'アイテム', value = data.itemName, inline = true },
			{ name = '数量', value = tostring(data.count), inline = true },
			{ name = '単価', value = '$' .. tostring(data.price), inline = true },
			{ name = '合計金額', value = '$' .. tostring(data.totalPrice), inline = true },
		},
		15844367 -- Gold color
	)
end)
