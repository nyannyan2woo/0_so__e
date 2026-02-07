Config = {} -- Do not touch

-- ⚠️ 警告: このスクリプトを操作するときは、決して "restart lation_meth" を行わないでください
-- ⚠️ これは、問題、データの損失などを引き起こします！次のようにスクリプトを再起動する必要があります:
-- "stop lation_meth" ..数秒待ちます.. その後 "ensure lation_meth"

----------------------------------------------
--        🛠️ 基本設定を以下で行います
----------------------------------------------

Config.Setup = {
    -- 必要な場合にのみ使用し、サポートの指示があった場合、または何をしているかわかる場合に使用してください
    -- 注意: デバッグ機能を有効にすると、resmonが大幅に増加する可能性があります
    -- 特に必要な場合を除き、本番環境では常に無効にする必要があります
    debug = false,
    -- 以下のインタラクションシステムを設定してください
    -- 利用可能なオプション: 'ox_target', 'qb-target', 'interact', 'textui' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    interact = 'textui',
    -- 通知システム - オプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    notify = 'lation_ui',
    -- 以下の進行状況バーシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'qbcore' & 'custom'
    -- 'custom' は client/functions.lua に追加する必要があります
    -- カスタム進行状況バーもアニメーションをサポートしている必要があります
    progress = 'lation_ui',
    -- 以下のミニゲーム（スキルチェック）システムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
    minigame = 'lation_ui',
    -- 以下のコンテキストメニューを選択してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
    menu = 'lation_ui',
    -- 以下のアラート＆入力ダイアログシステムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
    dialogs = 'lation_ui',
    -- 以下の警察ディスパッチシステムを設定してください
    -- 利用可能なオプション: cd_dispatch, ps-dispatch, qs-dispatch, core_dispatch,
    -- rcore_dispatch, aty_dispatch, op-dispatch, origen_police, emergencydispatch & 'custom'
    -- 'custom' は client/functions.lua に手動で追加する必要があります
    dispatch = 'none',
    -- 更新が利用可能な場合にサーバーコンソール経由で通知を受け取りますか？
    -- はいの場合は true、いいえの場合は false
    version = true,
    -- 以下は interact = 'textui' の場合のみ使用されます
    -- これはインタラクションに使用されるキーになります。デフォルトは E です
    -- その他のオプションはこちら: https://docs.fivem.net/docs/game-references/controls/
    control = 38,
    -- 以下の 'request' オプションは、クライアントがモデル/アニメーションのロードを待機する時間です
    -- 何をしているかわかる場合や、サポートメンバーの指示がない限り編集しないでください
    request = 10000,
    -- Render は、プロップがスポーンして表示されるためにプレイヤーがテーブルに近づく必要がある
    -- ユニット数（距離）です
    -- （この数/距離の外にある場合、プロップは必要になるまで削除されます）
    render = 100
}

----------------------------------------------
--      ⚙️ テーブル設定をセットアップ
----------------------------------------------

Config.Table = {
    -- メステーブルのアイテムスポーン名
    item = 'ls_meth_table',
    -- テーブルプロップとして使用されるモデル/オブジェクト
    -- その他のモデル: https://forge.plebmasters.de/objects
    model = 'bkr_prop_meth_table01a',
    -- 'show_info' は、プレイヤーの経験値/レベルデータや
    -- 完全な統計メニュー（総生産量など）などの情報を表示します。
    -- テーブルメニューにその情報を表示しますか？ はいの場合は true、いいえの場合は false
    show_info = true,
    -- テーブルを所有者のみがアクセスできるようにロックしますか？
    -- true の場合、テーブルを配置したプレイヤーのみが対話できます
    -- false の場合、誰でも対話し、ピックアップ/取得できます
    locked = false,
    -- 1人のプレイヤーが配置できるテーブルの数はいくつですか？
    -- locked = false の場合、自分の配置制限が1であっても
    -- 他の人のテーブルを使用できます
    limit = 1,
    -- 必要に応じて、テーブルを配置する際の衝突チェック機能を無効にできます
    -- true のままにすることをお勧めしますが、必要に応じて無効にできます
    collisions = true,
    -- 各プレイヤーの成分配合をユニークにしますか？ true の場合、すべてのプレイヤーは
    -- 100%純度の液体メスを得るために、アンモニア、ヨウ素、アセトンの異なる組み合わせを持ちます
    -- false の場合、全員同じになります
    -- （false の場合、Config.Cooking.table で値を編集できます）
    unique = true,
    -- 必要に応じて以下のテーブル配置キーをカスタマイズしてください
    -- ラベルをカスタマイズするには、strings.lua をご覧ください
    placement = {
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
        confirm = 22 -- Space
    },
    -- 以下のキーは配置中に無効になります
    disable = {
        30, -- 左右移動を無効化
        31, -- 前後移動を無効化
        44, -- Q (しゃがみ) を無効化
        22, -- Spacebar (ジャンプ) を無効化
        200, -- Escape を無効化
        -- 必要に応じてここに追加
    },
    -- これらのエリアでのテーブル配置を制限
    restricted = {
        [1] = { coords = vec3(0, 0, 0), radius = 25 },
        -- 必要に応じてここに追加、番号を適切に増やしてください
        -- [2], [3] など
    },
    -- テーブルミニミッションのカスタマイズ、有効化または無効化
    mission = {
        -- このミッションを有効にしますか？
        enable = true,
        -- enable = true の場合、ペッドはどこにいますか？
        location = vec4(2380.1011, 3348.9221, 47.9524, 42.2499),
        -- enable = true の場合、使用されるペッドモデル
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_eastsa_02',
        -- enable = true の場合、ペッドに割り当てられるシナリオ（シナリオなしの場合は nil/false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_SMOKING',
        -- ペッドが利用可能な時間をここで制限できます
        -- デフォルトでは、このペッドは24時間年中無休で利用可能です
        -- Min はショップが利用可能になる最も早い時間（24時間形式）
        -- Max はショップが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、ペッドを夜間のみ利用可能にしたい場合、min を 21、max を 5 に設定します
        hours = { min = 1, max = 24 },
        -- テーブルを受け取るためにプレイヤーに要求されるものをカスタマイズ
        require = {
            -- プレイヤーにペッドに特定のアイテムを与えることを要求しますか？
            -- false の場合、ペッドは交換なしでプレイヤーにテーブルを与えます
            enable = false,
            -- enable = true の場合、プレイヤーはペッドにどのアイテムを提供する必要がありますか？
            item = 'ls_purple_haze_joint',
            -- enable = true の場合、ペッドは上記のアイテムをいくつ要求しますか？
            quantity = 25
        },
        -- 必要に応じてブリップ設定を管理
        blip = {
            enable = true, -- このショップのブリップを有効または無効にする
            sprite = 280, -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- サイズ/スケール
            label = 'Suspicious Person' -- ラベル
        }
    }
}

----------------------------------------------
--    ⚒️ 倉庫の選択を作成
----------------------------------------------

Config.Warehouses = {
    [1] = {
        -- プレイヤーがこの倉庫に入る位置
        enter = vec3(97.0414, -2216.2891, 6.1912),
        -- 必要に応じて、出口でプレイヤーが向く方向
        heading = 91.0909,
        -- メニュー内のこの倉庫の説明
        description = 'Just off Dutch London Street in a secluded area',
        -- この倉庫に表示される画像
        -- 画像を追加するには、images フォルダーにドロップするだけです
        -- 正しい画像名とファイルタイプを使用するようにしてください
        image = 'nui://lation_meth/images/1.jpg',
        -- メニュー内のこの倉庫に使用されるアイコン
        icon = 'fas fa-warehouse',
        -- この倉庫の購入費用
        price = 850000,
        -- 特定の倉庫の利用可能性をプレイヤーレベルで制限できます
        -- レベル要件を設定すると、プレイヤーはこのレベル以上の場合にのみ
        -- この倉庫を購入するオプションが表示されます
        level = 1,
        -- 以下の "camrot" はカメラの回転用です。これは、良好なデフォルト角度のために
        -- 回転値を割り当てるために使用されます。倉庫の camrot を取得するには、
        -- 単に倉庫の入り口の前に立ち、ドアから離れた方向を向き、
        -- 上記のデバッグオプションを有効にして、ゲーム内でコマンド "getrot" を使用します
        camrot = vec3(-0.007, 0.000, 95.387),
        -- この倉庫で利用可能なスタッシュ/保管場所
        storage = {
            [1] = {
                -- ユニークなスタッシュ識別子（すべてのスタッシュはユニークである必要があります）
                id = 'warehouse1_stash1',
                -- インベントリに表示されるスタッシュのラベル
                label = 'Storage',
                -- このスタッシュが倉庫内にある位置
                coords = vec3(1004.357, -3194.030, -39.004),
                -- このスタッシュが持つスロット数
                slots = 25,
                -- このスタッシュが保持できる重量
                weight = 50000
            },
            -- 必要に応じてこの倉庫にスタッシュを追加します
            -- 番号を正しく増やすようにしてください [2], [3], など
            -- 重要: すべてのスタッシュIDがユニークであることを確認してください！
        }
    },
    [2] = {
        enter = vec3(870.6802, -2232.3596, 30.5526),
        heading = 178.582,
        description = 'On Dry Dock Street in an industrial and safe area',
        image = 'nui://lation_meth/images/2.png',
        icon = 'fas fa-warehouse',
        price = 625000,
        level = 1,
        camrot = vec3(0.000, 0.000, 178.022),
        storage = {
            [1] = {
                id = 'warehouse2_stash1',
                label = 'Storage',
                coords = vec3(1004.357, -3194.030, -39.004),
                slots = 25,
                weight = 75000
            },
        }
    },
    [3] = {
        enter = vec3(539.1398, -1945.9594, 24.9835),
        heading = 311.811,
        description = 'Found on Little Bighom Ave with ample space',
        image = 'nui://lation_meth/images/3.jpg',
        icon = 'fas fa-warehouse',
        price = 495000,
        level = 1,
        camrot = vec3(0.000, -0.000, -48.189),
        storage = {
            [1] = {
                id = 'warehouse3_stash1',
                label = 'Storage',
                coords = vec3(1004.357, -3194.030, -39.004),
                slots = 25,
                weight = 75000
            },
        }
    },
    [4] = {
        enter = vec3(-521.6411, -2197.1375, 6.3940),
        heading = 323.149,
        description = 'Nestled away in a big lot on Exceptionalists Way',
        image = 'nui://lation_meth/images/4.png',
        icon = 'fas fa-warehouse',
        price = 745000,
        level = 1,
        camrot = vec3(-0.000, -0.000, -41.379),
        storage = {
            [1] = {
                id = 'warehouse4_stash1',
                label = 'Storage',
                coords = vec3(1004.357, -3194.030, -39.004),
                slots = 25,
                weight = 75000
            },
        }
    },
    [5] = {
        enter = vec3(-559.4185, -1804.2628, 22.6093),
        heading = 334.9301,
        description = 'Tucked amidst South Arsenal Street and Mutiny Road',
        image = 'nui://lation_meth/images/5.jpg',
        icon = 'fas fa-warehouse',
        price = 695000,
        level = 1,
        camrot = vec3(0.000, -0.000, -25.424),
        storage = {
            [1] = {
                id = 'warehouse5_stash1',
                label = 'Storage',
                coords = vec3(1004.357, -3194.030, -39.004),
                slots = 25,
                weight = 75000
            },
        }
    },
    [6] = {
        enter = vec3(765.8325, -1895.5435, 29.2799),
        heading = 266.456,
        description = 'Sizable commercial opportunity on Popular Street',
        image = 'nui://lation_meth/images/6.png',
        icon = 'fas fa-warehouse',
        price = 565000,
        level = 1,
        camrot = vec3(0.000, -0.000, -94.283),
        storage = {
            [1] = {
                id = 'warehouse6_stash1',
                label = 'Storage',
                coords = vec3(1004.357, -3194.030, -39.004),
                slots = 25,
                weight = 75000
            },
        }
    },
    -- ここに必要なだけ倉庫を作成/追加/削除できます
    -- 3つの倉庫だけを利用可能にしたいですか？ このリストに3つだけ残します
    -- 50の倉庫を利用可能にしたい場合は、ここで50の倉庫を作成します
    -- プレイヤーがこれらのいずれかを購入すると、それは売却されるまで利用できなくなります
    -- 売却または譲渡されると、再び購入可能になります
}

----------------------------------------------
--     ⚙️ 倉庫設定をセットアップ
----------------------------------------------

Config.WarehouseSettings = {
    -- 倉庫ショップのカスタマイズ
    shop = {
        -- 利用可能なエクスポートを使用して別の方法（ドキュメントを参照）で倉庫ショップへのアクセスを
        -- 許可したい場合は、オプションでこのショップを無効にしてください
        enable = true,
        -- effective = true の場合、ショップはどこにありますか？
        location = vec4(-104.4130, 976.0926, 235.7569, 201.6008),
        -- enable = true の場合、使用されるペッドモデル
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_eastsa_02',
        -- enable = true の場合、ペッドに割り当てられるシナリオ（シナリオなしの場合は nil/false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_SMOKING',
        -- enable = true の場合、プレイヤーがショップにアクセスするにはどのレベルが必要ですか？
        requiredLevel = 1,
        -- ペッドが利用可能な時間をここで制限できます
        -- デフォルトでは、このペッドは24時間年中無休で利用可能です
        -- Min はショップが利用可能になる最も早い時間（24時間形式）
        -- Max はショップが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、ペッドを夜間のみ利用可能にしたい場合、min を 21、max を 5 に設定します
        hours = { min = 1, max = 24 },
        -- 必要に応じてブリップ設定を管理
        blip = {
            enable = true, -- このショップのブリップを有効または無効にする
            sprite = 280, -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- サイズ/スケール
            label = 'Warehouse Shop' -- ラベル
        }
    },
    -- 'show_info' は、プレイヤーの経験値/レベルデータや
    -- 完全な統計メニュー（総生産量など）などの情報を表示します。
    -- 施設管理メニューにその情報を表示しますか？ はいの場合は true、いいえの場合は false
    show_info = false,
    -- どこでどのお金の種類を使用するかをカスタマイズ
    -- 'purchase' は倉庫を購入するときに使用されるお金の種類
    -- 'upgrade' は倉庫をアップグレードするときに使用されるお金の種類
    -- 'sell' は倉庫の売却時に受け取るお金の種類
    -- 利用可能なオプションは 'cash', 'bank', 'black_money', 'markedbills'
    accounts = { purchase = 'cash', upgrade = 'cash', sell = 'bank' },
    -- プレイヤーが倉庫に入ると、ここにテレポートされます
    enter = vec4(997.0383, -3200.7112, -36.3937, 268.4943),
    -- プレイヤーが倉庫内にいるとき、ここが出口です
    exit = vec3(996.9076, -3200.6777, -36.3937),
    -- Manage は「施設管理」メニューにアクセスする場所です
    manage = vec3(1001.948, -3194.197, -39.193),
    -- Supplies は供給タンクに供給を追加する場所です
    supplies = vec3(1005.7509, -3200.3154, -38.5211),
    -- Inputs は混合値を割り当てる入力パネルがある場所です
    inputs = vec3(1006.5563, -3197.6746, -38.9932),
    -- Temperature は温度を割り当てる温度パネルがある場所です
    temperature = vec3(1014.6307, -3198.0842, -38.9931),
    -- Break down はトレイを小さな断片に分解する場所です
    break_down = vec3(1011.6850, -3194.8958, -38.9931),
    -- Bagging は箱からバッグへの袋詰めプロセスを開始する場所です
    bagging = vec3(1015.0386, -3194.9062, -38.9931),
    -- 1人のプレイヤーが一度に所有できる倉庫の数はいくつですか？
    limit = 1,
    -- 各プレイヤーの成分配合をユニークにしますか？ true の場合、すべてのプレイヤーは
    -- 100%純度の液体メスを得るために、アンモニア、ヨウ素、アセトンの異なる組み合わせを持ちます
    -- false の場合、全員同じになります
    -- （false の場合、Config.Cooking.warehouse で値を編集できます）
    unique = true,
    -- アップグレードは、倉庫を所有しているときにユーザーが購入できる利用可能なアップグレードです
    -- title: 「施設管理」メニューで使用されるタイトル
    -- description: 「施設管理」メニューで使用される説明
    -- icon: 「施設管理」メニューで使用されるアイコン
    -- iconColor: 「施設管理」メニューで使用されるアイコンの色
    -- price: プレイヤーにかかるアップグレード費用
    -- ttd: "time to delivery"、アップグレードが有効になるまでにかかる時間（分）
    upgrades = {
        ['orderEquipment'] = { -- このラベルを変更しないでください
            title = 'Order Manufacturing Equipment',
            description = 'Buy the necessary equipment to start manufacturing',
            icon = 'fas fa-boxes-stacked',
            iconColor = '',
            price = 35000,
            ttd = 120
        },
        ['upgradeEquipment'] = { -- このラベルを変更しないでください
            title = 'Upgrade Manufacturing Equipment',
            description = 'Upgrade your equipment to speed up manufacturing',
            icon = 'fas fa-circle-chevron-up',
            iconColor = '',
            price = 50000,
            ttd = 270
        },
        ['orderSecurity'] = { -- このラベルを変更しないでください
            title = 'Order Security Equipment',
            description = 'Buy the necessary equipment to secure the facility',
            icon = 'fas fa-shield-halved',
            iconColor = '',
            price = 10000,
            ttd = 75
        }
    },
    -- プレイヤーが倉庫を購入すると、これらがデフォルト値として割り当てられます
    -- デフォルトでは、倉庫は空（機器なし）、セキュリティなしで購入されます
    -- 供給レベル（アンモニア、ヨウ素、アセトンなど）もありません
    -- これを変更したい場合は、ここで変更できます
    -- style オプション: 'empty', 'basic', 'upgrade'
    -- security オプション: 'none', 'upgrade'
    -- supply レベル: 0-100
    defaults = { style = 'empty', security = 'none', ammonia = 0, iodine = 0, acetone = 0 },
    -- プレイヤーが倉庫の所有権を譲渡したい場合、確認ボックスが表示され
    -- 譲渡を続行することを確認するために、以下のテキストを入力する必要があります
    -- 必要に応じて、以下のテキストを編集してください
    transfer = 'transfer',
    -- 「州」へのすべての倉庫の売却を以下で設定できます
    -- これにより倉庫は再び販売可能になり、プレイヤーは所有権を失います
    -- コストに基づいて返金される金額を設定できます
    selling = {
        -- プレイヤーが「州」に倉庫を売却することを許可しますか？
        enable = true,
        -- プレイヤーが倉庫を売却したい場合、確認ボックスが表示され
        -- 売却を続行することを確認するために、以下のテキストを入力する必要があります
        -- 必要に応じて、以下のテキストを編集してください
        sell = 'confirm',
        -- プレイヤーが倉庫を売却したとき、いくら返金されるべきですか？
        -- これは上記で設定された "price" 変数に基づいた割合です
        -- たとえば、倉庫 [6] の費用が $500,000 で返金が 50 の場合
        -- つまり、$500,000 の 50%、つまり $250,000 を受け取ることになります
        refund = 50
    },
    -- 以下のすべてのデフォルトカメラ値を変更、更新、管理します
    cameras = {
        -- カメラがパン＆ズームする速度
        -- 速く動かすにはこの数値を増やし、遅くするには減らします
        speed = 0.15,
        -- プレイヤーが倉庫のセキュリティカメラを見るとき、これが使用されるタイムサイクル
        -- モディファイアです - 異なる効果が必要な場合は以下で更新してください！
        -- その他のタイムサイクル MOD: https://forge.plebmasters.de/timecyclemods
        timecycle = 'scanline_cam_cheap',
        -- カメラ表示に使用されるキーを設定したい、または必要がある場合は
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
        -- プレイヤーがカメラ表示モードにいる間、これらは終了するまで無効になるコントロールです
        -- (コントロールID: https://docs.fivem.net/docs/game-references/controls/)
        -- デフォルトで無効化されるコントロール: W, A, S, D, Q, E, B, 左/右移動, 上/下移動
        disable = { 32, 33, 34, 35, 44, 38, 29, 30, 31 },
        -- 以下の制限セクションは、最大カメラパン＆ズームを決定する制限要素です
        limits = {
            -- ピッチ制限（上/下）初期回転に対する相対値
            pitch = 30.0,
            -- ヨー制限（左/右）初期回転に対する相対値
            yaw = 45.0,
            -- FOV制限（低い値 = よりズームイン、高い値 = よりズームアウト）
            -- さらに「ズームイン」できるようにするには、min を低い値に設定します
            -- さらに「ズームアウト」できるようにするには、max を高い値に設定します
            fov = { min = 35.0, max = 80.0 }
        }
    },
    -- プレイヤーが倉庫を所有している場合、これはそのブリップ設定です
    blip = {
        name = 'Meth Warehouse',
        -- スプライトID: https://docs.fivem.net/docs/game-references/blips/
        sprite = 473,
        -- 色: https://docs.fivem.net/docs/game-references/blips/#blip-colors
        color = 0,
        -- マップ上のブリップのサイズ
        scale = 0.8
    }
}

----------------------------------------------
--        👮 警察オプションをセットアップ
----------------------------------------------

Config.Police = {
    -- 以下のすべての警察のジョブをリストしてください
    jobs = { 'police', 'sheriff' },
    -- メステーブルを配置/使用するために警察がオンラインであることを要求しますか？
    require = false,
    -- 上記で require = true の場合、何人オンラインである必要がありますか？
    count = 1,
    -- 上記で require = true の場合、プレイヤーはメステーブルを調理/使用できますか？
    -- はいの場合は can_interact を true に、いいえの場合は false に設定します
    can_interact = true,
    -- 以下の確率は、警察がエリア内の「強い有毒な臭い」について
    -- 「匿名の発信者」からのディスパッチ通知を受け取る確率（パーセンテージ）です。
    -- この確率は、メステーブルでの調理プロセスの各ステージ変更時にトリガーされます
    -- 警察へのディスパッチを無効にしたい場合は、単に chance を 0 に設定してください
    chance = 25,
    -- 以下はすべての倉庫の警察の手入れオプションです
    raids = {
        -- 警察に倉庫を手入れする能力を提供したいですか？
        -- false の場合、警察は倉庫に入るための特別な権限や手段を持たず
        -- 通常のプレイヤーと同じになります
        enabled = true,
        -- enabled = true の場合、以下はロックされた倉庫やピン付きのスタッシュに
        -- 侵入するためのスキルチェックの難易度と入力です
        skillcheck = {
            -- スキルチェックを好みにカスタマイズする方法の詳細については
            -- こちらのドキュメントをご覧ください: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
            entrance = {
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'W', 'A', 'S', 'D' }
            },
            stash = {
                difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy', 'easy' },
                inputs = { 'W', 'A', 'S', 'D' }
            }
        }
    }
}

----------------------------------------------
--      ☢️ 供給ランをカスタマイズ
----------------------------------------------

Config.Supplies = {
    -- 供給ランを開始する場所をカスタマイズ
    start = {
        -- 供給ランを有効または無効にする
        enabled = true,
        -- 開始ペッドがスポーンする場所をランダム化しますか？
        -- true の場合、スクリプトは座標テーブルからランダムな位置を選択します
        -- false の場合、ペッドはリストされたすべての位置にスポーンします
        randomize = false,
        -- 開始ペッドをどこにスポーンさせたいですか？
        coords = {
            vec4(-621.8478, 312.4206, 83.9294, 178.8072),
            -- 必要に応じて場所を追加または削除
        },
        -- どのペッドモデルを使用する必要がありますか？
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_eastsa_02',
        -- ペッドに割り当てられるシナリオ（シナリオなしの場合は nil/false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_SMOKING',
        -- ペッドが利用可能な時間をここで制限できます
        -- デフォルトでは、このペッドは24時間年中無休で利用可能です
        -- Min はショップが利用可能になる最も早い時間（24時間形式）
        -- Max はショップが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、ペッドを夜間のみ利用可能にしたい場合、min を 21、max を 5 に設定します
        hours = { min = 1, max = 24 },
        -- 供給ランを開始するためにプレイヤーに要求されるものをカスタマイズ
        require = {
            -- プレイヤーにペッドに特定のアイテムを与えることを要求しますか？
            -- false の場合、ペッドは要件なしでプレイヤーが開始できるようにします
            enable = false,
            -- enable = true の場合、プレイヤーはペッドにどのアイテムを提供する必要がありますか？
            item = 'ls_purple_haze_joint',
            -- enable = true の場合、ペッドは上記のアイテムをいくつ要求しますか？
            quantity = 25
        },
        -- 開始場所のブリップ設定をカスタマイズ
        blip = {
            enable = true, -- 供給ランのブリップを有効または無効にする
            sprite = 303, -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 1, -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.8, -- サイズ/スケール
            label = 'Meth Supplies' -- ラベル
        }
    },
    -- 供給クレートアイテムをカスタマイズ
    crate = {
        -- アイテムのスポーン名は何ですか？
        item = 'ls_supply_crate',
        -- 開けたときに与えられる報酬
        -- 供給クレートは一度に1つのアイテムをランダムに報酬として与えます
        -- これはプレイヤーのインベントリにあるものに基づいています
        -- たとえば、プレイヤーがまだ持っていないアイテムを報酬として与えます
        -- 5つの可能なアイテムすべてが与えられるまで
        -- プレイヤーがすでにすべてのアイテムを持っている場合は、ランダムに1つ与えます
        rewards = {
            [1] = { item = 'ls_pseudoephedrine', quantity = 1 },
            [2] = { item = 'ls_ammonia', quantity = 1 },
            [3] = { item = 'ls_iodine', quantity = 1 },
            [4] = { item = 'ls_acetone', quantity = 1 },
            [5] = { item = 'ls_hydrochloric_acid', quantity = 1 },
            -- 好きなようにアイテムを追加または削除できます
            -- 上記の形式に従うようにしてください
        },
        -- プレイヤーごとに完了できる供給ランの最大数を設定します
        -- これはサーバーセッションごとなので、サーバーが再起動するまでリセットされません
        -- 制限なしにしたいですか？ 5000 のような非現実的に高い数字を設定してください！
        limit = 10
    },
    -- 供給ピックアップに割り当てられる可能な場所
    pickups = {
        vec4(805.6595, -2949.2554, 6.0207, 359.0819),
        vec4(1093.7500, -2233.8169, 30.2919, 265.1041),
        vec4(288.0578, -2072.6003, 17.6636, 112.4047),
        vec4(803.0657, -1669.7657, 30.8644, 282.5256),
        vec4(-1126.9694, -1448.4215, 5.0382, 216.0983),
        vec4(-551.5704, -887.6844, 25.1806, 186.9254),
        vec4(-1268.1046, -812.2621, 17.1075, 126.7194),
        vec4(-1447.6541, -376.6544, 38.4895, 179.1771),
        vec4(130.7079, 318.2872, 112.1359, 204.1528),
        vec4(1494.6547, -1886.6356, 71.8840, 302.2741),
        vec4(-297.5289, -2599.1167, 6.1961, 46.3770),
        vec4(-615.5678, -1788.1370, 23.6997, 215.8199),
        vec4(-525.2849, -713.8090, 33.8265, 16.6029),
        vec4(-991.8835, -282.3943, 38.0897, 204.8499),
        vec4(372.2443, 252.9836, 103.0098, 340.1399),
        vec4(1741.5182, -1518.4874, 112.7019, 154.4041),
        vec4(1238.9753, -402.2358, 68.9653, 252.6802),
        vec4(-1112.7618, -503.6779, 35.1336, 206.3034),
        vec4(-1309.6450, -1317.5911, 4.8738, 290.9717),
        vec4(-1173.7660, -1152.4127, 5.6598, 282.6238),
    },
    -- 供給ピックアップ中に使用される可能なペッドモデル
    models = {
        'csb_burgerdrug',
        's_m_y_busboy_01',
        'u_m_m_rivalpap',
        'a_m_y_roadcyc_01',
        's_m_y_robber_01',
        'ig_roccopelosi',
        'csb_roccopelosi',
        'a_f_y_runner_01',
        'a_m_y_runner_01',
        'a_m_y_runner_02',
        'a_f_y_rurmeth_01',
        'a_m_m_rurmeth_01',
        'ig_russiandrunk',
        'cs_russiandrunk',
        'a_f_m_salton_01',
        'a_f_o_salton_01',
        'a_m_m_salton_01',
        'a_m_y_beachvesp_02',
        'ig_benny',
        'ig_beverly'
    },
    -- 供給ランのブリップ設定をカスタマイズ
    blip = {
        sprite = 280, -- Sprite ID (https://docs.fivem.net/docs/game-references/blips/)
        color = 5, -- Color (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
        scale = 0.8, -- Size/scale
        label = 'Supplier' -- Label
    }
}

----------------------------------------------
--      👩‍🍳 調理プロセスをカスタマイズ
----------------------------------------------

Config.Cooking = {
    -- テーブル調理プロセスをここでカスタマイズ
    table = {
        -- ステップ 1、粉砕されたプソイドエフェドリンのベースを作成する
        [1] = {
            -- Start は、このステップを開始するために必要なアイテムです
            -- item は必要なアイテム名、quantity は必要な数量です
            start = { item = 'ls_pseudoephedrine', quantity = 1 },
            -- Finish は、このステップの完了時にプレイヤーに与えられるアイテムです
            -- Item はアイテム名、quantity は与えられる量です
            finish = { item = 'ls_crushed_pseudoephedrine', quantity = 1 }
        },
        -- ステップ 2 は、プレイヤーが化学物質を混合するように指示されるときです
        -- 上記で作成した粉砕されたプソイドエフェドリンベースに
        [2] = {
            -- ステップ 2 を開始するには3つのアイテムが必要です - アンモニア、ヨウ素、アセトン
            -- 以下のアイテムセクションは、各アイテムのアイテムスポーン名です
            -- 値は、100%純度のメス製品を作成するために必要な入力です
            -- "Value" は、Config.Table セクションで unique = false の場合のみ使用されます
            -- unique = true の場合、各プレイヤーの混合物はユニークであり、同じではありません
            -- プレイヤーから削除される各アイテムの量は、入力に基づいています
            -- たとえば、アンモニア入力 "40" は、アイテムメタデータの40%を削除します
            ammonia = { item = 'ls_ammonia', value = 86 },
            iodine = { item = 'ls_iodine', value = 32 },
            acetone = { item = 'ls_acetone', value = 48 },
            -- Finish は、このステップの完了時にプレイヤーに与えられるアイテムです
            -- Item はアイテム名、quantity は与えられる量です
            finish = { item = 'ls_liquid_meth', quantity = 1 }
        },
        -- ステップ 3 は、混合物を完璧な温度まで加熱する必要があるときです
        [3] = {
            -- Start は、このステップを開始するために必要なアイテムです
            -- item は必要なアイテム名、quantity は必要な数量です
            start = { item = 'ls_liquid_meth', quantity = 1 },
            -- Duration は、このステップが完了するまでにかかる時間です
            -- ここでの時間は分単位です
            duration = 60,
            -- Temperature は、混合物を加熱する必要がある特定の温度範囲です
            -- この範囲からの逸脱は、作成された ls_liquid_meth ベースの
            -- 純度レベルに悪影響を及ぼします。プレイヤーが上記で100%の純度を達成したが
            -- 混合物を誤って加熱した場合、純度は低下します
            temperature = { min = 190, max = 195 },
            -- Penalty は、混合物が指定された温度範囲外に加熱された場合に
            -- 純度が低下する可能性のある最大パーセンテージです
            -- 温度が理想的な範囲から離れるほど、純度の低下が大きくなり
            -- 最大でこのペナルティパーセンテージまで低下します
            penalty = 50
        },
        -- ステップ 4 は、単に酸を混合物に加えて厚くすることです
        [4] = {
            -- Start は、このステップを開始するために必要なアイテムです
            -- item は必要なアイテム名、quantity は必要な数量です
            start = { item = 'ls_hydrochloric_acid', quantity = 1 },
        },
        -- ステップ 5 は冷却段階で、混合物が固まるまで冷却されます
        [5] = {
            -- Duration は、このステップが完了するまでにかかる時間です
            -- ここでの時間は分単位です
            duration = 90
        },
        -- ステップ 6 は分解段階で、冷却されたシートを細かい結晶に分解します
        [6] = {
            -- Finish は、完了時にプレイヤーに与えられるアイテムです
            -- 完了時に与えられる数量をカスタマイズするには、
            -- Config.Experience "yields" セクションを編集する必要があります
            finish = { item = 'ls_meth' }
        }
    },
    -- 倉庫の調理プロセスをここでカスタマイズ
    warehouse = {
        -- 供給タンクに追加できる供給のアイテム名
        add_supplies = {
            ammonia = 'ls_ammonia',
            iodine = 'ls_iodine',
            acetone = 'ls_acetone'
        },
        -- ここでの数字は、100%純度のメス製品を作成するために必要な入力です
        -- これらの数字は、Config.WarehouseSettings セクションで unique = false の場合のみ使用されます
        -- unique = true の場合、各プレイヤーの混合物はユニークであり、同じではありません
        input_panel = {
            ammonia = 50,
            iodine = 25,
            acetone = 10
        },
        -- Temperature は、混合物を加熱する必要がある特定の温度範囲です
        -- この範囲からの逸脱は、作成された ls_liquid_meth ベースの
        -- 純度レベルに悪影響を及ぼします。プレイヤーが上記で100%の純度を達成したが
        -- 混合物を誤って加熱した場合、純度は低下します
        -------------------------------------------------------------------------------
        -- Penalty は、混合物が指定された温度範囲外に加熱された場合に
        -- 純度が低下する可能性のある最大パーセンテージです
        -- 温度が理想的な範囲から離れるほど、純度の低下が大きくなり
        -- 最大でこのペナルティパーセンテージまで低下します
        temperature = { min = 185, max = 200, penalty = 50 },
        -- 以下のステージは、倉庫の調理プロセスが通過する各ステージです
        stages = {
            [1] = {
                -- Label は、施設管理メニューの「現在のステータス」の下に表示されるラベルです
                label = 'Powering on equipment.. %d%%',
                -- Duration は、このステージが続く時間（分単位）です
                duration = 1,
                -- Power surge はオプションの警察ディスパッチ機能です
                -- 「電源オン」ステージ中に電力サージが発生する確率（パーセンテージ）を設定し
                -- エリア内の電力サージを警察に通知できます
                -- これにより、倉庫内のプレイヤーにライトの点滅効果も発生します
                power_surge = { enable = true, chance = 25 }
            },
            [2] = {
                label = 'Mixing chemicals to specifications.. %d%%',
                duration = 5
            },
            [3] = {
                label = 'Heating mixture to desired temperature.. %d%%',
                duration = 30
            },
            [4] = {
                -- 混合構成の確認ステージは、プレイヤーが
                -- アンモニア/ヨウ素/アセトンの特定の量を入力しなかった場合、または
                -- 目的の温度を設定できなかった場合にのみ失敗します。このステージが失敗した場合
                -- 調理プロセスはキャンセルされ、プレイヤーは何も受け取りません
                label = 'Verifying mixture composition.. %d%%',
                duration = 3
            },
            [5] = {
                label = 'Cooling mixture to solidification.. %d%%',
                duration = 60,
                -- Finish は、このステップの完了時に倉庫のスタッシュに追加されるアイテムです
                -- Item はアイテム名、quantity は与えられる量です
                finish = { item = 'ls_meth_tray', quantity = 1 }
            },
        },
        -- Break down は、ls_meth_tray が分解後に変わるアイテムです
        -- ls_meth_tray に与えられたのと同じ量の ls_meth_box を与えます
        break_down = 'ls_meth_box',
        -- Bagging は、袋詰めアニメーション完了後に受け取る最終的なメスアイテムです
        -- 与えられる量は、倉庫用の Config.Experience yields テーブルに基づいています
        bagging = 'ls_meth'
    }
}

----------------------------------------------
--    🧪 メス消費設定をカスタマイズ
----------------------------------------------

Config.Meth = {
    -- 消費可能なメスアイテムのアイテム名
    item = 'ls_meth',
    -- 薬物消費のすべての可能な効果を管理
    health = {
        -- この効果を有効にしますか？
        enable = true,
        -- 有効な場合、どれだけの体力を適用しますか？
        amount = 50,
        -- 複数消費する場合、プレイヤーが持つことができる最大体力はいくつですか？
        max = 200
    },
    armor = {
        -- この効果を有効にしますか？
        enable = true,
        -- 有効な場合、どれだけのアーマーを適用しますか？
        amount = 100,
        -- 複数消費する場合、プレイヤーが持つことができる最大アーマーはいくつですか？
        max = 100
    },
    speed = {
        -- この効果を有効にしますか？
        enable = true,
        -- 有効な場合、プレイヤー速度をどれだけ増加させますか（最大は1.49）？
        multiplier = 1.49,
        -- 有効な場合、効果を有効にする期間（ミリ秒単位）
        duration = 45000
    },
    screen = {
        -- この効果を有効にしますか？
        enable = true,
        -- タイムサイクルモディファイア（詳細は: https://forge.plebmasters.de/timecyclemods）
        effect = 'stoned_monkeys',
        -- 有効な場合、効果を有効にする期間（ミリ秒単位）
        duration = 45000
    },
    walk = {
        -- この効果を有効にしますか？
        enable = true,
        -- 適用する移動クリップセット（詳細は: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json）
        clipset = 'move_m@drunk@a',
        -- 有効な場合、効果を有効にする期間（ミリ秒単位）
        duration = 45000
    },
    shake = {
        -- この効果を有効にしますか？
        enable = true,
        -- カメラシェイク名（詳細は: https://docs.fivem.net/natives/?_0xFD55E49555E017CF）
        name = 'DRUNK_SHAKE',
        -- カメラシェイクの強度（低いほど弱く、高いほど強い）
        intensity = 2.0,
        -- 有効な場合、効果を有効にする期間（ミリ秒単位）
        duration = 45000
    },
    overdose = {
        -- この効果を有効にしますか？
        enable = true,
        -- 過剰摂取の確率は？
        chance = 10
    }
}

----------------------------------------------
--    🎭 ガスマスクオプションをカスタマイズ
----------------------------------------------

Config.Mask = {
    -- ガスマスクのスポーンアイテム名
    item = 'ls_gas_mask',
    -- ガスマスクとして使用されるオブジェクトモデル
    model = 'prop_player_gasmask',
    -- マスクが取り付けられるボーンID
    boneId = 12844,
    -- 装備および解除にかかる時間（ミリ秒単位）
    duration = 800,
    -- 装備および解除時に使用されるアニメーション
    anim = { dict = 'mp_masks@van@ds@', clip = 'put_on_mask' },
    -- boneIdに対するマスクの位置
    pos = vec3(0.0, 0.0, 0.0),
    -- マスクの回転
    rot = vec3(180.0, 90.0, 0.0),
    -- アニメーションフラグ
    flag = 49,
    -- 装備していないときに使用されるタイムサイクルモディファイア効果
    timecycle = 'CarDamageHit',
    -- 装備していないときにプレイヤーが毎秒受けるダメージ量
    damage = 4,
    -- 効果が有効になるテーブルからの距離
    distance = 5
}

----------------------------------------------
--       📈 XPシステムをカスタマイズ
----------------------------------------------

Config.Experience = {
    -- これらの [括弧] 内の数字はレベルです
    -- レベル1から始まり - 各レベルの設定、xp、収量などを
    -- カスタマイズできます
    [1] = {
        -- このレベルに到達するために必要な経験値
        -- レベル1は常に0経験値でなければなりません
        required_xp = 0,
        -- 効率オプションは、各レベルで増加する利点です
        -- 効率は、特定のステージ（加熱と冷却）の完了にかかる時間を短縮します
        -- たとえば、効率50は、加熱と冷却が50%速くなることを意味します
        -- 加熱ステージの期間が1時間（60分）の場合、50%の効率はそれを50%短縮し
        -- 合計時間を30分にします
        efficiency = 0,
        -- 各調理方法から得られるメスの完了収量（数量）
        yields = {
            -- レベル1でのテーブル調理から受け取る最小および最大収量
            table = { min = 1, max = 3 },
            -- レベル1での倉庫調理から受け取る最小および最大収量
            warehouse = { min = 2, max = 6 }
        },
        -- 製造されたバギーごとにプレイヤーに報酬として与えられる経験値の量
        -- プレイヤーがx3のメスバッグを生産した場合、その調理セッションで
        -- 12から24の経験値を獲得できます
        exp = { min = 4, max = 8 }
    },
    [2] = {
        required_xp = 240,
        efficiency = 5,
        yields = {
            table = { min = 1, max = 4 },
            warehouse = { min = 2, max = 8 }
        },
        exp = { min = 5, max = 10 }
    },
    [3] = {
        required_xp = 803,
        efficiency = 11,
        yields = {
            table = { min = 1, max = 5 },
            warehouse = { min = 3, max = 11 }
        },
        exp = { min = 6, max = 12 }
    },
    [4] = {
        required_xp = 2063,
        efficiency = 16,
        yields = {
            table = { min = 2, max = 7 },
            warehouse = { min = 4, max = 14 }
        },
        exp = { min = 7, max = 14 }
    },
    [5] = {
        required_xp = 4898,
        efficiency = 22,
        yields = {
            table = { min = 2, max = 8 },
            warehouse = { min = 5, max = 16 }
        },
        exp = { min = 8, max = 16 }
    },
    [6] = {
        required_xp = 9938,
        efficiency = 27,
        yields = {
            table = { min = 3, max = 9 },
            warehouse = { min = 6, max = 19 }
        },
        exp = { min = 9, max = 18 }
    },
    [7] = {
        required_xp = 20063,
        efficiency = 33,
        yields = {
            table = { min = 3, max = 11 },
            warehouse = { min = 7, max = 22 }
        },
        exp = { min = 10, max = 20 }
    },
    [8] = {
        required_xp = 39638,
        efficiency = 38,
        yields = {
            table = { min = 4, max = 12 },
            warehouse = { min = 8, max = 24 }
        },
        exp = { min = 11, max = 22 }
    },
    [9] = {
        required_xp = 75278,
        efficiency = 44,
        yields = {
            table = { min = 4, max = 13 },
            warehouse = { min = 9, max = 27 }
        },
        exp = { min = 12, max = 24 }
    },
    [10] = {
        required_xp = 140078,
        efficiency = 50,
        yields = {
            table = { min = 5, max = 15 },
            warehouse = { min = 10, max = 30 }
        },
        exp = { min = 13, max = 26 }
    }
}

----------------------------------------------
--    💃 アニメーションとプロップをカスタマイズ
----------------------------------------------

Config.Animations = {
    place_table = { -- テーブルアニメーション
        label = 'Placing table..',
        description = 'You search for a suitable spot to place the table',
        icon = 'fas fa-location-dot',
        duration = 1500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
        prop = {}
    },
    thinking = { -- テーブルやその他のアクションとの対話時に使用される
        anim = { dict = 'missheist_jewelleadinout', clip = 'jh_int_outro_loop_a', flag = 51 }
    },
    pickup_table = { -- テーブルアニメーション
        label = 'Picking up table..',
        icon = 'fas fa-hand',
        duration = 1500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer', flag = 0 },
        prop = {}
    },
    collect_supply = { -- 供給ランアニメーション
        anim = { dict = 'anim@heists@box_carry@', clip = 'idle' },
        prop = { model = 'v_serv_abox_04', pos = vec3(0.24531, 0.0, -0.21094), rot = vec3(-109.6165, -5.7869, 32.9873) }
    },
    open_supply = { -- 供給ランアニメーション
        label = 'Opening supplies..',
        description = 'You open the supply crate to see what you got',
        icon = 'fas fa-box-open',
        duration = 2500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@heists@box_carry@', clip = 'idle' },
        prop = { model = 'v_serv_abox_04', bone = 57005, pos = vec3(0.24531, 0.0, -0.21094), rot = vec3(-109.6165, -5.7869, 32.9873) }
    },
    create_base = { -- テーブルアニメーション
        label = 'Crushing pseudoephedrine..',
        description = 'You crush the pseudoephedrine into a fine powder',
        icon = 'fas fa-capsules',
        duration = 20000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@business@coc@coc_unpack_cut_left@', clip = 'coke_cut_v5_coccutter' },
        prop = {}
    },
    mix_chemicals = { -- テーブルアニメーション
        label = 'Mixing chemicals..',
        description = 'You mix the chemicals together',
        icon = 'fas fa-flask',
        duration = 20000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@business@coc@coc_unpack_cut@', clip = 'fullcut_cycle_v2_cokecutter', flag = 0 },
        prop = {}
    },
    heat_mixture = { -- テーブルアニメーション
        label = 'Turning temperature up..',
        description = 'You turn up the heat on the mixture',
        icon = 'fas fa-fire',
        duration = 2500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim_casino_b@amb@casino@games@blackjack@dealer', clip = 'check_and_turn_card', flag = 0 },
        prop = {}
    },
    add_acid = { -- テーブルアニメーション
        label = 'Adding acid..',
        description = 'You add acid to the mixture',
        icon = 'fas fa-flask',
        duration = 4250,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@scripted@player@fix_astu_ig10_shots@male@', clip = 'male_a_ped_a_pour_one', flag = 0 },
        prop = {}
    },
    pour_cool = { -- テーブルアニメーション
        label = 'Pouring into tray..',
        description = 'You pour the mixture into the tray',
        icon = 'fas fa-hand',
        duration = 4250,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@scripted@player@fix_astu_ig10_shots@male@', clip = 'male_a_ped_a_pour_one', flag = 1 },
        prop = {}
    },
    break_down = { -- テーブルアニメーション
        label = 'Breaking down..',
        description = 'You break down the cooled sheet into finer crystals',
        icon = 'fas fa-hammer',
        duration = 10000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@business@meth@meth_smash_weight_check@', clip = 'break_weigh_v3_char02', flag = 1 },
        prop = { model = 'prop_tool_hammer', bone = 57005, pos = vec3(0.0971, 0.0129, -0.0197), rot = vec3(-190.0, -80.0, 65.0) }
    },
    add_supplies = { --倉庫アニメーション
        anim = { dict = 'anim@amb@business@meth@meth_monitoring_cooking@cooking@', clip = 'chemical_pour_short_cooker' },
        scene = {
            duration = 73133,
            start = { pos = vec3(1010.656, -3198.445, -38.925), rot = vec3(0.0, 0.0, 0.0) } ,
            props = {
                sacid = { model = 'bkr_prop_meth_sacid', clip = 'chemical_pour_short_sacid' },
                ammonia = { model = 'bkr_prop_meth_ammonia', clip = 'chemical_pour_short_ammonia' },
                clipboard = { model = 'bkr_prop_fakeid_clipboard_01a', clip = 'chemical_pour_short_clipboard' },
                pencil = { model = 'prop_pencil_01', clip = 'chemical_pour_short_pencil' }
            }
        }
    },
    input_panel = { --倉庫アニメーション
        start = vec4(1006.3622, -3197.6475, -38.9931, 265.5144),
        anim = { dict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', clip = 'button_press_monitor', flag = 51 },
        prop = { model = 'bkr_prop_fakeid_clipboard_01a', bone = 18905, pos = vec3(-0.0196, 0.0777, 0.0496), rot = vec3(-10.8598, 22.2913, -3.3664) }
    },
    set_temp = { --倉庫アニメーション
        start = vec4(1014.7536, -3198.0845, -38.9931, 115.1776),
        anim = { dict = 'anim@amb@business@meth@meth_monitoring_cooking@monitoring@', clip = 'button_press_monitor', flag = 51 },
        prop = { model = 'bkr_prop_fakeid_clipboard_01a', bone = 18905, pos = vec3(-0.0196, 0.0777, 0.0496), rot = vec3(-10.8598, 22.2913, -3.3664) }
    },
    break_tray = { -- 倉庫アニメーション
        anim = { dict = 'anim@amb@business@meth@meth_smash_weight_check@', clip = 'break_weigh_v3_char02' },
        scene = {
            duration = 51150,
            start = { pos = vec3(1008.734, -3196.646, -39.99), rot = vec3(0.0, 0.0, 1.08) },
            props = {
                hammer = { model = 'w_me_hammer', clip = 'break_weigh_v3_hammer' },
                tray1 = { model = 'bkr_prop_meth_smashedtray_01_frag_', clip = 'break_weigh_v3_tray01' },
                tray2 = { model = 'bkr_prop_meth_tray_02a', clip = 'break_weigh_v3_tray01^1' },
                tray3 = { model = 'bkr_prop_meth_tray_02a', clip = 'break_weigh_v3_tray01^2' },
                tray4 = { model = 'bkr_prop_meth_smashedtray_01_frag_', clip = 'break_weigh_v3_tray01^3' },
                box = { model = 'bkr_prop_meth_bigbag_03a', clip = 'break_weigh_v3_box01^1' }
            }
        }
    },
    bagging = { -- 倉庫アニメーション
        anim = { dict = 'anim@amb@business@meth@meth_smash_weight_check@', clip = 'break_weigh_v3_char01' },
        scene = {
            duration = 56500,
            start = { pos = vec3(1008.734, -3196.646, -39.99), rot = vec3(0.0, 0.0, 1.08) },
            props = {
                scene1 = {
                    bigbag04a = { model = 'bkr_prop_meth_bigbag_04a', clip = 'break_weigh_v3_box01' },
                    bigbag03a = { model = 'bkr_prop_meth_bigbag_03a', clip = 'break_weigh_v3_box01^1' },
                    openbag02 = { model = 'bkr_prop_meth_openbag_02', clip = 'break_weigh_v3_methbag01' },
                },
                scene2 = {
                    openbag02_1 = { model = 'bkr_prop_meth_openbag_02', clip = 'break_weigh_v3_methbag01^1' },
                    openbag02_2 = { model = 'bkr_prop_meth_openbag_02', clip = 'break_weigh_v3_methbag01^2' },
                    openbag02_3 = { model = 'bkr_prop_meth_openbag_02', clip = 'break_weigh_v3_methbag01^3' },
                },
                scene3 = {
                    scoop = { model = 'bkr_prop_meth_scoop_01a', clip = 'break_weigh_v3_scoop' },
                    scale = { model = 'bkr_prop_coke_scale_01', clip = 'break_weigh_v3_scale' },
                },
                scene4 = {
                    clipboard = { model = 'bkr_prop_fakeid_clipboard_01a', clip = 'break_weigh_v3_clipboard' },
                    pen = { model = 'bkr_prop_fakeid_penclipboard', clip = 'break_weigh_v3_pen' },
                }
            }
        }
    },
    manage_facility = { --倉庫アニメーション
        anim = { dict = 'anim@scripted@player@mission@tunf_bunk_ig3_nas_upload@', clip = 'normal_typing', flag = 51 }
    },
    raid_door = { --倉庫アニメーション
        anim = { dict = 'missheistfbisetup1', clip = 'hassle_intro_loop_f', flag = 51 }
    },
    raid_stash = { --倉庫アニメーション
        anim = { dict = 'missheistfbisetup1', clip = 'hassle_intro_loop_f', flag = 51 }
    },
    confiscate = { --倉庫アニメーション
        anim = { dict = 'anim@scripted@player@mission@tunf_bunk_ig3_nas_upload@', clip = 'normal_typing', flag = 51 }
    },
    use_meth = {
        label = 'Sniffing meth..',
        description = 'You take a moment to sniff the meth',
        icon = 'fas fa-syringe',
        duration = 4500,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'anim@amb@nightclub@peds@', clip = 'missfbi3_party_snort_coke_b_male3' },
        prop = {}
    }
}