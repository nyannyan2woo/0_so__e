config = {}

-- How much ofter the player position is updated ?
config.RefreshTime = 300

-- default sound format for interact
config.interact_sound_file = "ogg"

-- is emulator enabled ?
config.interact_sound_enable = false

-- how much close player has to be to the sound before starting updating position ?
config.distanceBeforeUpdatingPos = 40

-- Message list
config.Messages = {
    ["streamer_on"]  = "Streamer mode is on. From now you will not hear any music/sound.",
    ["streamer_off"] = "Streamer mode is off. From now you will be able to listen to music that players might play.",

    ["no_permission"] = "You cant use this command, you dont have permissions for it!",
}

-- Addon list
-- True/False enabled/disabled
config.AddonList = {
    crewPhone = false,
}

-- Location Music
-- Play music from specific coordinates with loop
config.LocationMusic = {
    -- Example configuration:
    -- {
    --     name = "location_music_1",                    -- Unique identifier for this sound
    --     url = "https://example.com/music.mp3",        -- URL to the music file
    --     coords = vector3(0.0, 0.0, 0.0),              -- Coordinates where music plays
    --     volume = 0.5,                                  -- Volume (0.0 - 1.0)
    --     distance = 50.0,                               -- Maximum distance to hear the music
    --     loop = true,                                   -- Loop the music (always true for location music)
    -- },
    {
        name = "saltlab",                    -- Unique identifier for this sound
        url = "https://youtu.be/GpUg15ltzBY?si=XlQmUEmEsSZuekrb",        -- URL to the music file
        coords = vec3(-3075.83, 448.0, 6.97),              -- Coordinates where music plays
        volume = 0.07,                                  -- Volume (0.0 - 1.0)
        distance = 50.0,                               -- Maximum distance to hear the music
        loop = true,                                   -- Loop the music (always true for location music)
    },    
    {
        name = "bennys",                    -- Unique identifier for this sound
        url = "https://youtu.be/_4SxGEc6PXM?si=WzvtxbPVc4on1-Du",        -- URL to the music file
        coords = vec3(-212.45, -1341.59, 33.89),              -- Coordinates where music plays
        volume = 0.07,                                  -- Volume (0.0 - 1.0)
        distance = 50.0,                               -- Maximum distance to hear the music
        loop = true,                                   -- Loop the music (always true for location music)
    },
    {
        name = "bahamas",                    -- Unique identifier for this sound
        url = "https://youtu.be/JxA-aDJUpok?si=Ntc4vG94VYMPvDsy",        -- URL to the music file
        coords = vec3(-1382.07, -614.68, 30.5),              -- Coordinates where music plays
        volume = 0.07,                                  -- Volume (0.0 - 1.0)
        distance = 50.0,                               -- Maximum distance to hear the music
        loop = true,                                   -- Loop the music (always true for location music)
    },
}