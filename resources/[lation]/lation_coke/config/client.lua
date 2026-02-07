return {
    ----------------------------------------------
    --          ⌨️ 操作のカスタマイズ
    ----------------------------------------------

    -- プロップ配置コントロール
    controls = {
        -- プロップ配置システムがオブジェクトを移動させる速度
        speed = 0.025,
        -- 左回転
        rotateL = 44, -- Q
        -- 右回転
        rotateR = 38, -- E
        -- 前進
        forward = 32, -- W
        -- 後退
        backward = 33, -- S
        -- 左移動
        left = 34, -- A
        -- 右移動
        right = 35, -- D
        -- 配置キャンセル
        cancel = 73, -- X
        -- 配置確定
        confirm = 22, -- Space

        -- 以下のキーは配置中に無効になります
        disable = {
            30, -- 左右移動を無効化
            31, -- 前後移動を無効化
            44, -- Q (しゃがみ) を無効化
            22, -- Spacebar (ジャンプ) を無効化
            200, -- Escape を無効化
            -- 必要に応じてここに追加
        },
    },

    ----------------------------------------------
    --    📹 ラボのセキュリティカメラのカスタマイズ
    ----------------------------------------------

    cameras = {
        -- カメラがパン＆ズームする速度
        -- この数値を大きくすると速く動き、小さくすると遅く動きます
        speed = 0.15,
        -- プレイヤーが倉庫のセキュリティカメラを見るときに使用されるタイムサイクル
        -- 別の効果を希望する場合は、以下で更新してください！
        -- その他のタイムサイクルmod: https://forge.plebmasters.de/timecyclemods
        timecycle = 'scanline_cam_cheap',
        -- カメラ閲覧に使用するキーを設定したい、または設定する必要がある場合
        -- ここで行うことができます
        -- コントロールID: https://docs.fivem.net/docs/game-references/controls/)
        controls = {
            panUp = 32, -- W
            panDown = 33, -- S
            panLeft = 34, -- A
            panRight = 35, -- D
            zoomIn = 44, -- Q
            zoomOut = 38, -- E
            exit = 177 -- Backspace
        },
        -- プレイヤーがカメラ閲覧モードにいる間、これらが終了するまで無効になるコントロールです
        -- (コントロールID: https://docs.fivem.net/docs/game-references/controls/)
        -- デフォルトで無効化されるコントロール: W, A, S, D, Q, E, B, 左右移動, 上下移動
        disable = { 32, 33, 34, 35, 44, 38, 29, 30, 31 },
        -- 以下の制限セクションは、カメラの最大パン＆ズームを決定する制限要因です
        limits = {
            -- 初期の回転に対するピッチ制限（上下）
            pitch = 30.0,
            -- 初期の回転に対するヨー制限（左右）
            yaw = 45.0,
            -- FOV制限（低い値 = よりズームイン、高い値 = よりズームアウト）
            -- さらに「ズームイン」できるようにするには、min をより低い値に設定します
            -- さらに「ズームアウト」できるようにするには、max をより高い値に設定します
            fov = { min = 35.0, max = 80.0 }
        }
    },

    ----------------------------------------------
    --       📊 統計メニューのカスタマイズ
    ----------------------------------------------

    -- 統計メニューオプションをまったく表示したくないですか？
    -- 以下のすべての統計を false に設定してください！
    stats = {
        -- 収穫された葉の統計を表示しますか？
        leaves = true,
        -- 栽培された植物の合計統計を表示しますか？
        grown = true,
        -- 収集されたセメントの合計統計を表示しますか？
        cement = true,
        -- 生産されたブリックの合計統計を表示しますか？
        bricks = true,
    },

    ----------------------------------------------
    --    💃 アニメーションとプロップのカスタマイズ
    ----------------------------------------------

    animations = {
        searching = {
            label = '探索中..',
            description = '植物の葉を探しています',
            icon = 'fas fa-magnifying-glass',
            duration = 6000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
            prop = { }
        },
        use_table = {
            label = 'テーブルを配置中..',
            description = 'テーブルを配置するのに適した場所を探しています',
            icon = 'fas fa-location-dot',
            duration = 1500,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
            prop = {}
        },
        -- 以下のアニメーションは、特にテーブル調理用です
        -- config/shared.lua のステップ番号がここの番号と一致していることを確認してください！
        table = {
            [1] = {
                label = '葉を処理中..',
                icon = 'fas fa-mortar-pestle',
                duration = 15000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                steps = {
                    { description = 'You place the leaves onto the table..' },
                    { description = 'You begin crushing the leaves..' },
                    { description = 'You finish crushing the leaves..' }

                },
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [2] = {
                label = 'ガソリンを追加中..',
                description = '混合物にガソリンを注ぎ始めます',
                icon = 'fas fa-gas-pump',
                duration = 15000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [3] = {
                label = 'セメントを追加中..',
                description = '混合物にセメントを注ぎ始めます',
                icon = 'fas fa-square-plus',
                duration = 15000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [4] = {
                label = '配置中..',
                description = '混合物をボイラーに慎重に入れます',
                icon = 'fas fa-hand',
                duration = 1500,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim_casino_b@amb@casino@games@blackjack@dealer', clip = 'check_and_turn_card', flag = 0 },
                prop = {}
            },
            [5] = {
                label = '袋詰め中..',
                icon = 'fas fa-box',
                duration = 15000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                steps = {
                    { description = 'You cut up the powder into many small lines..' },
                    { description = 'You carefully place the powder into the baggies..' },
                    { description = 'You finish packing & seal the baggies..' }
                },
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [6] = {
                label = '配置中..',
                description = '混合物をボイラーに慎重に入れます',
                icon = 'fas fa-hand',
                duration = 1500,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim_casino_b@amb@casino@games@blackjack@dealer', clip = 'check_and_turn_card', flag = 0 },
                prop = {}
            },
            [7] = {
                label = 'カット中..',
                description = '切断剤でコカインをカットし始めます',
                icon = 'fas fa-scissors',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
        },
        -- 以下のアニメーションは、特にラボステーション調理用です
        -- config/shared.lua のステップ番号がここの番号と一致していることを確認してください！
        lab = {
            [1] = {
                label = '葉を処理中..',
                icon = 'fas fa-mortar-pestle',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                steps = {
                    { description = 'You place the leaves onto the table..' },
                    { description = 'You begin crushing the leaves..' },
                    { description = 'You finish crushing the leaves..' }

                },
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [2] = {
                label = 'ガソリンを追加中..',
                description = '混合物にガソリンを注ぎ始めます',
                icon = 'fas fa-gas-pump',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [3] = {
                label = 'セメントを追加中..',
                description = '混合物にセメントを注ぎ始めます',
                icon = 'fas fa-square-plus',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [4] = {
                label = '配置中..',
                description = '混合物をボイラーに慎重に入れます',
                icon = 'fas fa-hand',
                duration = 1500,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim_casino_b@amb@casino@games@blackjack@dealer', clip = 'check_and_turn_card', flag = 0 },
                prop = {}
            },
            [5] = {
                label = '配置中..',
                description = '混合物をボイラーに慎重に入れます',
                icon = 'fas fa-hand',
                duration = 1500,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim_casino_b@amb@casino@games@blackjack@dealer', clip = 'check_and_turn_card', flag = 0 },
                prop = {}
            },
            [6] = {
                label = 'カット中..',
                description = '切断剤でコカインをカットし始めます',
                icon = 'fas fa-scissors',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
            [7] = {
                label = '袋詰め中..',
                icon = 'fas fa-box',
                duration = 10000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = true,
                steps = {
                    { description = '粉末を多くの小さな列に切り分けます..' },
                    { description = '粉末を袋に慎重に入れます..' },
                    { description = '梱包を終了し、袋を密封します..' }
                },
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v4_cokecutter', flag = 0 },
                prop = {}
            },
        },
        pickup_table = {
            label = 'テーブルを拾っています..',
            icon = 'fas fa-hand',
            duration = 1500,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
            prop = {}
        },
        place_seed = {
            label = '種を植えています..',
            description = '植えるのに適した場所を探しています',
            icon = 'fas fa-seedling',
            duration = 1200,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'pickup_object', clip = 'pickup_low' },
            prop = { }
        },
        watering = {
            part1 = {
                label = '水やり中..',
                description = '植物に水をやり始めます',
                icon = 'fas fa-droplet',
                duration = 4000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = false,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'weapon@w_sp_jerrycan', clip = 'fire', flag = 1 },
                prop = { }
            },
            part2 = {
                prop = { model = 'prop_wateringcan', bone = 28422, pos = vec3(0.4, 0.125, -0.05), rot = vec3(90.0, 180.0, 0.0) },
                fx = { dict = 'core', name = 'ent_sht_water', offset = vec3(0.35, 0.0, 0.25), rot = vec3(0.0, 0.0, 0.0), scale = 2.0 }
            }
        },
        fertilizing = {
            part1 = {
                label = '肥料を与えています..',
                description = '植物に肥料を与え始めます',
                icon = 'fas fa-burger',
                duration = 4000,
                position = 'bottom',
                useWhileDead = false,
                canCancel = false,
                disable = { move = true, car = true, combat = true },
                anim = { dict = 'weapon@w_sp_jerrycan', clip = 'fire', flag = 1 },
                prop = { }
            },
            part2 = {
                prop = { model = 'p_cs_sack_01_s', bone = 28422, pos = vec3(0.3239, -0.0328, 0.1253), rot = vec3(49.4678, -18.1732, -79.2577) },
                fx = { dict = 'scr_fbi3', name = 'scr_fbi3_dirty_water_pour', offset = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), scale = 2.0 }
            }
        },
        harvesting = {
            label = '収穫中..',
            icon = 'fas fa-trowel',
            duration = 4000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
            prop = { }
        },
        destroy_plant = {
            label = '破壊中..',
            description = '植物を破壊し始めます',
            icon = 'fas fa-trash',
            duration = 4000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
            prop = { }
        },
        take_cement = {
            label = 'セメントを取得中..',
            duration = 1500,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'anim@scripted@heist@ig1_table_grab@gold@male@', clip = 'grab' },
            prop = { }
        },
        manage_lab = {
            dict = 'anim@scripted@player@mission@tunf_bunk_ig3_nas_upload@',
            clip = 'normal_typing',
            flag = 51
        },
        raid_entry = {
            dict = 'missheistfbisetup1',
            clip = 'hassle_intro_loop_f',
            flag = 51
        },
        raid_stash = {
            dict = 'missheistfbisetup1',
            clip = 'hassle_intro_loop_f',
            flag = 51
        },
        use_drug = {
            label = '吸引中..',
            duration = 4500,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'anim@amb@nightclub@peds@', clip = 'missfbi3_party_snort_coke_b_male3' },
            prop = {}
        },
        busy = { -- テーブル、植物、その他のさまざまなアクションと対話するときに使用されます
           dict = 'missheist_jewelleadinout',
           clip = 'jh_int_outro_loop_a',
           flag = 51
        },
    },

}