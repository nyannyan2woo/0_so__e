-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

-- Price input is no longer needed - prices are automatically set from Config.Shops[shop].prices

-- TextUI Helper Functions with fallback support
local useLationUI = GetResourceState('lation_ui') == 'started'

local function ShowTextUI(description, keybind, icon)
    if useLationUI then
        local success, err = pcall(function()
            exports.lation_ui:showText({
                description = description,
                keybind = keybind or 'E',
                icon = icon or 'fas fa-hand-paper'
            })
        end)
        if not success then
            -- Fallback to ox_lib if lation_ui fails
            lib.showTextUI(description)
        end
    else
        -- Use ox_lib as default
        lib.showTextUI(description)
    end
end

local function HideTextUI()
    if useLationUI then
        local success, err = pcall(function()
            exports.lation_ui:hideText()
        end)
        if not success then
            -- Fallback to ox_lib if lation_ui fails
            lib.hideTextUI()
        end
    else
        -- Use ox_lib as default
        lib.hideTextUI()
    end
end

local function createBlip(coords, sprite, color, text, scale)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, scale)
    SetBlipColour(blip, color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandSetBlipName(blip)
    return blip
end

CreateThread(function()
    for _, v in pairs(Config.Shops) do
        if v.blip.enabled then
            createBlip(v.blip.coords, v.blip.sprite, v.blip.color, v.blip.string, v.blip.scale)
        end
    end
end)

CreateThread(function()
    local textUI, points = nil, {}
    while not PlayerLoaded do Wait(500) end
    for k,v in pairs(Config.Shops) do
        if not points[k] then points[k] = {} end
        points[k].stash = lib.points.new({
            coords = v.locations.stash.coords,
            distance = v.locations.stash.markerRange,
            shop = k,
            interactRange = v.locations.stash.interactRange
        })
        points[k].shop = lib.points.new({
            coords = v.locations.shop.coords,
            distance = v.locations.shop.markerRange,
            shop = k,
            interactRange = v.locations.shop.interactRange
        })
        if v.bossMenu.enabled then
            points[k].bossMenu = lib.points.new({
                coords = v.bossMenu.coords,
                distance = v.bossMenu.markerRange,
                shop = k,
                interactRange = v.bossMenu.interactRange
            })
        end
    end

    for _, v in pairs(points) do
        function v.stash:nearby()
            if not self.isClosest or PlayerData.job.name ~= self.shop then 
                if self.textUI then
                    HideTextUI()
                    self.textUI = nil
                end
                return 
            end
            
            if Config.DrawMarkers then
                DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 30, 150, 30, 222, false, false, 0, true, false, false, false)
            end
            
            if self.currentDistance < self.interactRange then
                if not self.textUI then
                    ShowTextUI(Config.Shops[self.shop].locations.stash.string, 'E', 'fas fa-box')
                    self.textUI = true
                end
                if IsControlJustReleased(0, 38) then
                    exports.ox_inventory:openInventory('stash', self.shop)
                end
            elseif self.textUI then
                HideTextUI()
                self.textUI = nil
            end
        end

        function v.stash:onExit()
            if self.textUI then
                HideTextUI()
                self.textUI = nil
            end
        end

        function v.shop:nearby()
            if not self.isClosest then 
                if self.textUI then
                    HideTextUI()
                    self.textUI = nil
                end
                return 
            end
            
            if Config.DrawMarkers then
                DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 30, 150, 30, 222, false, false, 0, true, false, false, false)
            end
            
            if self.currentDistance < self.interactRange then
                if not self.textUI then
                    ShowTextUI(Config.Shops[self.shop].locations.shop.string, 'E', 'fas fa-shopping-cart')
                    self.textUI = true
                end
                if IsControlJustReleased(0, 38) then
                    exports.ox_inventory:openInventory('shop', { type = self.shop, id = 1 })
                end
            elseif self.textUI then
                HideTextUI()
                self.textUI = nil
            end
        end

        function v.shop:onExit()
            if self.textUI then
                HideTextUI()
                self.textUI = nil
            end
        end

        if v?.bossMenu then
            function v.bossMenu:nearby()
                if not self.isClosest then 
                    if self.textUI then
                        HideTextUI()
                        self.textUI = nil
                    end
                    return 
                end
                
                if not IsBoss() then
                    if self.textUI then
                        HideTextUI()
                        self.textUI = nil
                    end
                    return
                end
                
                if self.currentDistance < self.interactRange then
                    if Config.DrawMarkers then
                        DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 30, 150, 30, 222, false, false, 0, true, false, false, false)
                    end
                    if not self.textUI then
                        ShowTextUI(Config.Shops[self.shop].bossMenu.string, 'E', 'fas fa-briefcase')
                        self.textUI = true
                    end
                    if IsControlJustReleased(0, 38) then
                        OpenBossMenu(PlayerData.job.name)
                    end
                elseif self.textUI then
                    HideTextUI()
                    self.textUI = nil
                end
            end

            function v.bossMenu:onExit()
                if self.textUI then
                    HideTextUI()
                    self.textUI = nil
                end
            end
        end
    end
end)