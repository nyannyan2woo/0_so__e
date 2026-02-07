return {
    ----------------------------------------------
    --     📊 統計とリーダーボードのカスタマイズ
    ----------------------------------------------

    -- 統計メニューオプションをまったく表示したくないですか？
    -- 以下のすべての統計を false に設定してください！
    stats = {
        -- 合計チョップ車両数を表示しますか？
        vehicles = true,
        -- 合計取得パーツ数を表示しますか？
        parts = true
    },

    -- リーダーボードを表示しますか？
    -- これは、経験値ごとの上位10人のダイバーを表示します
    -- 🗒️ 注: リーダーボードは常時更新されるわけではありません
    -- サーバーの再起動とプレイヤーのログアウト時にのみ更新されます
    leaderboard = true,

    ----------------------------------------------
    --          🗺️ ブリップのカスタマイズ
    ----------------------------------------------

    blips = {
        -- 開始/メインペッドの場所
        start = {
            -- ブリップを有効または無効にする
            enable = true,
            -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            sprite = 225,
            -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            color = 2,
            -- サイズ/スケール
            scale = 0.9,
            -- ラベル
            label = 'チョップショップ'
        },
        -- 利用可能なチョップゾーン
        zones = {
            enable = true,
            sprite = 225,
            color = 0,
            scale = 0.9,
            label = 'チョップゾーン'
        }
    },

    ----------------------------------------------
    --     💃 アニメーションとプロップのカスタマイズ
    ----------------------------------------------

    anims = {
        chopWheel = {
            part1 = {
                dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                clip = 'machinic_loop_mechandplayer'
            },
            part2 = {
                label = 'パーツを取り外しています..',
                description = 'レンチを使ってホイールを取り外しています',
                icon = 'fas fa-wrench',
                duration = nil,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { },
                prop = { }
            }
        },
        chopDoor = {
            part1 = {
                dict = 'amb@world_human_welding@male@base',
                clip = 'base',
                fx = {
                    dict = 'scr_ih_fin',
                    name = 'scr_ih_fin_torch_lock_cutting',
                    pos = vec3(-0.18, 0.15, 0.0),
                    rot = vec3(0.0, 0.0, 0.0),
                    scale = 1.0
                },
                prop = {
                    model = 'prop_weld_torch',
                    pos = vec3(-0.01, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                }
            },
            part2 = {
                label = 'パーツを取り外しています..',
                description = 'トーチを使ってドアを取り外しています',
                icon = 'fas fa-fire',
                duration = nil,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { },
                prop = { }
            }
        },
        chopFrame = {
            part1 = {
                dict = 'amb@world_human_welding@male@base',
                clip = 'base',
                fx = {
                    dict = 'scr_ih_fin',
                    name = 'scr_ih_fin_torch_lock_cutting',
                    pos = vec3(-0.18, 0.15, 0.0),
                    rot = vec3(0.0, 0.0, 0.0),
                    scale = 1.0
                },
                prop = {
                    model = 'prop_weld_torch',
                    pos = vec3(-0.01, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                }
            },
            part2 = {
                label = 'フレームを解体中..',
                description = 'フレームを解体して作業を完了します',
                icon = 'fas fa-fire',
                duration = nil,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { },
                prop = { }
            }
        },
        createGroup = {
            label = 'グループを作成中..',
            icon = 'fas fa-users',
            duration = 1000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, combat = true },
            anim = { },
            prop = { }
        },
    }
}