Config = {} -- Do not touch

----------------------------------------------
--        🛠️ Setup the basics below
----------------------------------------------

Config.Setup = {
    -- 必要な場合、サポートの指示がある場合、または何をしているか理解している場合にのみ使用してください
    -- 注意: デバッグ機能を有効にすると、リソース使用量が大幅に増加します
    -- また、本番環境では常に無効にする必要があります
    debug = false,
    -- スクリプトでアイテムのメタデータを使用しますか？
    -- これにより、じょうろや肥料などのアイテムにメタデータが付与されます
    -- また、つぼみ、ジョイント、袋詰めアイテムに品種や純度のメタデータが付与されます
    metadata = true,
    -- 以下にインタラクションシステムを設定してください
    -- 利用可能なオプション: 'ox_target', 'qb-target', 'interact', 'textui', 'custom'
    -- 'custom'は client/functions.lua に追加する必要があります
    -- さまざまなtextUIもサポートしています: ox_lib, jg-textui, okokTextUI, qbcore
    -- どのtextUIを使用するかを選択するには、client/functions.lua の3行目に移動してください
    interact = 'textui',
    -- 以下に通知システムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify', 'custom'
    -- 'custom'は client/functions.lua に追加する必要があります
    notify = 'lation_ui',
    -- 以下にプログレスバーシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'qbcore', 'custom'
    -- 'custom'は client/functions.lua に追加する必要があります
    -- カスタムプログレスバーはアニメーションもサポートする必要があります
    progress = 'lation_ui',
    -- 以下にコンテキストメニューシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'custom'
    menu = 'lation_ui',
    -- 以下にアラートと入力ダイアログシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'custom'
    dialogs = 'lation_ui',
    -- アップデートが利用可能な場合、サーバーコンソールを通じて通知を受け取りますか？
    -- はいの場合はtrue、いいえの場合はfalse
    version = true,
    -- 以下は interact = 'textui' の場合のみ使用されます
    -- これはインタラクションに使用されるキーで、デフォルトはEです
    -- その他のオプションはこちら: https://docs.fivem.net/docs/game-references/controls/
    control = 38,
    -- 以下の 'request' オプションは、クライアントがモデル/アニメーションの読み込みを待機する時間です
    -- 何をしているか理解している場合、またはサポートメンバーの指示がない限り、編集しないでください
    request = 10000,
    -- Renderは、プレイヤーが最も近い植物からこの単位（距離）以内にいる必要がある数値です
    -- プロップが出現して表示されるためには、この範囲内にいる必要があります
    -- （この数値/距離の外側では、プロップは再び必要になるまで削除されます）
    render = 100,
    -- /plants コマンドへのアクセス権を与えたいすべての管理者識別子をここに入力してください
    -- /plants コマンドは管理者の植物管理メニューです
    -- ESX: デフォル識別子を使用: char1:abcdefghijklmnopqrstuv123456789
    -- QBCore & QBox: 市民IDを使用: ABC12345
    -- Ox: charIdを使用
    admins = {
        ['identifier'] = true,
        -- 必要に応じて管理者をここに追加してください
    },
}

----------------------------------------------
--        👮 警察オプションの設定
----------------------------------------------

Config.Police = {
    -- 以下にすべての警察ジョブをリストしてください
    jobs = { 'police', 'sheriff' },
    -- 種を植えるために警察がオンラインである必要がありますか？
    require = false,
    -- require = true の場合、何人オンラインである必要がありますか？
    count = 3,
    -- すべての要件を無視して警察がラボにアクセスできるようにしますか？
    labAccess = true
}

----------------------------------------------
--       📈 XPシステムのカスタマイズ
----------------------------------------------

Config.Experience = {
    -- [角括弧]内の数字はレベルです
    -- = の後の数字はそのレベルに到達するために必要な経験値です
    -- レベルは *常に* レベル1、経験値0から開始してください
    [1] = 0,
    [2] = 2500,
    [3] = 10000,
    [4] = 20000,
    [5] = 50000,
    [6] = 100000,
    -- 必要に応じてレベルを追加または削除できます
    -- 数字を正しく増加させてください
}

----------------------------------------------
--     🌿 植栽オプションの設定
----------------------------------------------

Config.Planting = {
    -- 'max' はプレイヤーが持てる植物の最大数です
    max = 12,
    -- 新しい植物を植えるために必要なアイテムをカスタマイズします
    items = {
        plant_pot = {
            -- アイテムのスポーン名
            item = 'ls_plant_pot',
            -- 植えるときに植木鉢が必要ですか？
            require = true,
            -- 植えるときにこのアイテムを削除しますか？
            remove = true,
            -- remove = true の場合、いくつ削除しますか？
            consume = 1,
            -- 植物を収穫するとき、植木鉢が戻ってくるチャンスがありますか？
            return_pot = true,
            -- return_pot が true の場合、戻ってくる確率は何パーセントですか？
            return_chance = 70
        },
        shovel = {
            -- アイテムのスポーン名
            item = 'ls_shovel',
            -- 植えるときにシャベルが必要ですか？
            require = false,
            -- 植えるときにこのアイテムを削除しますか？
            remove = false,
            -- remove = true の場合、いくつ削除しますか？
            consume = 1
        }
    },
    -- 植物を配置するときに衝突をチェックしますか？
    -- これにより、配置プロセス中に他の何かと衝突している場合
    -- プレイヤーは植物を配置できなくなります
    collision = true,
    -- 土壌チェック機能をカスタマイズします
    soil = {
        -- 土壌チェック機能を有効にしますか？
        -- これにより、以下の土壌ハッシュに一致する土壌タイプにのみ
        -- プレイヤーが植物を配置できるようになります
        enable = true,
        -- enable = true の場合、これらが許可される土壌タイプです
        -- 上記の debug を true に設定することで土壌タイプを取得できます
        -- そして植物を配置してみてください - F8に土壌ハッシュが表示されます！
        types = {
            [2409420175] = true,
            [3008270349] = true,
            [3833216577] = true,
            [223086562] = true,
            [1333033863] = true,
            [4170197704] = true,
            [3594309083] = true,
            [2461440131] = true,
            [1109728704] = true,
            [2352068586] = true,
            [1144315879] = true,
            [581794674] = true,
            [2128369009] = true,
            [-461750719] = true,
            [-1286696947] = true,
            [-1885547121] = true,
            [-1907520769] = true
        },
        -- 土壌チェック機能をアクティブにしておきたいが、特定の場所（倉庫など）での植栽を許可したい場合は
        -- ここに場所とエリアの一般的なサイズ（半径）を配置すると、土壌チェックがバイパスされます
        ignore = {
            [1] = { coords = vec3(0, 0, 0), radius = 5 },
            [2] = { coords = vec3(0, 0, 0), radius = 25 },
            -- 必要に応じて無視する場所をここに追加してください
        }
    },
    -- 特定の場所での植栽を無効にしたい場合は、ここで設定できます
    blacklist = {
        [1] = { coords = vec3(0, 0, 0), radius = 5 },
        [2] = { coords = vec3(0, 0, 0), radius = 25 },
        -- 必要に応じてブラックリストの場所をここに追加してください
    },
    -- プレイヤーがマップの周りで自由に植えることを許可したくない場合
    -- ホワイトリストに登録された場所にのみ植栽を制限し、
    -- 植栽が有効になる各場所のサイズ（半径）を以下でカスタマイズできます
    restrict = {
        -- 制限オプションを有効にしますか？
        enable = false,
        -- enable = true の場合、どの場所で植栽が許可されますか？
        whitelist = {
            [1] = { coords = vec3(0, 0, 0), radius = 5 },
            [2] = { coords = vec3(0, 0, 0), radius = 25 },
            -- 必要に応じてホワイトリストの場所をここに追加してください
        }
    },
    -- すべての植物にはデフォルトで、植物と対話するときに誰でも使用できる
    -- 「破壊」オプションがあります。植物の所有者だけに破壊オプションを
    -- 表示させたい場合は、can_destroy を false に設定してください
    -- （警察はこのオプションに関係なく常に破壊オプションを持ちます）
    anyone_destroy = true,
}

----------------------------------------------
--    🧬 品種の作成、編集、管理
----------------------------------------------

-- ここでさまざまな種類の雑草の品種を作成、編集、管理します
-- デフォルトで設定されているプロップは、私たちのカスタム雑草プロップです！
-- 他のオプションや、カスタムプロップを使用したくない場合は、以下のリンクに従ってください:
-- https://docs.lationscripts.com/premium-resources/advanced-weed-growing/custom-props
Config.Strains = {
    -- この品種の一意の識別子
    ['plain_jane'] = {
        -- この品種の名前は何ですか？
        label = 'Plain Jane',
        -- この品種の種アイテム
        seed = 'ls_plain_jane_seed',
        -- この品種のつぼみ（収穫された）アイテム
        bud = 'ls_plain_jane_bud',
        -- "袋詰め"後のこの品種の袋詰めアイテム名
        bag = 'ls_plain_jane_bag',
        -- "ロール"後のこの品種のジョイントアイテム名
        joint = 'ls_plain_jane_joint',
        -- この品種を育て/ロール/袋詰めするために必要なレベルは？
        level = 1,
        -- 収穫されたつぼみごとにプレイヤーに報酬として与えられる経験値は？
        -- プレイヤーが x5 のつぼみを収穫した場合、XP * 5 を獲得します
        exp = { min = 4, max = 8 },
        -- プレイヤーがこの植物を収穫するとき、収穫量はどれくらいですか？
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        -- この品種が各段階で使用するプロップ/モデル
        props = {
            -- ステージ 1
            [1] = 'shoe_shuffler_prop_weed_01_small_green_01a',
            -- ステージ 2
            [2] = 'shoe_shuffler_prop_weed_med_green_01a',
            -- ステージ 3
            [3] = 'shoe_shuffler_prop_weed_lrg_green_01a'
        }
    },
    ['banana_kush'] = {
        label = 'Banana Kush',
        seed = 'ls_banana_kush_seed',
        bud = 'ls_banana_kush_bud',
        bag = 'ls_banana_kush_bag',
        joint = 'ls_banana_kush_joint',
        level = 2,
        exp = { min = 5, max = 10 },
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        props = {
            [1] = 'shoe_shuffler_prop_weed_01_small_yellow_01a',
            [2] = 'shoe_shuffler_prop_weed_med_yellow_01a',
            [3] = 'shoe_shuffler_prop_weed_lrg_yellow_01a'
        }
    },
    ['blue_dream'] = {
        label = 'Blue Dream',
        seed = 'ls_blue_dream_seed',
        bud = 'ls_blue_dream_bud',
        bag = 'ls_blue_dream_bag',
        joint = 'ls_blue_dream_joint',
        level = 3,
        exp = { min = 6, max = 12 },
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        props = {
            [1] = 'shoe_shuffler_prop_weed_01_small_cyan_01a',
            [2] = 'shoe_shuffler_prop_weed_med_cyan_01a',
            [3] = 'shoe_shuffler_prop_weed_lrg_cyan_01a'
        }
    },
    ['purple_haze'] = {
        label = 'Purple Haze',
        seed = 'ls_purple_haze_seed',
        bud = 'ls_purple_haze_bud',
        bag = 'ls_purple_haze_bag',
        joint = 'ls_purple_haze_joint',
        level = 4,
        exp = { min = 7, max = 14 },
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        props = {
            [1] = 'shoe_shuffler_prop_weed_01_small_purple_01a',
            [2] = 'shoe_shuffler_prop_weed_med_purple_01a',
            [3] = 'shoe_shuffler_prop_weed_lrg_purple_01a'
        }
    },
    ['orange_crush'] = {
        label = 'Orange Crush',
        seed = 'ls_orange_crush_seed',
        bud = 'ls_orange_crush_bud',
        bag = 'ls_orange_crush_bag',
        joint = 'ls_orange_crush_joint',
        level = 5,
        exp = { min = 8, max = 16 },
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        props = {
            [1] = 'shoe_shuffler_prop_weed_01_small_sunkissed_01a',
            [2] = 'shoe_shuffler_prop_weed_med_sunkissed_01a',
            [3] = 'shoe_shuffler_prop_weed_lrg_sunkissed_01a'
        }
    },
    ['cosmic_kush'] = {
        label = 'Cosmic Kush',
        seed = 'ls_cosmic_kush_seed',
        bud = 'ls_cosmic_kush_bud',
        bag = 'ls_cosmic_kush_bag',
        joint = 'ls_cosmic_kush_joint',
        level = 6,
        exp = { min = 9, max = 18 },
        yields = {
            buds = { min = 4, max = 18 },
            seeds = { min = 1, max = 3 }
        },
        props = {
            [1] = 'shoe_shuffler_prop_weed_01_small_haze_01a',
            [2] = 'shoe_shuffler_prop_weed_med_haze_01a',
            [3] = 'shoe_shuffler_prop_weed_lrg_haze_01a'
        }
    },
    -- 上記と同じフォーマットに従って、ここに必要なだけ品種を追加してください
    -- 上記の品種のいずれかが不要ですか？ リストから削除するだけです！
}

----------------------------------------------
--    🌱 農場の作成、編集、管理
----------------------------------------------

Config.Cooldown = 45 -- 検索後の各植物のクールダウン時間（秒）
Config.Farms = {
    [1] = {
        -- ここで植物のプロップをスポーンする必要がありますか？
        spawn = false,
        -- spawn = true の場合、どのプロップをスポーンしますか？
        model = 'prop_weed_01',
        -- ゾーンの中心座標
        center = vec3(2225.805, 5576.971, 53.857),
        -- ゾーンのサイズ（半径）（Config.Setup.debug でゾーンを確認できます）
        size = 15,
        -- この農場で植物を検索するために必要なプレイヤーレベル
        level = 1,
        -- ここにある各植物の場所（または各植物をスポーンする場所）
        coords = {
            -- 既存の植物の正確な座標を取得するのに助けが必要な場合
            -- dolu_toolの使用をお勧めします: https://github.com/dolutattoo/dolu_tool/releases/latest
            -- また、正確さのためにZ座標（3番目の座標）を +1 することをお勧めします
            [1] = vec3(2216.251, 5577.534, 53.739),
            [2] = vec3(2215.845, 5575.269, 53.599),
            [3] = vec3(2218.534, 5577.353, 53.757),
            [4] = vec3(2218.279, 5575.158, 53.720),
            [5] = vec3(2218.917, 5579.656, 53.855),
            [6] = vec3(2220.535, 5577.247, 53.750),
            [7] = vec3(2221.015, 5574.937, 53.621),
            [8] = vec3(2222.687, 5574.870, 53.623),
            [9] = vec3(2223.059, 5577.105, 53.742),
            [10] = vec3(2223.790, 5579.327, 53.831),
            [11] = vec3(2225.323, 5576.916, 53.759),
            [12] = vec3(2225.409, 5579.195, 53.837),
            [13] = vec3(2227.682, 5576.773, 53.775),
            [14] = vec3(2227.326, 5574.560, 53.719),
            [15] = vec3(2230.170, 5576.593, 53.856),
            [16] = vec3(2230.674, 5574.298, 53.815),
            [17] = vec3(2232.641, 5576.405, 53.936),
            [18] = vec3(2233.875, 5578.694, 54.022)
        },
        -- この場所で見つけることができる種
        seeds = {
            -- ['strain_name'] = Config.Strains からの一意の品種識別子
            ['plain_jane'] = {
                -- この種を手に入れるチャンスを得るために必要なプレイヤーレベル
                level = 1,
                -- プレイヤーがこの種を見つける「確率」
                chance = 60,
                -- 見つかった時の最小報酬量
                min = 1,
                -- 見つかった時の最大報酬量
                max = 4,
                -- 種が見つかったごとの最小および最大経験値報酬
                exp = { min = 1, max = 1 }
            },
            ['banana_kush'] = {
                level = 2,
                chance = 40,
                min = 1,
                max = 3,
                exp = { min = 1, max = 2 }
            },
            ['blue_dream'] = {
                level = 3,
                chance = 30,
                min = 1,
                max = 2,
                exp = { min = 1, max = 2 }
            },
            ['purple_haze'] = {
                level = 4,
                chance = 20,
                min = 1,
                max = 2,
                exp = { min = 1, max = 2 }
            },
            ['orange_crush'] = {
                level = 5,
                chance = 10,
                min = 1,
                max = 1,
                exp = { min = 1, max = 3 }
            },
            ['cosmic_kush'] = {
                level = 6,
                chance = 5,
                min = 1,
                max = 1,
                exp = { min = 1, max = 4 }
            },
            -- 上記と同じフォーマットに従って、ここで種を追加または削除します
        },
        -- ここで検索したときに何も見つからない確率（パーセンテージ）
        nothing = 15
    },
    -- 上記と同じフォーマットに従って、ここに農場を追加します
    -- 注意: ゾーンが互いに重ならないようにしてください
    -- Config.Setup.debug = true を設定することで再確認および検証できます
}

----------------------------------------------
--       🏪 サプライショップをカスタマイズ
----------------------------------------------

Config.Shop = {
    -- このショップを有効にしますか？
    enable = false,
    -- このショップはどこにありますか？
    location = vec4(-1171.0409, -1571.1124, 4.6636, 122.0094),
    -- ここでどのPedモデルをスポーンさせますか？
    model = 'a_m_y_beach_02',
    -- ここでサプライショップが利用可能な時間を制限できます
    -- Min はショップが利用可能になる最も早い時間（デフォルト 6:00AM）
    -- Max はショップが利用可能になる最も遅い時間（デフォルト 21:00 つまり 9PM）
    -- 24時間年中無休で利用可能にする場合は、minを1、maxを24に設定します
    hour = { min = 6, max = 21 },
    -- ここで購入する際、現金を使用しますか、それとも銀行を使用しますか？
    account = 'cash',
    -- ここで利用可能なアイテムをカスタマイズします
    items = {
        -- item: アイテムのスポーン名
        -- price: 価格
        -- label: 表示名
        -- icon: このアイテムのアイコンまたはnil
        -- min: プレイヤーが一度に購入しなければならない最小量
        -- max: プレイヤーが一度に購入できる最大量またはnil
        [1] = { item = 'ls_watering_can', price = 15, label = '水', icon = 'droplet', min = 1, max = 1 },
        [2] = { item = 'ls_fertilizer', price = 20, label = '肥料', icon = 'burger', min = 1, max = 1 },
        [3] = { item = 'ls_plant_pot', price = 10, label = '植木鉢', icon = 'plant-wilt', min = 1, max = 50 },
        [4] = { item = 'ls_shovel', price = 275, label = 'シャベル', icon = 'trowel', min = 1, max = 1 },
        [5] = { item = 'ls_shears', price = 150, label = '剪定ばさみ', icon = 'scissors', min = 1, max = 1 },
        [6] = { item = 'ls_rolling_paper', price = 5, label = '巻紙', icon = 'joint', min = 1, max = 50 },
        [7] = { item = 'ls_empty_baggy', price = 5, label = '空の袋', icon = 'bag-shopping', min = 1, max = 50 },
        [8] = { item = 'ls_weed_table', price = 5000, label = 'ウィードテーブル', icon = 'cannabis', min = 1, max = 1 },
        -- 必要に応じて、上記と同じフォーマットに従ってここにアイテムを追加します
        -- または、リストからアイテムを削除したい場合 - [1]、[2]などの番号スキームを更新してください
    },
    blip = {
        -- このショップのブリップを有効または無効にします
        enabled = true,
        -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
        sprite = 140,
        -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
        color = 2,
        -- サイズ/スケール
        scale = 0.8,
        -- ラベル
        label = 'スモーク・オン・ザ・ウォーター'
    }
}

----------------------------------------------
--       🌿 植物の成長をカスタマイズ
----------------------------------------------

-- ⚠️ 警告: 注意深くお読みください
-- 以下のすべての設定オプションは、植物の成長システムに重大な影響を与えます
-- テストとデバッグを行う意思がない限り、以下の設定を変更することは
-- お勧めしません。そうすることで、意図しない結果が生じる可能性があります
-- ただし、もちろん、成長システムの仕組みを変更したい場合は、これらのオプションを利用できます

Config.Growth = {
    -- 'update_interval' は、各植物が更新されるおおよそのミリ秒数です
    update_interval = 15000,
    -- 'starting' は、それぞれの開始値（パーセンテージ）です
    starting = { thirst = 85, hunger = 85, quality = 100, growth = 0 },
    -- 'growth_increase' は、update_interval ごとに増加する成長のパーセンテージです
    -- デフォルトでは、成長は15秒ごとにおよそ0.1%〜0.3%増加します
    growth_increase = { min = 0.15, max = 0.35 },
    -- 'stages' は、そのステージに進むための成長率のしきい値です
    -- [2] = 40 は、植物が40%の成長でステージ2に変化することを意味します
    stages = { [2] = 40, [3] = 90 },
    -- 'watering' は、水やりアクションごとに植物の水分レベルが増加する量です
    -- 'item' セクションは水やりアイテムのスポーン名です
    -- デフォルトでは、植物の水分レベルは水やりごとに8-13%増加します
    watering = { item = 'ls_watering_can', min = 8.0, max = 13.0 },
    -- 'fertilizing' は、肥料を与えたときに植物の空腹レベルが増加する量です
    -- 'item' セクションは肥料アイテムのスポーン名です
    -- デフォルトでは、植物の空腹レベルは肥料ごとに10-15%増加します
    fertilizing = { item = 'ls_fertilizer', min = 10.0, max = 15.0 },
    -- 'thirst' は、update_interval ごとに水分が減少する量です
    -- デフォルトでは、水分は15秒ごとにおよそ0.1%から0.4%減少します
    thirst = { min = 0.15, max = 0.4 },
    -- 'hunger' は、update_interval ごとに空腹が減少する量です
    -- デフォルトでは、空腹は15秒ごとにおよそ0.1%から0.4%減少します
    hunger = { min = 0.15, max = 0.4 },
    -- 'death' は、水分または空腹がこの量に達したときに植物が枯れることを意味します
    -- デフォルトでは、水分または空腹が20%以下になると、植物はいつでも枯れます
    -- 植物が枯れると、完全に削除され、マップから削除されます
    death = 20,
    -- 'good_quality' は、植物が「高品質」と見なされる「品質」のパーセンテージ以上です
    -- 収穫時に good_quality 以上の品質レベルの植物は、最大収穫量を得ます
    good_quality = 94,
    -- 'quality_threshold' は、植物の水分または空腹がこの数値に達すると、品質が低下し始めるしきい値です
    -- つまり、植物の空腹が100%でも水分が69%の場合、植物の水分と空腹がこの量を超えるまで
    -- 品質レベルは update_interval ごとに低下し始めます
    quality_threshold = 70,
    -- 'quality_decrease' は、植物の水分または空腹レベルが品質しきい値量（デフォルトで70%）を下回っている場合に
    -- update_interval ごとに品質パーセンテージが減少する量です
    quality_decrease = { min = 0.4, max = 0.9 },
    -- 'shears' は、植物を収穫するためのオプションのアイテム要件です
    shears = {
        -- アイテムのスポーン名
        item = 'ls_shears',
        -- 収穫時に剪定ばさみが必要ですか？
        require = false,
        -- 収穫時にこのアイテムを削除しますか？
        remove = false,
        -- remove = true の場合、いくつ削除したいですか？
        consume = 1
    }
}

----------------------------------------------
--       📊 統計メニューのカスタマイズ
----------------------------------------------

Config.Stats = {
    -- 検索された植物の統計を表示しますか？
    plants_searched = true,
    -- 育てられた植物の統計を表示しますか？
    plants_grown = true,
    -- 収穫されたつぼみの統計を表示しますか？
    bud_harvested = true,
    -- ロールされたジョイントの統計を表示しますか？
    joints_rolled = true,
    -- 袋詰めされた雑草の統計を表示しますか？
    weed_bagged = true

    -- 🗒️ メモ: すべての統計が false に設定されている場合
    -- 「生涯統計を表示」メニューはまったく表示されません
}

----------------------------------------------
--        📋 ウィードラボの設定
----------------------------------------------

Config.Lab = {
    -- ウィードラボを有効にしますか？
    -- これは、プレイヤーがウィードをロールしたり袋詰めしたりできる場所です
    -- ⚠️ この機能は、OneSync Infinity が有効な場合にのみ適切に機能します
    -- OneSync Legacy または OneSync オフの場合は、この機能を無効にすることをお勧めします
    enable = true,
    -- プレイヤーはどこからラボに入りますか？
    enter = vec4(416.1885, 6520.8638, 27.7308, 86.4887),
    -- プレイヤーはどこからラボを出ますか？
    exit = vec4(1066.3086, -3183.4487, -39.1636, 272.1406),
    -- オプションのラボ入場要件
    requirements = {
        -- プレイヤーレベル要件
        level = 1,
        -- アイテム要件
        item = {
            -- 入場にアイテムが必要ですか？
            enable = true,
            -- enable = true の場合、どのアイテムですか？
            name = 'ls_access_card'
        },
        -- 警察要件
        police = {
            -- 入場するには警察がオンラインである必要がありますか？
            enable = false,
            -- enable = true の場合、何人ですか？
            count = 3
        }
    },
    rolling = {
        -- ここでローリングテーブルを追加、削除、管理します
        tables = {
            [1] = {
                -- スクリプトでこのテーブルをスポーンする必要がありますか？
                -- これらの座標にすでに存在する場合は、falseのままにしてください
                spawn = false,
                -- spawn = true の場合、どのモデルのテーブルですか？
                model = 'bkr_prop_weed_table_01a',
                -- このローリングテーブルの座標
                coords = vec4(1038.3824, -3205.8552, -39.1231, 85.0345),
                -- このテーブルを使用するために必要なプレイヤーレベル
                level = 1,
                -- ここでロールできる品種の種類
                buds = {
                    -- ['uniqueStrainIdentifier']: 上記の Config.Strains からの一意の品種識別子
                    -- ここでロールされる品種を無効にするには、リストから削除するだけです
                    ['plain_jane'] = {
                        -- このつぼみをロールするとき、ロールごとにつぼみをいくつ削除しますか？
                        remove_bud = 1,
                        -- このつぼみをロールするとき、追加のアイテムが必要ですか？
                        -- デフォルトでは、必要なアイテムは「巻紙」で、ロールごとに1つ削除されます
                        -- 追加のアイテムを必要としない場合は、remove_item = nil に設定してください
                        -- item: アイテムのスポーン名 & quantity: ロールごとに削除する量
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        -- このつぼみをロールするとき、ロールごとにいくつのジョイントを報酬として与えますか？
                        add_joint = 1,
                        -- 1回のローリングアクションにはどのくらい時間がかかりますか（ミリ秒単位）？
                        duration = 2500,
                        -- 最初からやり直す前に、一度にロールできる最大量
                        -- これにより、このアクションを放置可能にするかどうかを設定できます
                        max_roll = 15,
                        -- ロールされたジョイントごとにプレイヤーに与えられる経験値の量
                        exp = { min = 1, max = 1 },
                        -- メニューでこの品種を表すアイコン
                        icon = 'fas fa-cannabis',
                        -- この品種のアイコンの色（なしの場合は '' のままにします）
                        iconColor = ''
                    },
                    ['banana_kush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        add_joint = 1,
                        duration = 2500,
                        max_roll = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['blue_dream'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        add_joint = 1,
                        duration = 2500,
                        max_roll = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['purple_haze'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        add_joint = 1,
                        duration = 2500,
                        max_roll = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['orange_crush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        add_joint = 1,
                        duration = 2500,
                        max_roll = 15,
                        exp = { min = 1, max = 3 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['cosmic_kush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_rolling_paper', quantity = 1 },
                        add_joint = 1,
                        duration = 2500,
                        max_roll = 15,
                        exp = { min = 1, max = 4 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    }
                }
            },
            -- 必要に応じてここにテーブルを追加または削除してください
            -- 上記と同じフォーマットに従うようにしてください
            -- 番号を正しく増やしてください。[2]、[3]など
        }
    },
    bagging = {
        -- ここで袋詰めテーブルを追加、削除、管理します
        tables = {
            [1] = {
                -- スクリプトでこのテーブルをスポーンする必要がありますか？
                -- これらの座標にすでに存在する場合は、falseのままにしてください
                spawn = false,
                -- spawn = true の場合、どのモデルのテーブルですか？
                model = 'bkr_prop_weed_table_01a',
                -- この袋詰めテーブルの座標
                coords = vec4(1033.7921, -3206.0498, -39.1231, 85.0345),
                -- このテーブルを使用するために必要なプレイヤーレベル
                level = 1,
                -- ここで袋詰めできる品種の種類
                buds = {
                    -- ['uniqueStrainIdentifier']: 上記の Config.Strains からの一意の品種識別子
                    -- ここで袋詰めされる品種を無効にするには、リストから削除するだけです
                    ['plain_jane'] = {
                        -- このつぼみを袋詰めするとき、袋ごとにつぼみをいくつ削除しますか？
                        remove_bud = 1,
                        -- このつぼみを袋詰めするとき、追加のアイテムが必要ですか？
                        -- デフォルトでは、必要なアイテムは「空の袋」で、袋ごとに1つ削除されます
                        -- 追加のアイテムを必要としない場合は、remove_item = nil に設定してください
                        -- item: アイテムのスポーン名 & quantity: 袋ごとに削除する量
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        -- このつぼみを袋詰めするとき、袋詰めごとにいくつの袋を報酬として与えますか？
                        add_bag = 1,
                        -- 1回の袋詰めアクションにはどのくらい時間がかかりますか（ミリ秒単位）？
                        duration = 2500,
                        -- 最初からやり直す前に、一度に袋詰めできる最大量
                        -- これにより、このアクションを放置可能にするかどうかを設定できます
                        max_bag = 15,
                        -- 袋ごとにプレイヤーに報酬として与えられる経験値の量
                        exp = { min = 1, max = 1 },
                        -- メニューでこの品種を表すアイコン
                        icon = 'fas fa-cannabis',
                        -- この品種のアイコンの色（なしの場合は '' のままにします）
                        iconColor = ''
                    },
                    ['banana_kush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        add_bag = 1,
                        duration = 2500,
                        max_bag = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['blue_dream'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        add_bag = 1,
                        duration = 2500,
                        max_bag = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['purple_haze'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        add_bag = 1,
                        duration = 2500,
                        max_bag = 15,
                        exp = { min = 1, max = 2 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['orange_crush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        add_bag = 1,
                        duration = 2500,
                        max_bag = 15,
                        exp = { min = 1, max = 3 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    },
                    ['cosmic_kush'] = {
                        remove_bud = 1,
                        remove_item = { item = 'ls_empty_baggy', quantity = 1 },
                        add_bag = 1,
                        duration = 2500,
                        max_bag = 15,
                        exp = { min = 1, max = 4 },
                        icon = 'fas fa-cannabis',
                        iconColor = ''
                    }
                }
            },
            -- 必要に応じてここにテーブルを追加または削除してください
            -- 上記と同じフォーマットに従うようにしてください
            -- 番号を正しく増やしてください。[2]、[3]など
        }
    }
}

----------------------------------------------
--      🔄 ポータブルテーブルをカスタマイズ
----------------------------------------------

Config.Table = {
    -- ポータブルウィードテーブルを有効にしますか？
    -- プレイヤーはこれらのテーブルをどこにでも配置して使用できます
    -- ウィードのロールと袋詰め用 - これらは永続的です（保存されます）
    -- サーバーの再起動、ログアウトなどを通して
    enable = true,
    -- ポータブルテーブルのアイテムスポーン名
    item = 'ls_weed_table',
    -- ポータブルテーブルのプロップ/モデル名
    -- その他のモデル: https://forge.plebmasters.de/objects
    model = 'bkr_prop_weed_table_01a',
    -- 他の人が自分のテーブルを拾うこと（つまり、盗むこと）を防ぐために
    -- ポータブルテーブルを地面にロックしたい場合は、trueに設定してください
    -- 警察は常にロックを無視してテーブルを押収できます
    locked = false,
    -- 各プレイヤーが同時に配置できるテーブルの数を制限しますか？
    -- locked = false の場合、自分のテーブルの制限が1つであっても
    -- 他の人のテーブルを使用することは可能です
    limit = 1,
    -- ポータブルウィードテーブルを使用するために必要なプレイヤーレベルは？
    -- このオプションはテーブルを使用する機能にのみ影響し、
    -- ロール/袋詰めできるものへの影響はありません。それは Config.Strains から来ます。
    level = 1,
    -- 必要に応じて、テーブルを配置する際の衝突チェック機能を無効に設定できます。
    -- true のままにすることをお勧めしますが、必要に応じて無効にできます
    collisions = true,
    -- ポータブルテーブルで許可するアクションを選択してください
    allow = { rolling = true, bagging = true },
    -- テーブルを配置する前に確認するさまざまな要件
    requirements = {
        -- 警察要件
        police = {
            -- テーブルを配置および使用するには警察がオンラインである必要がありますか？
            enable = false,
            -- enable = true の場合、何人オンラインである必要がありますか？
            count = 3,
        }
    },
    -- 以下のエリアでのテーブルの配置を制限します
    restricted = {
        [1] = { coords = vec3(0, 0, 0), radius = 25 },
        -- 必要に応じて制限エリアをここに追加してください
        -- 番号を正しく増やしてください。[2]、[3]など
    },
    -- ポータブルテーブルでロールまたは袋詰めできる品種の種類
    buds = {
        -- ['uniqueStrainIdentifier']: 上記の Config.Strains からの一意の品種識別子
        -- ここでロールまたは袋詰めされる品種を無効にするには、リストから削除するだけです
        ['plain_jane'] = {
            -- このつぼみをロールまたは袋詰めするとき、アクションごとにつぼみをいくつ削除しますか？
            remove_bud = { rolling = 1, bagging = 1},
            -- このつぼみをロールまたは袋詰めするとき、追加のアイテムが必要ですか？
            -- 追加のアイテムを必要としない場合は、remove_item = nil に設定してください
            -- item: アイテムのスポーン名 & quantity: ロールまたは袋詰めごとに削除する量
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            -- このつぼみをロールまたは袋詰めするとき、ロール/袋詰めごとにいくつのジョイント/袋を報酬として与えますか？
            add_item = { rolling = 1, bagging = 1 },
            -- 1回のロール/袋詰めアクションにはどのくらい時間がかかりますか（ミリ秒単位）？
            duration = { rolling = 2500, bagging = 2500 },
            -- 最初からやり直す前に、一度にロールまたは袋詰めできる最大量
            -- これにより、このアクションを放置可能にするかどうかを設定できます
            max_actions = { rolling = 15, bagging = 15 },
            -- ロールまたは袋詰めごとにプレイヤーに報酬として与えられる経験値の量
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            -- メニューでこの品種を表すアイコン
            icon = 'fas fa-cannabis',
            -- この品種のアイコンの色（なしの場合は '' のままにします）
            iconColor = ''
        },
        ['banana_kush'] = {
            remove_bud = { rolling = 1, bagging = 1},
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            add_item = { rolling = 1, bagging = 1 },
            duration = { rolling = 2500, bagging = 2500 },
            max_actions = { rolling = 15, bagging = 15 },
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            icon = 'fas fa-cannabis',
            iconColor = ''
        },
        ['blue_dream'] = {
            remove_bud = { rolling = 1, bagging = 1},
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            add_item = { rolling = 1, bagging = 1 },
            duration = { rolling = 2500, bagging = 2500 },
            max_actions = { rolling = 15, bagging = 15 },
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            icon = 'fas fa-cannabis',
            iconColor = ''
        },
        ['purple_haze'] = {
            remove_bud = { rolling = 1, bagging = 1},
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            add_item = { rolling = 1, bagging = 1 },
            duration = { rolling = 2500, bagging = 2500 },
            max_actions = { rolling = 15, bagging = 15 },
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            icon = 'fas fa-cannabis',
            iconColor = ''
        },
        ['orange_crush'] = {
            remove_bud = { rolling = 1, bagging = 1},
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            add_item = { rolling = 1, bagging = 1 },
            duration = { rolling = 2500, bagging = 2500 },
            max_actions = { rolling = 15, bagging = 15 },
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            icon = 'fas fa-cannabis',
            iconColor = ''
        },
        ['cosmic_kush'] = {
            remove_bud = { rolling = 1, bagging = 1},
            remove_item = {
                rolling = { item = 'ls_rolling_paper', quantity = 1 },
                bagging = { item = 'ls_empty_baggy', quantity = 1 }
            },
            add_item = { rolling = 1, bagging = 1 },
            duration = { rolling = 2500, bagging = 2500 },
            max_actions = { rolling = 15, bagging = 15 },
            exp = {
                rolling = { min = 1, max = 1 },
                bagging = { min = 1, max = 1 }
            },
            icon = 'fas fa-cannabis',
            iconColor = ''
        }
    }
}

----------------------------------------------
--       🚬 ジョイント効果のカスタマイズ
----------------------------------------------

Config.Joints = {
    -- ['item_spawn_name'] ジョイントのアイテム名
    ['ls_plain_jane_joint'] = {
        -- このジョイントを使用/喫煙可能にしますか？
        usable = true,
        -- このジョイントを喫煙するために必要なプレイヤーレベルは？
        level = 1,
        -- このジョイントがプレイヤーに与える効果を管理します
        effects = {
            -- enable: この効果を有効にしますか？
            -- amount: 有効な場合、どれだけの体力を回復しますか？
            health = { enable = true, amount = 50 },
            -- enable: この効果を有効にしますか？
            -- amount: 有効な場合、どれだけのアーマーを追加しますか？
            -- max: 複数回使用する場合、プレイヤーが持てる最大アーマーは？
            armor = { enable = true, amount = 20, max = 100 },
            -- enable: この効果を有効にしますか？
            -- multiplier: 有効な場合、プレイヤーの速度をどれだけ上げますか？ (最大 1.49)
            -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒）有効にしますか
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            -- enable: この効果を有効にしますか？
            -- effect: 時間サイクル修飾子 (詳細は https://forge.plebmasters.de/timecyclemods)
            -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒）有効にしますか
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            -- enable: この効果を有効にしますか？
            -- clipset: 適用する移動クリップセット (詳細は https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json)
            -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒）有効にしますか
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            -- enable: この効果を有効にしますか？
            -- name: カメラの揺れの名前 (詳細は https://docs.fivem.net/natives/?_0xFD55E49555E017CF)
            -- intensity: カメラの揺れの強さ (低いほど弱く、高いほど強い)
            -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒）有効にしますか
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    },
    ['ls_banana_kush_joint'] = {
        usable = true,
        level = 1,
        effects = {
            health = { enable = true, amount = 50 },
            armor = { enable = true, amount = 20, max = 100 },
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    },
    ['ls_blue_dream_joint'] = {
        usable = true,
        level = 1,
        effects = {
            health = { enable = true, amount = 50 },
            armor = { enable = true, amount = 20, max = 100 },
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    },
    ['ls_purple_haze_joint'] = {
        usable = true,
        level = 1,
        effects = {
            health = { enable = true, amount = 50 },
            armor = { enable = true, amount = 20, max = 100 },
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    },
    ['ls_orange_crush_joint'] = {
        usable = true,
        level = 1,
        effects = {
            health = { enable = true, amount = 50 },
            armor = { enable = true, amount = 20, max = 100 },
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    },
    ['ls_cosmic_kush_joint'] = {
        usable = true,
        level = 1,
        effects = {
            health = { enable = true, amount = 50 },
            armor = { enable = true, amount = 20, max = 100 },
            speed = { enable = false, multiplier = 1.49, duration = 30000 },
            screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
            walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
            shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
        }
    }
}

----------------------------------------------
--    📍 配置コントロールのカスタマイズ
----------------------------------------------

Config.Controls = {
    -- プロップ配置システムのオブジェクト移動速度
    speed = 0.025,
    -- 配置中にオブジェクトを移動するためのコントロール
    movement = {
        rotateLeft = 44, -- Q
        rotateRight = 38, -- E
        moveForward = 32, -- W
        moveBackward = 33, -- S
        moveLeft = 34, -- A
        moveRight = 35, -- D
        cancel = 73, -- X
        confirm = 22 -- Space
    },
    -- 配置中に無効化されるコントロール
    disable = {
        30, -- 左右移動を無効化
        31, -- 前後移動を無効化
        44, -- Q (しゃがみ) を無効化
        22, -- Spacebar (ジャンプ) を無効化
        200, -- Escape を無効化
        -- 必要に応じて追加
    }
}

----------------------------------------------
--    💃 アニメーションとプロップのカスタマイズ
----------------------------------------------

Config.Animations = {
    placingPot = { -- 植物の配置開始時に使用されるアニメーション
        part1 = { -- プレイヤーが最初に種を「使用」したときに再生
            label = 'Placing pot..',
            duration = 1200,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'pickup_object', clip = 'pickup_low' },
            prop = { }
        },
        part2 = { -- part1の後に再生され、配置の確定/キャンセルまで継続
            anim = { dict = 'missheist_jewelleadinout', clip = 'jh_int_outro_loop_a', flag = 51 }
        }
    },
    watering = { -- 植物に水をやるときに使用されるアニメーション
        part1 = { -- プレイヤーが植物に水をやるときに再生
            label = 'Watering..',
            duration = 4000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'weapon@w_sp_jerrycan', clip = 'fire', flag = 1 },
            prop = { }
        },
        part2 = { -- part1と同時に再生され、プロップと効果を処理
            prop = { model = 'prop_wateringcan', bone = 28422, pos = vec3(0.4, 0.125, -0.05), rot = vec3(90.0, 180.0, 0.0) },
            fx = { dict = 'core', name = 'ent_sht_water', offset = vec3(0.35, 0.0, 0.25), rot = vec3(0.0, 0.0, 0.0), scale = 2.0 }
        }
    },
    fertilizing = { -- 植物に肥料を与えるときに使用されるアニメーション
        part1 = { -- プレイヤーが植物に肥料を与えるときに再生
            label = 'Fertilizing..',
            duration = 4000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { dict = 'weapon@w_sp_jerrycan', clip = 'fire', flag = 1 },
            prop = { }
        },
        part2 = { -- part1と同時に再生され、プロップと効果を処理
            prop = { model = 'p_cs_sack_01_s', bone = 28422, pos = vec3(0.3239, -0.0328, 0.1253), rot = vec3(49.4678, -18.1732, -79.2577) },
            fx = { dict = 'scr_fbi3', name = 'scr_fbi3_dirty_water_pour', offset = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0), scale = 2.0 }
        }
    },
    destroying = { -- 植物を削除するときに使用されるアニメーション
        label = 'Destroying..',
        duration = 4000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
        prop = { }
    },
    harvesting = { -- 植物を収穫するときに使用されるアニメーション
        label = 'Harvesting..',
        duration = 4000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
        prop = { }
    },
    searching = { -- 植物を検索するときに使用されるアニメーション
        label = 'Searching..',
        duration = 6000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = false,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'amb@prop_human_bum_bin@base', clip = 'base' },
        prop = { }
    },
    rolling = { -- ジョイントをロールするときに使用されるアニメーション
        label = 'Rolling..',
        duration = nil,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
        prop = { }
    },
    bagging = { -- つぼみを袋詰めするときに使用されるアニメーション
        label = 'Bagging..',
        duration = nil,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { car = true, move = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
        prop = { }
    },
    smoking = { -- ジョイントを喫煙するときに使用されるアニメーション
        label = 'Smoking..',
        duration = 10000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { car = false, move = false, combat = true },
        anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c' },
        prop = { model = 'p_cs_joint_01', bone = 28422, pos = vec3(0.0, 0.0, 0.0), rot = vec3(-0.07, 0.0, 1.0) },
    },
    place_table = { -- テーブルを配置するときに使用されるアニメーション
        label = 'Placing table..',
        duration = 1500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
        prop = {}
    },
    pickup_table = { -- テーブルを拾うときに使用されるアニメーション
        label = 'Picking up table..',
        duration = 1500,

        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
        prop = {}
    },
}