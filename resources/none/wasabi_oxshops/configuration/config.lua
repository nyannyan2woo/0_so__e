-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = true -- Check for updates?
Config.DrawMarkers = true -- draw markers when nearby?

-- Discord Webhook Settings
Config.Webhook = {
    enabled = true, -- Enable Discord webhook notifications?
    url = '', -- Your Discord webhook URL (leave empty to disable)
    botName = 'Shop System',
    color = 3447003, -- Embed color (blue)
    itemAdded = true, -- Notify when items are added to shop?
    itemPurchased = true, -- Notify when items are purchased?
}

Config.Shops = {
    ['ambulance'] = { -- Job name
        label = '救急隊',
        prices = { -- Item prices configuration
            ['bandage'] = 50,
            ['medkit'] = 150,
            ['painkillers'] = 30,
        },
        blip = {
            enabled = false,
            coords = vec3(-586.03, -1072.09, 22.33),
            sprite = 279,
            color = 8,
            scale = 0.7,
            string = '救急隊'
        },
        bossMenu = {
            enabled = false, -- Enable boss menu?
            coords = vec3(-581.78, -1071.67, 22.33), -- Location of boss menu
            string = 'ボスメニューにアクセス', -- Text UI label string
            markerRange = 10.0, -- Distance to draw marker
            interactRange = 1, -- Distance to allow interaction
        },
        locations = {
            stash = {
                string = '在庫管理にアクセス',
                coords = vec3(-579.16, -1084.76, 22.33),
                markerRange = 10.0, -- Distance to draw marker
                interactRange = 1, -- Distance to allow interaction
            },
            shop = {
                string = 'ショップにアクセス',
                coords = vec3(-589.8, -1071.82, 22.33),
                markerRange = 10.0, -- Distance to draw marker
                interactRange = 1, -- Distance to allow interaction
            }
        }
    }, -- Copy and paste this shop to create more

}