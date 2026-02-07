return {
    ---@class audioConfig
    ---@field audioName string
    ---@field audioRef? string 使用するaudioBank（例：カスタムサーバーサイドサイレンを使用する場合など）

    ---@class SirenConfigTable
    ---@field models? table<string, boolean>
    ---@field sirenModes table<number, audioConfig> キーはサイレンモードです
    ---@field horn? audioConfig

    controls = {
        policeLights = 'Q',
        policeHorn   = 'E',
        sirenToggle  = 'LMENU',
        sirenCycle   = 'R',
    },

    sirenShutOff = false,          -- プレイヤーが車両から降りたときにサイレンを自動的に停止する場合はtrueに設定

    disableDamagedSirens = false, -- 損傷したサイレンを無効にする場合はtrueに設定
    useEngineHealth = false,      -- サイレンの損傷判定にボディヘルスの代わりにエンジンヘルスを使用するかどうか
    damageThreshold = 300,        -- 車両のヘルスがこの値を下回ると、サイレンは損傷したとみなされます

    ---@type table<number, SirenConfigTable>
    --- 特定のモデルとサイレンモードに使用するサイレン音を設定
    sirens = {
        --ベース
        {
            sirenModes = {
                { audioName = 'VEHICLES_HORNS_SIREN_1' },
                { audioName = 'VEHICLES_HORNS_SIREN_2' },
                { audioName = 'VEHICLES_HORNS_POLICE_WARNING' },
            },

            horn = {
                audioName = 'SIRENS_AIRHORN'
            }
        },

        --消防
        {
            sirenModes = {
                { audioName = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01' },
                { audioName = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01' },
                { audioName = 'VEHICLES_HORNS_AMBULANCE_WARNING' }
            },

            horn = {
                audioName = 'VEHICLES_HORNS_FIRETRUCK_WARNING'
            },

            models = {
                [`FIRETRUK`] = true,
                [`ambulance`] = true,
            }
        },

        --覆面パトカー
        {
            sirenModes = {
                { audioName = 'RESIDENT_VEHICLES_SIREN_WAIL_02' },
                { audioName = 'RESIDENT_VEHICLES_SIREN_QUICK_02' }
            },

            models = {
                [`fbi`] = true,
                [`fbi2`] = true,
                [`police4`] = true,
            }
        },

        --バイク
        {
            sirenModes = {
                { audioName = 'RESIDENT_VEHICLES_SIREN_WAIL_03' },
                { audioName = 'RESIDENT_VEHICLES_SIREN_QUICK_03' }
            },

            models = {
                [`policeb`] = true
            }
        },
    }
}