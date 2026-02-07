return {

    -- ⚠️ 警告: このスクリプトで作業するときは、決して "restart lation_chopshop" を行わないでください
    -- ⚠️ これは問題やデータ損失などを引き起こす可能性があります！ スクリプトは次のように再起動する必要があります:
    -- ⚠️ "stop lation_chopshop" ..数秒待つ.. その後 "ensure lation_chopshop"

    ----------------------------------------------
    --        🛠️ 基本設定
    ----------------------------------------------

    setup = {
        -- 必要がある場合、サポートの指示がある場合、または何をしているか分かっている場合のみ使用してください
        -- 注意: デバッグ機能を有効にすると、resmon が大幅に増加します
        -- 本番環境では常に無効にする必要があります
        debug = false,
        -- 以下に対話システムを設定します
        -- 利用可能なオプション: 'ox_target', 'qb-target', 'interact' & 'custom'
        -- 'custom' は client/functions.lua に追加する必要があります
        interact = 'ox_target',
        -- 以下に通知システムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify' & 'custom'
        -- 'custom' は client/functions.lua に追加する必要があります
        notify = 'lation_ui',
        -- 以下に進行状況バーシステムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'qbcore' & 'custom'
        -- 'custom' は client/functions.lua に追加する必要があります
        -- カスタム進行状況バーはアニメーションもサポートする必要があります
        progress = 'lation_ui',
        -- 以下にミニゲーム（スキルチェック）システムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        minigame = 'lation_ui',
        -- Lith Studios Bolt Minigame を使用しますか？
        -- これはホイールを取り外すための無料のインタラクティブなミニゲームです
        -- 詳細はこちら: https://lith.store/package/6174416
        ls_bolt_minigame = false,
        -- 以下にコンテキストメニューシステムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        menu = 'lation_ui',
        -- 以下にアラートと入力ダイアログシステムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        dialogs = 'lation_ui',
        -- グループメニューでプレイヤー名を非表示にしますか？
        -- true の場合、代わりにプレイヤー ID が表示されます
        -- false の場合、通常どおりキャラクター名が表示されます
        hideNames = false,
        -- アップデートが利用可能な場合、サーバーコンソールで通知を受け取りますか？
        -- 受信する場合は true、しない場合は false
        version = true,
        -- 以下にすべての警察のジョブを入力してください
        police = { 'police', 'sheriff' }
    },

    ----------------------------------------------
    --       📍 アクティビティ開始設定
    ----------------------------------------------

    start = {
        -- チョップ（解体）を開始するためのメインペッドをスポーンする場所
        -- 開始ペッドを無効にする場合は、coords = false に設定してください
        coords = vec4(-169.0171, -1352.3877, 29.9817, 91.8764),
        -- 使用されるペッドモデル
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_bevhills_01',
        -- ペッドに割り当てられたシナリオ（またはシナリオなしの場合は scenario = false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_CLIPBOARD',
        -- ここでペッドが利用可能な時間を制限できます
        -- デフォルトでは、このペッドは24時間365日利用可能です
        -- Min はペッドが利用可能になる最も早い時間（24時間形式）
        -- Max はペッドが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、昼間のみ利用可能にする場合は、min = 6 & max = 21 に設定します
        hours = { min = 0, max = 24 },
        -- チョップジョブを開始するには何人の警察がオンラインである必要がありますか？
        police = 0,
        -- ジョブをリクエストしてから車両が割り当てられるまでの時間（秒単位）
        -- クールダウンを無効にして即座に車両を割り当てるには、min & max を 0 に設定します
        cooldown = { min = 5, max = 25 },
        -- チョップジョブが完了したとき、グループオーナーに「チョップを続けますか？」という
        -- ダイアログを表示しますか？ はいの場合は true、いいえの場合は false
        continue = true,
        -- イージーモードは、近くの一致する車両モデルを強調表示するオプションモードです
        -- Radius は、車両を検索および強調表示するプレイヤーからの距離です
        -- 424 は FiveM OneSync の最大「フォーカスゾーン」であり、これより高い値は機能しません
        easyMode = { enable = false, radius = 424 },
        -- このオプションは、メインメニューからチョップアクティビティを開始する機能を削除します
        -- これは、チョップジョブを開始するために独自のカスタムメソッドを使用する場合に便利です
        -- カスタムメソッドを実装する予定がない場合は、このオプションを true に設定しないでください
        exportOnly = false,
        -- プレイヤーが所有車両をチョップできるようにしますか？
        -- true の場合、プレイヤーは所有車両を含むすべての車両をチョップできます
        -- false の場合、プレイヤーは非所有車両のみをチョップできます
        allowOwned = true,
        -- ⛔ 危険: これは破壊的な設定です
        -- ⛔ 危険: deleteOwned は allowOwned = true の場合にのみ使用されます
        -- ⛔ 危険: これはチョップされたときに所有車両を削除（完全に削除）します
        -- ℹ️ 情報: 削除された車両は "deleted_vehicles.sql" ファイルに保存されます
        -- ℹ️ 情報: これは、必要に応じて復元するために使用される単なるバックアップ安全対策です
        deleteOwned = false
    },

    ----------------------------------------------
    --       📈 XPシステムのカスタマイズ
    ----------------------------------------------

    experience = {
        -- これら [括弧] 内の数字はレベルです
        -- = の後の数字は、そのレベルに到達するために必要な経験値です
        -- レベルは *常に* レベル 1 から 0 経験値で始まるようにしてください
        [1] = 0,
        [2] = 5000,
        [3] = 10000,
        [4] = 25000,
        [5] = 75000,
        -- 必要に応じてレベルを追加または削除できます
    },

    ----------------------------------------------
    --       🚗 チョップ車両のカスタマイズ
    ----------------------------------------------

    vehicles = {
        "alpha", "asea", "baller", "banshee", "bjxl", "buccaneer", "bullet", "carbonizzare", "cavalcade2", "coquette",
        "dubsta", "dukes", "emperor", "exemplar", "f620", "felon", "felon2", "furoregt", "futo", "glendale",
        "huntley", "ingot", "intruder", "jackal", "jester", "manana", "massacro", "ninef", "patriot", "peyote", "phoenix",
        "picador", "premier", "primo", "radi", "rapidgt", "rapidgt2", "regina", "rhapsody", "rocoto", "sabregt", "schafter2",
        "schwarzer", "sentinel", "stanier", "stratum", "sultan", "superd", "surano", "tornado", "vigero", "voltic"
    },

    ----------------------------------------------
    --        🔨 チョップ（解体）のカスタマイズ
    ----------------------------------------------

    chopping = {
        wheels = {
            [0] = { -- 左前タイヤ
                difficulty = { 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 10000
            },
            [1] = { -- 右前タイヤ
                difficulty = { 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 10000
            },
            [2] = { -- 左後タイヤ
                difficulty = { 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 10000
            },
            [3] = { -- 右後タイヤ
                difficulty = { 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 10000
            }
        },
        doors = {
            [0] = { -- 運転席ドア
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 12500
            },
            [1] = { -- 助手席ドア
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 12500
            },
            [2] = { -- 後部運転席側ドア
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 12500
            },
            [3] = { -- 後部助手席側ドア
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 12500
            },
            [4] = { -- ボンネット
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 15000
            },
            [5] = { -- トランク
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'E' },
                duration = 15000
            },
        },
        frame = { -- フレーム/シャーシ
            difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy', 'easy' },
            inputs = { 'E' },
            duration = 25000
        }
    },

    ----------------------------------------------
    --       💰 チョップ報酬のカスタマイズ
    ----------------------------------------------

    rewards = {
        -- これら [括弧] 内の数字はプレイヤーレベルです
        [1] = {
            -- チョップされた各パーツに対して報酬として与えられる "ls_auto_parts" の最小/最大量
            wheels = { min = 1, max = 3 },
            doors = { min = 2, max = 4 },
            frame = { min = 5, max = 10 },
            -- チョップジョブを完了したときに報酬として与えられる XP の最小/最大量
            xp = { min = 25, max = 35 },
            -- このレベルでパーツチョップ時間が短縮される割合
            speed = 0
        },
        [2] = {
            wheels = { min = 2, max = 4 },
            doors = { min = 3, max = 5 },
            frame = { min = 6, max = 12 },
            xp = { min = 35, max = 50 },
            speed = 15
        },
        [3] = {
            wheels = { min = 3, max = 5 },
            doors = { min = 4, max = 6 },
            frame = { min = 7, max = 14 },
            xp = { min = 50, max = 75 },
            speed = 30
        },
        [4] = {
            wheels = { min = 4, max = 6 },
            doors = { min = 5, max = 7 },
            frame = { min = 8, max = 16 },
            xp = { min = 75, max = 100 },
            speed = 45
        },
        [5] = {
            wheels = { min = 5, max = 7 },
            doors = { min = 6, max = 8 },
            frame = { min = 9, max = 18 },
            xp = { min = 100, max = 150 },
            speed = 60
        }
    },

    ----------------------------------------------
    --          🗺️ チョップゾーンの割り当て
    ----------------------------------------------

    zones = {
        vec3(1565.1211, -2161.1277, 77.5340),
        vec3(1134.0985, -793.7753, 57.5917),
        vec3(-84.7814, -2225.9697, 7.8117),
        vec3(-467.7876, -1678.4623, 19.0395),
        vec3(1596.7920, -1709.7660, 88.1285),
        vec3(833.9869, -1405.5132, 26.1511),
        vec3(970.2102, -1632.1747, 30.1107),
        vec3(248.3347, 380.5432, 105.5951),
        vec3(-69.7967, 83.2294, 71.5020),
        vec3(-1315.3870, -1257.1395, 4.5771),
        vec3(-443.0953, -2282.7065, 7.6081),
        vec3(-1597.3135, -1008.8568, 7.6894),
        -- 必要に応じて場所を追加または削除できます
    },

    ----------------------------------------------
    --      🔨 チョップショップアイテムのカスタマイズ
    ----------------------------------------------

    items = {
        -- 車両パーツがチョップされたときに報酬として与えられるメインアイテム
        auto_parts = 'ls_auto_parts',
        -- 車両からドア/フレームを取り外すために使用されるトーチアイテム
        torch = {
            -- アイテムのスポーン名
            item = 'ls_torch',
            -- チョップするにはプレイヤーがトーチを持っている必要がありますか？
            require = true,
            -- このアイテムは使用ごとに削除されますか？
            remove = false,
            -- スキルチェック失敗時にこのアイテムが壊れる確率（パーセンテージ）
            -- 破損の可能性を無効にするには、chance を 0 に設定します
            break_chance = 20
        },
        lug_wrench = {
            -- アイテムのスポーン名
            item = 'ls_lug_wrench',
            -- チョップするにはプレイヤーがラグレンチを持っている必要がありますか？
            require = true,
            -- このアイテムは使用ごとに削除されますか？
            remove = false,
            -- スキルチェック失敗時にこのアイテムが壊れる確率（パーセンテージ）
            -- 破損の可能性を無効にするには、chance を 0 に設定します
            break_chance = 20
        },
        vehicle_finder = {
            -- アイテムのスポーン名
            item = 'ls_vehicle_finder',
            -- このアイテムは使用ごとに削除されますか？
            remove = false,
            -- 検出器が車両を検索する範囲
            -- 424 は FiveM OneSync の最大「フォーカスゾーン」です
            -- これより高い値は機能しません
            radius = 424,
            -- 車両ファインダーが持続する時間（秒単位）
            duration = 60,
            -- ブリップ関連の設定をカスタマイズ
            blips = {
                -- ブリップのスプライトID
                sprite = 225,
                -- ブリップの色ID
                color = 1,
                -- ブリップのスケール
                scale = 0.8,
                -- ブリップ名
                name = 'Discovered Vehicle',
            }
        }
    },

    ----------------------------------------------
    --          🛒 ショップのカスタマイズ
    ----------------------------------------------

    shops = {
        -- ⚠️ 以下のショップは、有効にするとメインのチョップショップメニューに追加されます！
        -- スワップショップは、プレイヤーが ls_auto_parts を交換できるショップです
        -- 材料、違法品など、好きなアイテムと交換できます
        swap = {
            -- 必要に応じてこのショップを無効にできます
            enable = true,
            -- このショップは支払いとしてアイテムのみを受け入れます
            -- 現金/銀行などの従来の方法は使用できません
            account = 'ls_auto_parts',
            -- このショップで交換可能なアイテム
            items = {
                -- item: アイテムのスポーン名
                -- price: ls_auto_parts でのアイテムの価格
                -- quantity: 価格に対して与えられるアイテムの量
                -- icon: アイテムのアイコン
                -- level: アイテムを購入するためのオプションのレベル要件
                -- metadata: アイテムのオプションのメタデータ
                [1] = { item = 'plastic', price = 1, quantity = 1, icon = 'recycle' },
                [2] = { item = 'aluminium', price = 1, quantity = 1, icon = 'recycle' },
                [3] = { item = 'copper', price = 1, quantity = 1, icon = 'recycle' },
                -- 必要に応じてアイテムを追加または削除してください
            }
        },
        tool = {
            -- 必要に応じてこのショップを無効にできます
            enable = true,
            -- ここで購入するときに現金または銀行を使用しますか？
            account = 'cash',
            -- このショップで販売されているアイテム
            items = {
                -- item: アイテムのスポーン名
                -- price: アイテムの価格
                -- icon: アイテムのアイコン
                -- level: アイテムを購入するためのオプションのレベル要件
                -- metadata: アイテムのオプションのメタデータ
                [1] = { item = 'ls_torch', price = 1250, icon = 'fire-flame-curved' },
                [2] = { item = 'ls_lug_wrench', price = 750, icon = 'wrench' },
                [3] = { item = 'ls_vehicle_finder', price = 4500, icon = 'satellite-dish' },
                -- 必要に応じてアイテムを追加または削除してください
            }
        }
    },

}