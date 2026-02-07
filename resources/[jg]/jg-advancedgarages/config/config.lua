-----------------------------------------------------------------------------------
-- WAIT! Before editing this file manually, try our new easy configuration tool! --
--            https://configurator.jgscripts.com/advanced-garages                --
-----------------------------------------------------------------------------------
Config = {}

-- Localisation
Config.Locale = "ja"
Config.NumberAndDateFormat = "en-US"
Config.Currency = "JPY"

-- Framework & Integrations
Config.Framework = "auto" -- or "QBCore", "Qbox", "ESX"
Config.FuelSystem = "ox_fuel" -- or "LegacyFuel", "ps-fuel", "lj-fuel", "ox_fuel", "cdn-fuel", "hyon_gas_station", "okokGasStation", "nd_fuel", "myFuel", "ti_fuel", "Renewed-Fuel", "rcore_fuel", "none"
Config.VehicleKeys = "qb-vehiclekeys" -- or "qb-vehiclekeys", "MrNewbVehicleKeys", "jaksam-vehicles-keys", "qs-vehiclekeys", "mk_vehiclekeys", "wasabi_carlock", "cd_garage", "okokGarage", "t1ger_keys", "Renewed", "tgiann-hotwire" "none"
Config.Notifications = "ox_lib" -- or "default", "okokNotify", "ox_lib", "ps-ui"
Config.Banking = "auto" -- or "qb-banking", "qb-management", "esx_addonaccount", "Renewed-Banking", "okokBanking", "fd_banking"
Config.Gangs = "auto" -- "qb-gangs", "rcore_gangs"

-- Draw text UI prompts (key binding control IDs here: https://docs.fivem.net/docs/game-references/controls/)
Config.DrawText = "ox_lib" -- or "jg-textui", "qb-DrawText", "okokTextUI", "ox_lib", "ps-ui"
Config.OpenGarageKeyBind = 38
Config.OpenGaragePrompt = "[E] ガレージを開く"
Config.OpenImpoundKeyBind = 38
Config.OpenImpoundPrompt = "[E] 保管所を開く"
Config.InsertVehicleKeyBind = 38
Config.InsertVehiclePrompt = "[E] 車両を格納"
Config.ExitInteriorKeyBind = 38
Config.ExitInteriorPrompt = "[E] ガレージを出る"

-- Target
Config.UseTarget = false
Config.Target = "ox_target" -- or "qb-target"
Config.TargetPed = "s_m_y_valet_01"

-- Radial
Config.UseRadialMenu = false
Config.RadialMenu = "ox_lib"


-- Little vehicle preview images in the garage UI - learn more/add custom images: https://docs.jgscripts.com/advanced-garages/vehicle-images
Config.ShowVehicleImages = true

-- Vehicle Spawning & Storing
Config.DoNotSpawnInsideVehicle = false
Config.SaveVehicleDamage = true -- Save and apply body and engine damage when taking the vehicle out a garage
Config.AdvancedVehicleDamage = true -- use Kiminaze's VehicleDeformation
Config.SaveVehiclePropsOnInsert = true
Config.CheckVehicleModel = true -- Extra security

-- If you don't know what this means, don't touch this
-- If you know what this means, I do recommend enabling it but be aware you may experience reliability issues on more populated servers
-- Having significant issues? I beg you to just set it back to false before opening a ticket with us
-- HIGHLY recommended that you set Config.DoNotSpawnInsideVehicle = false if you decide to enable this
-- Want to read my rant about server spawned vehicles? https://docs.jgscripts.com/advanced-garages/misc/why-are-you-not-using-createvehicleserversetter-by-default
Config.SpawnVehiclesWithServerSetter = false

-- Vehicle Transfers
Config.GarageVehicleTransferCost = 300000 -- Cost to transfer between garages
Config.TransferHidePlayerNames = false
Config.EnableTransfers = {
  betweenGarages = true,
  betweenPlayers = true
}
Config.DisableTransfersToUnregisteredGarages = false -- Potential hacking protection for vigilant servers - unregistered garages are ones created via events in third-party script integrations, such as housing scripts, and therefore could be prone to script kiddie attacks.

-- Prevent vehicle duplication
-- Learn more: https://docs.jgscripts.com/advanced-garages/vehicle-duplication-prevention
Config.AllowInfiniteVehicleSpawns = false -- Public & private garages
Config.JobGaragesAllowInfiniteVehicleSpawns = false -- Job garages
Config.GangGaragesAllowInfiniteVehicleSpawns = false -- Gang garages
Config.GarageVehicleReturnCost = 2500 -- "towing" tax if not placed back in garage after server restart; or if destroyed or underwater while left out
Config.GarageVehicleReturnCostSocietyFund = false -- Job name of society fund to pay return fees into (optional)

-- Public Garages
Config.GarageShowBlips = true
Config.GarageUniqueBlips = false
Config.GarageUniqueLocations = true
Config.GarageEnableInteriors = true
Config.GarageLocations = {
    -- ---------------------------------------------------------
    -- Adopted from Template (Preferred Locations)
    -- ---------------------------------------------------------
    ["Legion Square"] = { -- Replaces Pillbox Garage Parking
        coords = vector3(215.09, -805.17, 30.81),
        spawn = {vector4(218.09, -799.42, 30.76, 66.17), vector4(219.29, -797.23, 30.75, 65.4), vector4(219.59, -794.44, 30.75, 69.35), vector4(220.63, -792.03, 30.75, 63.76), vector4(206.81, -798.35, 30.99, 248.53)},
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Islington South"] = { -- Replaces Motel Parking
        coords = vector3(273.0, -343.85, 44.91),
        spawn = vector4(270.75, -340.51, 44.92, 342.03),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Grove Street"] = {
        coords = vector3(14.66, -1728.52, 29.3),
        spawn = vector4(23.93, -1722.9, 29.3, 310.58),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Mirror Park"] = {
        coords = vector3(1032.84, -765.1, 58.18),
        spawn = vector4(1023.2, -764.27, 57.96, 319.66),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Beach"] = { -- Replaces Beach Parking
        coords = vector3(-1248.69, -1425.71, 4.32),
        spawn = vector4(-1244.27, -1422.08, 4.32, 37.12),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Great Ocean Highway"] = {
        coords = vector3(-2961.58, 375.93, 15.02),
        spawn = vector4(-2964.96, 372.07, 14.78, 86.07),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Sandy South"] = {
        coords = vector3(217.33, 2605.65, 46.04),
        spawn = vector4(216.94, 2608.44, 46.33, 14.07),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Sandy North"] = {
        coords = vector3(1878.44, 3760.1, 32.94),
        spawn = vector4(1880.14, 3757.73, 32.93, 215.54),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["North Vinewood Blvd"] = { -- Replaces Laguna Parking
        coords = vector3(365.21, 295.65, 103.46),
        spawn = vector4(364.84, 289.73, 103.42, 164.23),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Grapeseed"] = {
        coords = vector3(1713.06, 4745.32, 41.96),
        spawn = vector4(1710.64, 4746.94, 41.95, 90.11),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Paleto Bay"] = { -- Replaces Beeker's Garage
        coords = vector3(151.78, 6618.37, 31.11),
        spawn = vector4(151.64, 6618.45, 31.11, 225.59),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    
    -- ---------------------------------------------------------
    -- Converted from Config.lua (Unique Locations)
    -- ---------------------------------------------------------
    ["Casino Parking"] = {
        coords = vector3(883.96, -4.71, 78.76),
        spawn = vector4(895.39, -4.75, 78.35, 146.85),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["San Andreas Parking"] = {
        coords = vector3(-330.01, -780.33, 33.96),
        spawn = vector4(-341.57, -767.45, 33.56, 92.61),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Spanish Ave Parking"] = {
        coords = vector3(-1160.86, -741.41, 19.63),
        spawn = vector4(-1145.2, -745.42, 19.26, 108.22),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Caears 24 Parking"] = {
        coords = vector3(69.84, 12.6, 68.96),
        spawn = vector4(60.8, 17.54, 68.82, 339.7),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Caears 24 Parking 2"] = {
        coords = vector3(-453.7, -786.78, 30.56),
        spawn = vector4(-472.39, -787.71, 30.14, 180.52),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Airport Parking"] = {
        coords = vector3(-773.12, -2033.04, 8.88),
        spawn = vector4(-779.77, -2040.18, 8.47, 315.34),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["The Motor Hotel Parking"] = {
        coords = vector3(1137.77, 2663.54, 37.9),
        spawn = vector4(1127.7, 2647.84, 37.58, 1.41),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Liqour Parking"] = {
        coords = vector3(883.99, 3649.67, 32.87),
        spawn = vector4(898.38, 3649.41, 32.36, 90.75),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Shore Parking"] = {
        coords = vector3(1737.03, 3718.88, 34.05),
        spawn = vector4(1725.4, 3716.78, 34.15, 20.54),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Bell Farms Parking"] = {
        coords = vector3(76.88, 6397.3, 31.23),
        spawn = vector4(62.15, 6403.41, 30.81, 211.38),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Dumbo Private Parking"] = {
        coords = vector3(165.75, -3227.2, 5.89),
        spawn = vector4(168.34, -3236.1, 5.43, 272.05),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Grapeseed Parking"] = {
        coords = vector3(2552.68, 4671.8, 33.95),
        spawn = vector4(2550.17, 4681.96, 33.81, 17.05),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["uwucafe Parking"] = {
        coords = vector3(-568.04, -1105.38, 21.53),
        spawn = vector4(-576.75, -1092.16, 21.53, 269.36),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["lsc Parking"] = {
        coords = vector3(-375.7, -126.44, 37.99),
        spawn = vector4(-379.86, -132.33, 38.04, 210.0),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["mysticspells Parking"] = {
        coords = vector3(151.76, 176.59, 104.56),
        spawn = vector4(157.68, 180.06, 104.76, 161.16),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["gelato Parking"] = {
        coords = vector3(-496.06, -61.16, 39.32),
        spawn = vector4(-493.63, -55.4, 39.34, 174.42),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["cakeshop Parking"] = {
        coords = vector3(-1319.21, -232.99, 42.01),
        spawn = vector4(-1326.1, -229.77, 42.19, 305.3),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["elgin"] = {
        coords = vector3(107.64, -1070.16, 28.55),
        spawn = vector4(108.16, -1078.97, 28.54, 339.99),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Pearl"] = {
        coords = vector3(-1842.59, -1224.48, 13.02),
        spawn = vector4(-1837.36, -1228.18, 12.29, 319.34),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["PDM Parking"] = {
        coords = vector3(-1248.26, -385.28, 37.29),
        spawn = vector4(-1252.64, -388.15, 36.94, 299.9),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Benny's Original Motor Works"] = {
        coords = vector3(-183.3, -1292.41, 30.94),
        spawn = vector4(-183.3, -1292.41, 30.94, 179.36),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Bahama Mamas"] = {
        coords = vector3(-1400.54, -585.32, 29.9),
        spawn = vector4(-1400.54, -585.32, 29.9, 297.46),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Hospital Parking"] = {
        coords = vector3(281.53, -604.61, 42.87),
        spawn = vector4(281.53, -604.61, 42.76, 103.44),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["PD Parking"] = {
        coords = vector3(408.05, -988.98, 28.91),
        spawn = vector4(408.05, -988.98, 28.91, 51.67),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["SaltLab"] = {
        coords = vector3(-3049.18, 457.56, 6.46),
        spawn = vector4(-3049.18, 457.56, 6.46, 153.81),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    ["Scrapyard Parking"] = {
        coords = vector3(-327.2, -1525.88, 27.19),
        spawn = vector4(-327.26, -1528.83, 27.18, 358.77),
        distance = 15,
        type = "car",
        hideBlip = false,
        blip = { id = 267, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    }
}

-- Job Garages

Config.JobGarageShowBlips = true
Config.JobGarageSetVehicleCommand = "setjobvehicle" -- admin only
Config.JobGarageRemoveVehicleCommand = "removejobvehicle" -- admin only
Config.JobGarageUniqueBlips = true
Config.JobGarageUniqueLocations = true
Config.JobGarageEnableInteriors = true
Config.JobGarageLocations = { -- IMPORTANT - Every garage name must be unique
    ["Mechanic"] = {
        coords = vector3(157.86, -3005.9, 7.03),
        spawn = vector4(165.26, -3014.94, 5.9, 268.8),
        distance = 15,
        job = {"mechanic"},
        type = "car",
        hideBlip = false,
        blip = {
        id = 357,
        color = 0,
        scale = 0.7
        },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "owned", -- Use owned vehicles that can anyone in this society can access - more details: https://docs.jgscripts.com/advanced-garages/job-and-gang-garages
    },

    -- 1. ミッションロウ警察署 (正面/Front)
    ["Police Mission Row Front"] = {
        coords = vector3(448.159, -1017.41, 28.562), -- 抽出された座標
        spawn = vector4(448.159, -1017.41, 28.562, 90.654), -- 抽出された座標とHeading
        distance = 15,
        job = {"police"},
        type = "car",
        hideBlip = false,
        blip = { id = 60, color = 29, scale = 0.7 }, -- Police blip
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = { model = "police", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 1", livery = 1, maxMods = true },
            [2] = { model = "police2", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 2", livery = 1, maxMods = true },
            [3] = { model = "police3", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 3", livery = 1, maxMods = true },
            [4] = { model = "police4", plate = "PD", minJobGrade = 0, nickname = "Unmarked Cruiser", livery = 1, maxMods = true },
            [5] = { model = "policeb", plate = "PD", minJobGrade = 0, nickname = "Police Bike", livery = 1, maxMods = true },
            [6] = { model = "policet", plate = "PD", minJobGrade = 0, nickname = "Police Transport", livery = 1, maxMods = true },
            [7] = { model = "sheriff", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff Cruiser", livery = 1, maxMods = true },
            [8] = { model = "sheriff2", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff SUV", livery = 1, maxMods = true },
        }
    },

    -- 2. ミッションロウ警察署 (裏手/Rear)
    ["Police Mission Row Rear"] = {
        coords = vector3(471.13, -1024.05, 28.17),
        spawn = vector4(471.13, -1024.05, 28.17, 274.5),
        distance = 15,
        job = {"police"},
        type = "car",
        hideBlip = true, -- 同じ署なのでBlipは隠す設定例
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = { model = "police", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 1", livery = 1, maxMods = true },
            [2] = { model = "police2", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 2", livery = 1, maxMods = true },
            [3] = { model = "police3", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 3", livery = 1, maxMods = true },
            [4] = { model = "police4", plate = "PD", minJobGrade = 0, nickname = "Unmarked Cruiser", livery = 1, maxMods = true },
            [5] = { model = "policeb", plate = "PD", minJobGrade = 0, nickname = "Police Bike", livery = 1, maxMods = true },
            [6] = { model = "policet", plate = "PD", minJobGrade = 0, nickname = "Police Transport", livery = 1, maxMods = true },
            [7] = { model = "sheriff", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff Cruiser", livery = 1, maxMods = true },
            [8] = { model = "sheriff2", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff SUV", livery = 1, maxMods = true },
        }
    },

    -- 3. パレト警察署 (Paleto)
    ["Police Paleto"] = {
        coords = vector3(-455.39, 6002.02, 31.34),
        spawn = vector4(-455.39, 6002.02, 31.34, 87.93),
        distance = 15,
        job = {"police"},
        type = "car",
        hideBlip = false,
        blip = { id = 60, color = 29, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = { model = "police", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 1", livery = 1, maxMods = true },
            [2] = { model = "police2", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 2", livery = 1, maxMods = true },
            [3] = { model = "police3", plate = "PD", minJobGrade = 0, nickname = "Police Cruiser 3", livery = 1, maxMods = true },
            [4] = { model = "police4", plate = "PD", minJobGrade = 0, nickname = "Unmarked Cruiser", livery = 1, maxMods = true },
            [5] = { model = "policeb", plate = "PD", minJobGrade = 0, nickname = "Police Bike", livery = 1, maxMods = true },
            [6] = { model = "policet", plate = "PD", minJobGrade = 0, nickname = "Police Transport", livery = 1, maxMods = true },
            [7] = { model = "sheriff", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff Cruiser", livery = 1, maxMods = true },
            [8] = { model = "sheriff2", plate = "SHERIFF", minJobGrade = 0, nickname = "Sheriff SUV", livery = 1, maxMods = true },
        }
    },

    -- 4. ミッションロウ ヘリ (Heli MRPD)
    ["Police Heli MRPD"] = {
        coords = vector3(449.168, -981.325, 43.691),
        spawn = vector4(449.168, -981.325, 43.691, 87.234),
        distance = 15,
        job = {"police"},
        type = "air", -- 空中車両設定
        hideBlip = false,
        blip = { id = 43, color = 29, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 34, size = { x = 1.5, y = 1.5, z = 1.5 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = { model = "polmav", plate = "AIRUNIT", minJobGrade = 0, nickname = "Police Maverick", livery = 0, maxMods = true },
        }
    },

    -- 5. パレト ヘリ (Heli Paleto)
    ["Police Heli Paleto"] = {
        coords = vector3(-475.43, 5988.353, 31.716),
        spawn = vector4(-475.43, 5988.353, 31.716, 31.34),
        distance = 15,
        job = {"police"},
        type = "air", -- 空中車両設定
        hideBlip = false,
        blip = { id = 43, color = 29, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 34, size = { x = 1.5, y = 1.5, z = 1.5 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = { model = "polmav", plate = "AIRUNIT", minJobGrade = 0, nickname = "Police Maverick", livery = 0, maxMods = true },
        }
    },

    -- メイン病院（Pillbox Hill）用ガレージ
    ["Ambulance"] = {
        coords = vector3(294.578, -574.761, 43.179), -- プレイヤーがメニューを開く場所
        spawn = vector4(294.578, -574.761, 43.179, 35.79), -- 車両が出現する場所と向き
        distance = 15,
        job = {"ambulance"}, -- 救急隊のジョブ名（サーバーに合わせて変更してください）
        type = "car",
        hideBlip = false,
        blip = {
            id = 61, -- 病院のマーク
            color = 1, -- 赤色
            scale = 0.7
        },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 0, b = 0, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = {
                model = "ambulance", -- デフォルトの救急車
                plate = "EMS", -- ナンバープレート
                minJobGrade = 0,
                nickname = "Ambulance",
                livery = 1,
                -- extras = {},
                maxMods = true
            },
            [2] = {
                model = "lguard", -- ライフガード（SUVタイプ用などに）
                plate = "EMS",
                minJobGrade = 1,
                nickname = "EMS SUV",
                livery = 1,
                -- extras = {},
                maxMods = true
            }
        }
    },

    -- パレト病院用ガレージ
    ["AmbulancePaleto"] = {
        coords = vector3(-234.28, 6329.16, 32.15),
        spawn = vector4(-234.28, 6329.16, 32.15, 222.5),
        distance = 15,
        job = {"ambulance"},
        type = "car",
        hideBlip = false,
        blip = {
            id = 61,
            color = 1,
            scale = 0.7
        },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 0, b = 0, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false,
        vehicles = {
            [1] = {
                model = "ambulance",
                plate = "EMS",
                minJobGrade = 0,
                nickname = "Ambulance",
                livery = 1,
                -- extras = {},
                maxMods = true
            }
        }
    },

    -- ドクターヘリ用ガレージ
    ["AmbulanceHeli"] = {
        coords = vector3(351.58, -587.45, 74.16),
        spawn = vector4(351.58, -587.45, 74.16, 160.5),
        distance = 15,
        job = {"ambulance"},
        type = "air", -- 空中車両タイプに設定
        hideBlip = false,
        blip = {
            id = 43, -- ヘリポートのマークなど（必要に応じて変更）
            color = 1,
            scale = 0.7
        },
        hideMarkers = true,
        markers = { id = 34, size = { x = 1.5, y = 1.5, z = 1.5 }, color = { r = 255, g = 0, b = 0, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "spawner",
        showLiveriesExtrasMenu = false, -- ヘリにはリバリーやエクストラメニューは不要な場合が多い
        vehicles = {
            [1] = {
                model = "polmav", -- 救急ヘリ（MODを入れている場合はそのモデル名に変更）
                plate = "MEDIC",
                minJobGrade = 2, -- 上級ランクのみなど制限可能
                nickname = "Medic Heli",
                livery = 1,
                -- extras = {},
                maxMods = true
            }
        }
    }
}
-- Gang Garages
Config.GangGarageLocations = {
    ["Ballas"] = {
        coords = vector3(87.51, -1969.1, 20.75),
        spawn = vector4(93.78, -1961.73, 20.34, 319.11),
        distance = 15,
        gang = {"ballas"},
        type = "car",
        hideBlip = false,
        blip = { id = 357, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "personal",
    },
    ["Families"] = {
        coords = vector3(-23.89, -1436.03, 30.65),
        spawn = vector4(-25.47, -1445.76, 30.24, 178.5),
        distance = 15,
        gang = {"families"},
        type = "car",
        hideBlip = false,
        blip = { id = 357, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "personal",
    },
    ["Lost MC"] = {
        coords = vector3(985.83, -138.14, 73.09),
        spawn = vector4(977.65, -133.02, 73.34, 59.39),
        distance = 15,
        gang = {"lostmc"},
        type = "car",
        hideBlip = false,
        blip = { id = 357, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "personal",
    },
    ["Cartel"] = {
        coords = vector3(1411.67, 1117.8, 114.84),
        spawn = vector4(1403.01, 1118.25, 114.84, 88.69),
        distance = 15,
        gang = {"cartel"},
        type = "car",
        hideBlip = false,
        blip = { id = 357, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
        vehiclesType = "personal",
    }
}

Config.ImpoundLocations = {
    ["Depot Lot"] = {
        coords = vector3(401.76, -1632.57, 29.29),
        spawn = vector4(396.55, -1643.93, 28.88, 321.91),
        distance = 15,
        type = "car",
        job = {"police"},
        hideBlip = false,
        blip = { id = 68, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    
    -- 1. ミッションロウ 押収場
    ["Impound Mission Row"] = {
        coords = vector3(436.68, -1007.42, 27.32),
        spawn = vector4(436.68, -1007.42, 27.32, 0.0), -- Heading不明のため仮置き(0.0)
        distance = 15,
        type = "car",
        job = {"police"},
        hideBlip = false,
        blip = { id = 68, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    },
    
    -- 2. パレト 押収場
    ["Impound Paleto"] = {
        coords = vector3(-436.14, 5982.63, 31.34),
        spawn = vector4(-436.14, 5982.63, 31.34, 0.0), -- Heading不明のため仮置き(0.0)
        distance = 15,
        type = "car",
        job = {"police"},
        hideBlip = false,
        blip = { id = 68, color = 3, scale = 0.7 },
        hideMarkers = true,
        markers = { id = 21, size = { x = 0.3, y = 0.3, z = 0.3 }, color = { r = 255, g = 255, b = 255, a = 120 }, bobUpAndDown = 0, faceCamera = 0, rotate = 1, drawOnEnts = 0 },
    }

}

-- Garage Interior
Config.GarageInteriorEntrance = vector4(227.96, -1003.06, -99.0, 0.0)
Config.GarageInteriorCameraCutscene = {
  vector4(227.96, -977.81, -98.99, 0.0), -- from
  vector4(227.96, -1006.96, -98.99, 0.0), -- to (this should be the entrance, or slightly further back from the entrance coords for a better final player transition)
}
Config.GarageInteriorVehiclePositions = {
  vector4(233.000000, -984.000000, -99.410004, 118.000000),
  vector4(233.000000, -988.500000, -99.410004, 118.000000),
  vector4(233.000000, -993.000000, -99.410004, 118.000000),
  vector4(233.000000, -997.500000, -99.410004, 118.000000),
  vector4(233.000000, -1002.000000, -99.410004, 118.000000),
  vector4(223.600006, -979.000000, -99.410004, 235.199997),
  vector4(223.600006, -983.599976, -99.410004, 235.199997),
  vector4(223.600006, -988.200012, -99.410004, 235.199997),
  vector4(223.600006, -992.799988, -99.410004, 235.199997),
  vector4(223.600006, -997.400024, -99.410004, 235.199997),
  vector4(223.600006, -1002.000000, -99.410004, 235.199997),
}

-- Staff Commands
Config.ChangeVehiclePlate = "vplate" -- admin only
Config.DeleteVehicleFromDB = "dvdb" -- admin only
Config.ReturnVehicleToGarage = "vreturn" -- admin only

-- Add your import vehicle's spawn name and desired label here for pretty vehicle names in the garage
-- This is mainly designed for ESX - if you are using QB, do this in shared!
Config.VehicleLabels = {
  ["spawnName"] = "Pretty Vehicle Label"
}

-- Block certain vehicles from being transferred to other players
Config.PlayerTransferBlacklist = {
  "spawnName"
}

Config.AutoRunSQL = true
Config.ReturnToPreviousRoutingBucket = false
Config.HideWatermark = false
Config.__v3Config = true
Config.Debug = false