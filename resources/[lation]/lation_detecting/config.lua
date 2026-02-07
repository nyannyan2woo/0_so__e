Config = {} -- Do not alter

----------------------------------------------
--        🛠️ 基本設定
----------------------------------------------

Config.Setup = {
    -- 必要な場合にのみ使用し、サポートの指示があった場合、または何をしているかわかる場合に使用してください
    -- 注意: デバッグ機能を有効にすると、resmonが大幅に増加します
    -- 本番環境では常に無効にする必要があります
    -- デバッグが有効な場合、新しいコマンド /simulate にアクセスできます
    -- 例: /simulate 1 500 は、レベル1検出器での500回の検出結果を出力します
    -- 各レベルの各アイテムの「確率」設定をテストおよび調整するために使用できます
    debug = false,
    -- 以下のインタラクションシステムを設定してください
    -- 利用可能なオプション: 'ox_target', 'qb-target', 'interact', 'textui' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    interact = 'textui',
    -- 以下の通知システムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    notify = 'lation_ui',
    -- 以下のコンテキストメニューシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
    menu = 'lation_ui',
    -- 以下の通知と入力ダイアログシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
    dialogs = 'lation_ui',
    -- 更新が利用可能な場合にサーバーコンソール経由で通知を受け取りますか？
    -- はいの場合は true、いいえの場合は false
    version = true,
    -- 以下は interact = 'textui' の場合のみ使用されます
    -- これはインタラクションに使用されるキーで、デフォルトは E です
    -- その他のオプションはこちら: https://docs.fivem.net/docs/game-references/controls/
    control = 38,
    -- 金属探知統計統計メニューを開くために使用されるコマンド
    command = 'metaldetecting'
}

----------------------------------------------
--     ⚙️ 検出オプションの設定
----------------------------------------------

Config.Detecting = {
    -- 金属探知のためにプレイヤーに特定のジョブを要求しますか？
    -- そうする場合、require = true に設定し、job をジョブ名に設定します
    job = { require = false, job = 'metal_detector' },
    -- プレイヤーが検出器を「使用」するときにレベルを確認しますか？
    -- true の場合、これにより、プレイヤーが使用した特定の金属探知機モデルに必要なレベル（またはそれ以上）であることが保証されます
    -- false の場合、レベルを無視して任意の金属探知機を使用できるようになります
    verify_level = true,
    -- 金属探知中にプレイヤーが走ることを許可しますか？
    running = false,
    -- デフォルトでは、スクリプトは特定の土壌タイプでのみ検出を許可します
    -- 必要に応じて、以下の soil_types に土壌タイプを追加または削除できます
    -- 土壌タイプを取得するには、Config.Setup でデバッグオプションを有効にし、
    -- 任意の土壌で検出を行うと、F8 クライアントコンソールに土壌タイプが出力されます
    soil_check = true,
    -- soil_check が true の場合に金属探知を許可する土壌タイプ
    -- 任意の土壌タイプで金属探知を行いたいですか？上記の soil_check を false に設定してください
    soil_type = {
        [-1595148316] = true, -- Sand/beach
    },
    -- 承認された土壌タイプであるかどうかにかかわらず
    -- プレイヤーが金属探知できない特定のゾーン/エリアを作成します
    restricted_areas = {
        [1] = { coords = vec3(0, 0, 0), radius = 20 },
        -- 上記と同じ形式で制限ゾーンを追加します
        -- [2], [3] などのように番号を増やすようにしてください
    },
    -- プレイヤーがどこでも金属探知できるようにしたくない場合、および/または
    -- 土壌タイプが soil_type リストと一致する場所であればどこでも、enabled を true に設定できます
    -- すると、プレイヤーはこれらの指定されたエリアでのみ金属探知を行うことができます
    designated_areas = {
        enabled = false,
        areas = {
            [1] = { coords = vec3(0, 0, 0), radius = 50 },
            -- 上記と同じ形式で指定されたエリアを追加します
            -- [2], [3] などのように番号を増やすようにしてください
        }
    },
    -- 迷惑なプレイヤーがいますか？その活動から完全に禁止しましょう！
    -- 以下の例のように識別子をリストに追加するだけです
    -- ESX: デフォルトの識別子を使用: char1:abcdefghijklmnopqrstuv123456789
    -- QBCore: 市民IDを使用: ABC12345
    bans = {
        ['identifier'] = true,
        -- 上記の形式に従って、禁止されたプレイヤーをここに追加します
    },
    -- プレイヤーが金属探知を開始すると、以下のコントロール（キー）は
    -- 金属探知が完了するまで無効になります
    disable = {
        200, -- ESC
        22, -- Spacebar
        24, -- Left click / attack
        140, -- R / attack
        36, -- Left CTRL / duck
        44, -- Q / cover
        -- 必要に応じて追加または削除
    },
    -- 各レベルに到達するために必要なXPの量
    -- [level] = experience
    -- 現在、5が最大レベルであり、増やすことはできません
    levels = {
        [1] = 0,
        [2] = 12500,
        [3] = 25000,
        [4] = 50000,
        [5] = 100000
    },
    -- サウンド関連の設定をカスタマイズ
    sound = {
        -- 金属探知中に音声を再生したいですか？
        enable = true,
        -- 有効な場合、これが使用される音声です
        audio = { bank = 'DLC_HEIST_HACKING_SNAKE_SOUNDS', name = 'Beep_Red' }
    }
}

----------------------------------------------
--          🛒 ショップの設定
----------------------------------------------

Config.Shops = {
    detectors = {
        -- false に設定することでこのショップを無効にできます
        enabled = true,
        -- 店主に使用されるペッドモデル
        ped = 'a_m_y_beach_02',
        -- このショップが存在する場所
        coords = vec4(-1234.3484, -1476.9872, 3.3116, 79.8191),
        -- 検出器を購入するために使用されるアカウント ('cash' または 'bank')
        account = 'cash',
        -- 以下のブリップ設定をカスタマイズ
        blip = {
            enabled = true, -- このブリップを有効または無効にする
            sprite = 103, -- ブリップスプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- ブリップの色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- ブリップのサイズ
            label = 'Metal Detectors' -- ラベル
        }
    },
    sellShop = {
        -- false に設定することでこのショップを無効にできます
        enabled = true,
        -- 店主に使用されるペッドモデル
        ped = 'a_m_o_genstreet_01',
        -- このショップが存在する場所
        coords = vec4(412.6790, 314.3495, 102.0208, 207.4230),
        -- このショップで使用されるアカウント ('cash' または 'bank')
        -- アイテムを売却したときにプレイヤーが受け取るお金
        -- およびシャベルを購入するときに使用されるお金 (有効な場合)
        account = 'cash',
        -- アイテムを個別に売却する代わりに、簡単に「すべて売却」するオプション
        -- ただし、「すべて売却」オプションを無効にしたい場合は、sellAll を false に設定してください
        sellAll = true,
        -- ここで販売できるアイテムとその価格
        -- ショップで販売したくないアイテムがありますか？以下のリストから削除してください
        items = {
            ['md_bottlecap'] = 5,
            ['md_brokenjunk'] = 5,
            ['md_crushedcan'] = 5,
            ['md_lighter'] = 5,
            ['md_metalcan'] = 5,
            ['md_nails'] = 10,
            ['md_needle'] = 10,
            ['md_nut'] = 10,
            ['md_oldshotgunshell'] = 10,
            ['md_paperclip'] = 10,
            ['md_pulltab'] = 15,
            ['md_rustyball'] = 15,
            ['md_rustyironball'] = 15,
            ['md_rustyjunk'] = 15,
            ['md_rustynails'] = 15,
            ['md_rustypliers'] = 20,
            ['md_rustyring'] = 20,
            ['md_rustyscissors'] = 20,
            ['md_rustyscrewdriver'] = 20,
            ['md_rustyspring'] = 30,
            ['md_screw'] = 30,
            ['md_wheatpenny'] = 30,
            ['md_nickle'] = 40,
            ['md_silverdime'] = 40,
            ['md_quarter'] = 50,
            ['md_halfdollar'] = 75,
            ['md_blackwatch'] = 125,
            ['md_coppernugget'] = 150,
            ['md_ironnugget'] = 175,
            ['md_earpod'] = 200,
            ['md_relicrevolver'] = 250,
            ['md_silverearings'] = 500,
            ['md_silverring'] = 500,
            ['md_silverounce'] = 750,
            ['md_ancientcoin'] = 1000,
            ['md_golddollar'] = 1250,
            ['md_goldearings'] = 1500,
            ['md_goldnecklace'] = 1750,
            ['md_goldnugget'] = 2000,
            ['md_goldounce'] = 2250,
            ['md_goldring'] = 2500,
            ['md_diamondearings'] = 3000,
            ['md_diamondnecklace'] = 3250,
            ['md_diamondring'] = 3500,
            ['md_platinumnugget'] = 4000,
            ['md_presidentialwatch'] = 5000
        },
        blip = {
            enabled = true,
            sprite = 207,
            color = 2,
            scale = 0.8,
            label = 'Detectors Sell Shop'
        }
    }
}

----------------------------------------------
--       🔎 金属探知機の設定
----------------------------------------------

Config.Detectors = {
    [1] = { -- この検出器を購入するために必要なレベル
        requiredXP = 0, -- このレベルに到達するために必要なXP
        price = 2750, -- ショップでのこの金属探知機の価格
        prop = 'blue_metaldetector', -- プロップ
        item = 'blue_metaldetector', -- アイテム名
        radius = 15, -- アイテムを検出できる距離
        cooldown = math.random(10000, 20000), -- アイテムが見つかる頻度
        loot = { -- この検出器で利用可能なすべての戦利品
            -- ['item']: この検出器で見つかる可能性のある戦利品のアイテム名
            -- chance: このアイテムを見つけるパーセンテージの確率
            -- quantity min/max: 報酬として与えるこのアイテムの数量
            -- addXP: このアイテムを見つけたときに報酬として与えられるXPの量
            ['md_bottlecap'] = {chance = 60, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_brokenjunk'] = {chance = 60, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_crushedcan'] = {chance = 60, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_lighter'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_metalcan'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_nails'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_needle'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_nut'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_oldshotgunshell'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_paperclip'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_pulltab'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_rustyball'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_rustyironball'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_rustyjunk'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_rustynails'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_rustypliers'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_rustyring'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_rustyscissors'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_rustyscrewdriver'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_rustyspring'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_screw'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_wheatpenny'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_nickle'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_silverdime'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 125},
            ['md_quarter'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 150},
            ['md_halfdollar'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 200},
            ['md_blackwatch'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 250},
            ['md_coppernugget'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_ironnugget'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_earpod'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 400},
            ['md_relicrevolver'] = {chance = 5, quantity = { min = 1, max = 1 }, addXP = 450},
            ['md_silverearings'] = {chance = 4, quantity = { min = 1, max = 1 }, addXP = 500},
            ['md_silverring'] = {chance = 4, quantity = { min = 1, max = 1 }, addXP = 500},
            ['md_silverounce'] = {chance = 4, quantity = { min = 1, max = 1 }, addXP = 500},
            ['md_ancientcoin'] = {chance = 3, quantity = { min = 1, max = 1 }, addXP = 600},
            ['md_golddollar'] = {chance = 3, quantity = { min = 1, max = 1 }, addXP = 600},
            ['md_goldearings'] = {chance = 2, quantity = { min = 1, max = 1 }, addXP = 750},
            ['md_goldnecklace'] = {chance = 2, quantity = { min = 1, max = 1 }, addXP = 750},
            ['md_goldnugget'] = {chance = 2, quantity = { min = 1, max = 1 }, addXP = 750},
            ['md_goldounce'] = {chance = 2, quantity = { min = 1, max = 1 }, addXP = 750},
            ['md_goldring'] = {chance = 2, quantity = { min = 1, max = 1 }, addXP = 750},
            ['md_diamondearings'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 1200},
            ['md_diamondnecklace'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 1200},
            ['md_diamondring'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 1200},
            ['md_platinumnugget'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 1200},
            ['md_presidentialwatch'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 1200}
        }
    },
    [2] = { -- レベル 2
        requiredXP = 12500,
        price = 5250,
        prop = 'green_metaldetector',
        item = 'green_metaldetector',
        radius = 25,
        cooldown = math.random(15000, 30000),
        loot = {
            ['md_bottlecap'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_brokenjunk'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_crushedcan'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_lighter'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_metalcan'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_nails'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_needle'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_nut'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_oldshotgunshell'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_paperclip'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_pulltab'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyball'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyironball'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyjunk'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustynails'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustypliers'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyring'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyscissors'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyscrewdriver'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_rustyspring'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_screw'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_wheatpenny'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_nickle'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_silverdime'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_quarter'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_halfdollar'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_blackwatch'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_coppernugget'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_ironnugget'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_earpod'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_relicrevolver'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 60},
            ['md_silverearings'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_silverring'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_silverounce'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_ancientcoin'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_golddollar'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 200},
            ['md_goldearings'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 200},
            ['md_goldnecklace'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_goldnugget'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_goldounce'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_goldring'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 300},
            ['md_diamondearings'] = {chance = 5, quantity = { min = 1, max = 1 }, addXP = 400},
            ['md_diamondnecklace'] = {chance = 5, quantity = { min = 1, max = 1 }, addXP = 400},
            ['md_diamondring'] = {chance = 5, quantity = { min = 1, max = 1 }, addXP = 400},
            ['md_platinumnugget'] = {chance = 3, quantity = { min = 1, max = 1 }, addXP = 480},
            ['md_presidentialwatch'] = {chance = 1, quantity = { min = 1, max = 1 }, addXP = 600}
        }
    },
    [3] = { -- レベル 3
        requiredXP = 25000,
        price = 8825,
        prop = 'red_metaldetector',
        item = 'red_metaldetector',
        radius = 35,
        cooldown = math.random(20000, 40000),
        loot = {
            ['md_bottlecap'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_brokenjunk'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_crushedcan'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_lighter'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_metalcan'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_nails'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_needle'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_nut'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_oldshotgunshell'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_paperclip'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_pulltab'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_rustyball'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_rustyironball'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustyjunk'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustynails'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustypliers'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustyring'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustyscissors'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustyscrewdriver'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_rustyspring'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_screw'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_wheatpenny'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_nickle'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_silverdime'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_quarter'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_halfdollar'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_blackwatch'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_coppernugget'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_ironnugget'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_earpod'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 45},
            ['md_relicrevolver'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_silverearings'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_silverring'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_silverounce'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_ancientcoin'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_golddollar'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_goldearings'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_goldnecklace'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_goldnugget'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_goldounce'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_goldring'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_diamondearings'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_diamondnecklace'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_diamondring'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_platinumnugget'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 200},
            ['md_presidentialwatch'] = {chance = 5, quantity = { min = 1, max = 1 }, addXP = 300}
        }
    },
    [4] = { -- レベル 4
        requiredXP = 50000,
        price = 13250,
        prop = 'orange_metaldetector',
        item = 'orange_metaldetector',
        radius = 45,
        cooldown = math.random(25000, 50000),
        loot = {
            ['md_bottlecap'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_brokenjunk'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_crushedcan'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_lighter'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_metalcan'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_nails'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_needle'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_nut'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_oldshotgunshell'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_paperclip'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_pulltab'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_rustyball'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_rustyironball'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustyjunk'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustynails'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustypliers'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustyring'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustyscissors'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustyscrewdriver'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_rustyspring'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_screw'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_wheatpenny'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_nickle'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_silverdime'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_quarter'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_halfdollar'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_blackwatch'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_coppernugget'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_ironnugget'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_earpod'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_relicrevolver'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_silverearings'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_silverring'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_silverounce'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_ancientcoin'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_golddollar'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_goldearings'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_goldnecklace'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 55},
            ['md_goldnugget'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_goldounce'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_goldring'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 65},
            ['md_diamondearings'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_diamondnecklace'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_diamondring'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 75},
            ['md_platinumnugget'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 100},
            ['md_presidentialwatch'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 150}
        }
    },
    [5] = { -- レベル 5
        requiredXP = 100000,
        price = 19575,
        prop = 'black_metaldetector',
        item = 'black_metaldetector',
        radius = 60,
        cooldown = math.random(30000, 60000),
        loot = {
            ['md_bottlecap'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 2},
            ['md_brokenjunk'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 2},
            ['md_crushedcan'] = {chance = 10, quantity = { min = 1, max = 1 }, addXP = 2},
            ['md_lighter'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 3},
            ['md_metalcan'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 3},
            ['md_nails'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 3},
            ['md_needle'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 4},
            ['md_nut'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 4},
            ['md_oldshotgunshell'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 4},
            ['md_paperclip'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_pulltab'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_rustyball'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 5},
            ['md_rustyironball'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 6},
            ['md_rustyjunk'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 6},
            ['md_rustynails'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 6},
            ['md_rustypliers'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 7},
            ['md_rustyring'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 7},
            ['md_rustyscissors'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 7},
            ['md_rustyscrewdriver'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 8},
            ['md_rustyspring'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 8},
            ['md_screw'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 8},
            ['md_wheatpenny'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 9},
            ['md_nickle'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 9},
            ['md_silverdime'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 9},
            ['md_quarter'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_halfdollar'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_blackwatch'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 10},
            ['md_coppernugget'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_ironnugget'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_earpod'] = {chance = 55, quantity = { min = 1, max = 1 }, addXP = 15},
            ['md_relicrevolver'] = {chance = 50, quantity = { min = 1, max = 1 }, addXP = 20},
            ['md_silverearings'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_silverring'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_silverounce'] = {chance = 45, quantity = { min = 1, max = 1 }, addXP = 25},
            ['md_ancientcoin'] = {chance = 40, quantity = { min = 1, max = 1 }, addXP = 30},
            ['md_golddollar'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_goldearings'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_goldnecklace'] = {chance = 35, quantity = { min = 1, max = 1 }, addXP = 35},
            ['md_goldnugget'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_goldounce'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_goldring'] = {chance = 30, quantity = { min = 1, max = 1 }, addXP = 40},
            ['md_diamondearings'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_diamondnecklace'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_diamondring'] = {chance = 25, quantity = { min = 1, max = 1 }, addXP = 50},
            ['md_platinumnugget'] = {chance = 20, quantity = { min = 1, max = 1 }, addXP = 60},
            ['md_presidentialwatch'] = {chance = 15, quantity = { min = 1, max = 1 }, addXP = 75}
        }
    }
}

----------------------------------------------
--     🤷‍♂️ その他のシャベルオプション
----------------------------------------------

Config.Shovel = {
    -- シャベルのアイテム名
    item = 'md_shovel',
    -- このシャベルをいずれかのショップで販売したいですか？
    -- はいの場合、addToShop を 'sellShop' または 'detectors' に設定します
    -- 販売したくない場合は、addToShop を nil または false に設定します
    addToShop = 'sellShop',
    -- 上記のショップで購入可能な場合のシャベルの価格
    price = 250,
    -- 金属探知時に掘削するためにシャベルを必須にしますか？
    required = true,
}

----------------------------------------------
--    💃 アニメーションとプロップのカスタマイズ
----------------------------------------------

Config.Animations = {
    detecting = {
        anim = { dict = 'mini@golfai', clip = 'wood_idle_a' },
        prop = { pos = vec3(0.849, 0.050, 0.059), rot = vec3(-176.460, 86.093, 5.054) }
    },
    shovel = {
        duration = 7250,
        anim = { dict = 'random@burial', clip = 'a_burial' },
        prop = { model = 'prop_tool_shovel', pos = vec3(0.0, 0.0, 0.240), rot = vec3(0.0, 0.0, 0.0) }
    }
}