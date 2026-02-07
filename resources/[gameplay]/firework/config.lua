Config = {}

-- Schedule Configuration
-- Supports 'daily', 'weekly', 'date'
Config.Schedules = {
    -- {
    --     type = "daily",
    --     time = {23, 0}, -- {Hour, Minute}
    --     duration = 60 -- Minutes
    -- },
    -- Weekly Example: Every Sunday (1) at 20:00 for 10 minutes
    -- 1 = Sunday, 2 = Monday, ..., 7 = Saturday
    -- {
    --     type = "weekly",
    --     dayOfWeek = 1,
    --     time = {20, 0},
    --     duration = 10
    -- },
    -- Date Example: New Year's Day (Jan 1st) at 00:00 for 180 minutes
    {
        type = "date",
        date = {1, 1}, -- {Month, Day}
        time = {0, 0},
        duration = 180
    },
    -- Christmas
    {
        type = "date",
        date = {12, 24}, -- {Month, Day}
        time = {21, 0},
        duration = 180
    },
    {
        type = "date",
        date = {12, 25}, -- {Month, Day}
        time = {21, 0},
        duration = 180
    }
}

Config.FireworkLocations = {
    { pos = vec3(-1934.69, -1333.48, 20.74), type = "Battery" },
    { pos = vec3(-1800.69, -1333.48, 20.74), type = "Rocket" },
    { pos = vec3(-1752.13, -1486.68, 20.74), type = "Fountain" },
    { pos = vec3(-1896.52, -1491.06, 20.74), type = "Rocket" },
    { pos = vec3(-1714.08, -1404.71, 20.74), type = "Battery" },
    { pos = vec3(-1635.27, -1574.06, 20.74), type = "Fountain" },
    { pos = vec3(-1714.08, -1404.71, 20.74), type = "Battery" },
    { pos = vec3(-1661.6, -1477.31, 20.74), type = "Rocket" },
    { pos = vec3(-1784.64, -1309.06, 20.74), type = "Fountain" },
    { pos = vec3(-1778.74, -1399.71, 20.74), type = "Rocket" },
    { pos = vec3(-1826.71, -1523.61, 20.74), type = "Fountain" },
    { pos = vec3(-1766.11, -1638.99, 20.74), type = "Rocket" },
    { pos = vec3(-1687.31, -1557.52, 20.74), type = "Battery" },
}
