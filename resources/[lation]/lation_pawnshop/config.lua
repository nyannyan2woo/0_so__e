Config = {} -- 変更しないでください

-- 🔎 高品質なスクリプトをもっと探していますか？
-- 🛒 今すぐ購入: https://lationscripts.com
-- 💬 Discordに参加: https://discord.gg/9EbY4nM5uu
-- 😢 このオプションをfalseに設定して申し訳ございません？！
Config.YouFoundTheBestScripts = false

----------------------------------------------
--        🛠️ 下のセットアップを行ってください
----------------------------------------------

Config.Setup = {
    -- 必要に応じて使用してください。サポートによって指示されているか、何をしているかを知っている場合
    -- 注意：デバッグ機能を有効にするとresmMonが大幅に増加します
    -- 本番環境では常に無効にしてください
    debug = false,
    -- アップデートが利用可能な場合、サーバーコンソール経由で通知されたいですか？
    version = true,
    -- ターゲットシステム。利用可能なオプション: 'ox_target'、'qb-target'、'qtarget'、'custom' & 'none'
    -- 'custom' は client/functions.lua に追加する必要があります
    -- 'none' の場合、ターゲット代わりに TextUI が使用されます
    target = 'ox_target',
    -- 通知システム。利用可能なオプション: 'ox_lib'、'esx'、'qb'、'okok' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    notify = 'ox_lib',
    -- TextUIを使用している場合（Config.Setup.target = 'none'）、どのキーでショップを開きたいですか？
    -- デフォルトは 38 (E) です。コントロールIDの詳細はこちら: https://docs.fivem.net/docs/game-references/controls/
    interact = 38,
    -- 'auto_clear' は、一定時間後にショップを自動的にクリアするシステムです
    auto_clear = {
        -- 自動クリアシステムを有効にしますか？
        enable = true,
        -- enable = true の場合、ショップをいつクリア（分単位）しますか？
        interval = 60
    }
}

----------------------------------------------
--       🏪 質屋を作成する
----------------------------------------------

Config.Shops = {
    ['vinewood'] = { -- このショップの一意の識別子
        name = 'ビネウッド質屋＆ジュエリー', -- ショップ名
        slots = 25, -- 利用可能なスロット数
        weight = 100000, -- 利用可能な重量
        coords = vec4(-1459.53, -413.92, 35.74, 163.54), -- このショップの位置
        radius = 1.0, -- サークルゾーン半径の大きさ（ターゲット専用）
        spawnPed = true, -- ここでやり取りするNPCをスポーンしますか？
        pedModel = 'a_m_y_beach_02', -- spawnPed = true の場合、どのNPCモデルですか？
        -- ショップが利用可能な時間をここで制限できます
        -- Min はショップが利用可能な最も早い時間です（デフォルト 06:00 AM）
        -- Max はショップが利用可能な最新の時間です（デフォルト 21:00 つまり 9PM）
        -- 24時間利用可能にしたい場合は、min を 0、max を 24 に設定してください
        hour = { min = 9, max = 21 },
        account = 'cash', -- ここで売却する際に 'cash'、'bank' または 'dirty' マネーを提供しますか？
        allowlist = {
            ['goldchain'] = { label = 'ゴールドチェーン', price = { min = 500, max = 1000 } },
            ['diamond_ring'] = { label = 'ダイヤモンドリング', price = { min = 500, max = 1000 } },
            ['rolex'] = { label = 'ロレックス', price = { min = 500, max = 1000 } },
            -- ['10kgoldchain'] = { label = '10Kゴールドチェーン', price = { min = 50, max = 100 } },
            -- ['tablet'] = { label = 'タブレット', price = { min = 50, max = 100 } },
            -- ['iphone'] = { label = 'iPhone', price = { min = 50, max = 100 } },
            -- ['samsungphone'] = { label = 'Samsungスマートフォン', price = { min = 50, max = 100 } },
            -- ['laptop'] = { label = 'ラップトップ', price = { min = 50, max = 100 } },
        },
        -- placeholders = true の場合、上記の "slots" の量がオーバーライドされます
        -- このオプションはショップを "display" アイテムで埋め、
        -- ここで売却可能なアイテムのみを表示します。false の場合、
        -- 空のインベントリになり、上記の "slots" の量はオーバーライドされません
        placeholders = true,
        blip = {
            enabled = true, -- このショップのブリップを有効または無効にする
            sprite = 59, -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- サイズ/スケール
            label = '質屋' -- ラベル
        }
    },
    ['strawberry'] = {
        name = 'ストロベリーアベニュー質屋',
        slots = 25,
        weight = 100000,
        coords = vec4(182.7942, -1319.3451, 29.3173, 244.3924),
        radius = 1.0,
        spawnPed = true,
        pedModel = 'a_m_y_beach_02',
        hour = { min = 9, max = 21 },
        account = 'cash',
        allowlist = {
            -- ここで売却できるアイテム
            -- このリストにないアイテムはここで売却できません
            -- ['itemSpawnName'] = { label = 'アイテム名', price = 売却価格 }
            ['water'] = { label = '水', price = { min = 50, max = 100 } },
            ['panties'] = { label = '下着', price = 10 },
            ['lockpick'] = { label = 'ロックピック', price = 25 },
            ['phone'] = { label = '電話', price = 150 },
            ['armour'] = { label = '防弾ベスト', price = 225 },
            -- 必要に応じてアイテムをここに追加・削除してください
            -- 上記と同じ形式に従ってください
        },
        placeholders = true,
        blip = {
            enabled = true,
            sprite = 59,
            color = 0,
            scale = 0.8,
            label = '質屋'
        }
    },
    -- 必要に応じてここに質屋を追加してください
    -- 上記と同じ形式に従ってください
    ['mining_pawn'] = { -- ショップの一意の識別子
        name = '鉱石買取所 (デイビス採石場)', -- ショップ名
        slots = 20,
        weight = 2000000, -- 重量上限 (2000kg)
        
        -- ★決定した座標: 採石場の入口、計量所(Weigh Station)の小窓付近
        coords = vec4(287.35, 2843.62, 44.7, 123.61),
        
        radius = 1.5,
        spawnPed = true,
        pedModel = 's_m_y_construct_01', -- 作業員モデル
        
        -- 24時間営業 (鉱山は眠らないため)
        hour = { min = 9, max = 21 },
        
        account = 'cash', -- 現金払い
        
        allowlist = {
            ['ls_coal_ore'] =     { label = '石炭',         price = 20 },
            ['ls_copper_ore'] =   { label = '銅鉱石',       price = 30 },
            ['ls_iron_ore'] =     { label = '鉄鉱石',       price = 50 },
            ['ls_silver_ore'] =   { label = '銀鉱石',       price = 100 },
            ['ls_gold_ore'] =     { label = '金鉱石',       price = 200 },
            ['ls_copper_ingot'] = { label = '銅インゴット', price = 350 },
            ['ls_iron_ingot'] =   { label = '鉄インゴット', price = 600 },
            ['ls_silver_ingot'] = { label = '銀インゴット', price = 1000 },
            ['ls_gold_ingot'] =   { label = '金インゴット', price = 1750 },
        },
        
        placeholders = true,
        
        blip = {
            enabled = true,
            sprite = 431, -- ドルマーク (視認性重視) または 618 (採掘アイコン)
            color = 5, -- 黄色
            scale = 0.8,
            label = '鉱石買取所'
        }
    },
    ['recycle_downtown'] = {
        name = 'リサイクルバイヤー',
        slots = 25,
        weight = 100000,
        coords = vec4(744.68, -1401.77, 26.55, 248.73),
        radius = 1.0,
        spawnPed = true,
        pedModel = 'S_M_Y_Construct_01',
        hour = { min = 9, max = 21 },
        account = 'cash',
        allowlist = {
            ['copper'] = { label = '銅', price = 100 },
            ['plastic'] = { label = 'プラスチック', price = 100 },
            ['metalscrap'] = { label = '金属スクラップ', price = 100 },
            ['steel'] = { label = '鋼', price = 100 },
            ['glass'] = { label = 'ガラス', price = 100 },
            ['iron'] = { label = '鉄', price = 100 },
            ['rubber'] = { label = 'ゴム', price = 100 },
            ['aluminum'] = { label = 'アルミニウム', price = 100 },
            -- ['bottle'] = { label = 'ボトル', price = 50 },
            -- ['can'] = { label = '缶', price = 50 },
        },
        placeholders = true,
        blip = {
            enabled = true,
            sprite = 642,
            color = 2,
            scale = 0.8,
            label = 'リサイクルバイヤー'
        }
    },
    -- ['recycle_north'] = {
    --     name = 'リサイクルバイヤー',
    --     slots = 25,
    --     weight = 100000,
    --     coords = vec4(59.19, 6475.47, 31.43, 226.74),
    --     radius = 1.0,
    --     spawnPed = true,
    --     pedModel = 'S_M_Y_Construct_01',
    --     hour = { min = 9, max = 21 },
    --     account = 'cash',
    --     allowlist = {
    --         ['copper'] = { label = '銅', price = 10 },
    --         ['plastic'] = { label = 'プラスチック', price = 10 },
    --         ['metalscrap'] = { label = '金属スクラップ', price = 10 },
    --         ['steel'] = { label = '鋼', price = 10 },
    --         ['glass'] = { label = 'ガラス', price = 10 },
    --         ['iron'] = { label = '鉄', price = 10 },
    --         ['rubber'] = { label = 'ゴム', price = 10 },
    --         ['aluminum'] = { label = 'アルミニウム', price = 10 },
    --         ['bottle'] = { label = 'ボトル', price = 5 },
    --         ['can'] = { label = '缶', price = 5 },
    --     },
    --     placeholders = true,
    --     blip = {
    --         enabled = false,
    --         sprite = 642,
    --         color = 2,
    --         scale = 0.8,
    --         label = 'リサイクルバイヤー'
    --     }
    -- },
    -- ['qbx_pawnshop'] = { -- shared.lua より
    --     name = 'QBX質屋',
    --     slots = 25,
    --     weight = 100000,
    --     coords = vec4(412.34, 314.81, 103.13, 207.0), -- shared.lua の座標とheading
    --     radius = 1.0,
    --     spawnPed = true,
    --     pedModel = 'a_m_y_beach_02', -- 質屋担当者
    --     hour = { min = 6, max = 22 },
    --     account = 'cash',
    --     allowlist = {
    --         -- ['water'] = { label = '水', price = 50 },
    --         ['panties'] = { label = '下着', price = 10 },
    --         ['lockpick'] = { label = 'ロックピック', price = 25 },
    --         ['phone'] = { label = '電話', price = 150 },
    --         ['armour'] = { label = '防弾ベスト', price = 225 },
    --     },
    --     placeholders = true,
    --     blip = {
    --         enabled = true,
    --         sprite = 59,
    --         color = 0,
    --         scale = 0.8,
    --         label = '質屋'
    --     }
    -- },
    ['fish_market'] = {
        name = '魚市場',
        slots = 20,
        weight = 100000,
        coords = vec4(-1612.19, -989.18, 13.11, 45.3),
        radius = 1.0,
        spawnPed = true,
        pedModel = 'cs_old_man2',
        hour = { min = 9, max = 21 },
        account = 'cash',
        allowlist = {
            ['tuna'] = { label = 'マグロ', price = { min = 300, max = 550 } },
            ['salmon'] = { label = 'サーモン', price = { min = 235, max = 300 } },
            ['trout'] = { label = 'トラウト', price = { min = 190, max = 235 } },
            ['anchovy'] = { label = 'アンチョビ', price = { min = 100, max = 190 } },
        },
        placeholders = true,
        blip = {
            enabled = true,
            sprite = 68,
            color = 3,
            scale = 0.8,
            label = '魚市場'
        }
    },
    ['diving_pawn'] = {
        name = 'ダイビング交換所',
        slots = 20,
        weight = 100000,
        coords = vec4(-331.58, -2778.91, 5.15, 91.72),
        radius = 1.0,
        spawnPed = true,
        pedModel = 's_m_y_dockwork_01',
        hour = { min = 9, max = 21 },
        account = 'cash',
        allowlist = {
            ['ls_old_boot'] = { label = '古いブーツ', price = { min = 50, max = 100 } },
            ['ls_wood_plank'] = { label = '木の板', price = { min = 50, max = 100 } },
            ['ls_rusted_padlock'] = { label = '錆びた南京錠', price = { min = 50, max = 100 } },
            ['ls_rusted_key'] = { label = '錆びた鍵', price = { min = 50, max = 100 } },
            ['ls_rusted_gear'] = { label = '錆びた歯車', price = { min = 50, max = 100 } },
            ['ls_seashell'] = { label = '貝殻', price = { min = 150, max = 250 } },
            ['ls_seaweed'] = { label = '海藻', price = { min = 150, max = 250 } },
            ['ls_rusted_muffler'] = { label = '錆びたマフラー', price = { min = 150, max = 250 } },
            ['ls_broken_cd'] = { label = '壊れたCD', price = { min = 150, max = 250 } },
            ['ls_diving_goggles'] = { label = 'ダイビングゴーグル', price = { min = 150, max = 250 } },
            ['ls_fishing_net'] = { label = '漁網', price = { min = 250, max = 400 } },
            ['ls_old_camera'] = { label = '古いカメラ', price = { min = 250, max = 400 } },
            ['ls_military_helmet'] = { label = '軍用ヘルメット', price = { min = 250, max = 400 } },
            ['ls_old_compass'] = { label = '古いコンパス', price = { min = 500, max = 750 } },
            ['ls_old_watch'] = { label = '古い時計', price = { min = 500, max = 750 } },
            ['ls_conch_shell'] = { label = 'ホラ貝', price = { min = 500, max = 750 } },
        },
        placeholders = true,
        blip = {
            enabled = true,
            sprite = 471,
            color = 3,
            scale = 0.8,
            label = 'ダイビング交換所'
        }
    },
}