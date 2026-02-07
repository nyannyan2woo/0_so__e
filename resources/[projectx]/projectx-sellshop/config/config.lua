Config = Config or {}
Loc = {}

-- //////////////////////////////////////////////////
-- //////////////// 私たちのディスコード ////////////////////
-- //////// https://discord.gg/bJNxYDAm5u ///////////
-- //////////////////////////////////////////////////

Config = {
    debug = false, -- ゲーム内で作成されたポリゾーンを表示
    Lan = 'ja', -- 翻訳言語, 'en' 'pl' 'de' 'da' 'fr' 'in' 'am' 'ph' 'no' 'nl' 'ja' 'da' 'ru' 'gr' 'se' 'lt' 'ar' 'bg' 'bs', 'cn', 'cs', 'ee', 'el', 'en', 'es', 'et', 'fa', 'fi', 'ge', 'he', 'hu', 'id', 'is', 'it', 'lv', 'pt', 'pt-br', 'ro', 'rs', 'sl', 'sv', 'th', 'tr', 'vn'
    Framework = 'qbox', -- 'qb' 'qbox' 'esx' または "custom" 。"custom"の場合、opensource/client.luaおよびopensource/server.luaの関数を編集する必要があります
    ESX = "new", -- (ESXユーザーのみ) 使用しているESXのバージョンを選択してください "new" または "old"
    Inventory = "ox", -- "ox" または "qs" または "qb" または "origen" または "tgiann" または "esx" または "lj" または "ps"。"custom"の場合、opensource/client.luaおよびopensource/server.luaのインベントリ関数を編集する必要があります
    Notification = "ox", -- "ox" または "qb" または "esx" または "custom"。"custom"の場合、opensource/client.luaの通知関数を編集する必要があります
    Progressbar = "ox", -- "ox" または "qb" または "custom"。"custom"の場合、opensource/client.luaのプログレスバー関数を編集する必要があります
    ProgressbarType = "bar", -- "circle" または "bar" | OXプログレスバーでのみ使用
    Dispatch = {
        Resource = 'ps', -- "ps" "cd" "qs" "origen" "tk" "codem" "rcore" "l2s" "redutzu" "lb" "sonoran" または "outlaw" または "custom"。"custom"の場合、opensource/client.luaのディスパッチ関数を編集する必要があります
        -- ディスパッチのテキストを変更したい場合はここで行うことができます:
        Title = 'Suspicious Sale',
        Description = 'A Suspicious sale was made',
        Code = '10-69',

        Blip = {
            Text = 'Suspicious Sale',
            Color = 1,
            Sprite = 69,
            Scale = 0.8
        }
    },

    Interaction = 'ox_target', -- ox_target, qb-target, drawtext, worldinteract (worldinteractにはhttps://github.com/darktrovx/interactが必要です)

    DrawtextButton = 38, -- デフォルトでは [E]
    Drawtext = "OX", -- OLDQB (古いqb-drawtext用), QB (新しいqbcore drawtext用), OX (ox_lib用)
    DrawTextZoneSize = vec3(1.4, 1.4, 2), -- ドローテキストゾーンのサイズ
    DrawTextRotation = 70.0, -- ドローテキストゾーンの回転

    CurrencySymbol = '¥', -- 通貨シンボル。任意のシンボルに変更できます。
    InventoryPath = 'auto', -- インベントリパス。画像のインベントリパスに変更します。デフォルトはauto
    PoliceJobs = {["police"] = true}, -- ディスパッチを受け取り、カウントがチェックされるジョブ。さらに追加する場合は、この例に従ってください: PoliceJobs = {["police"] = true, ["fbi"] = true, ["swat"] = true}
    UseXP = false, -- XPシステムを使用する場合はtrueに設定、そうでない場合はfalseに設定してください
    ClientSideXP = false, -- クライアント側XPシステムを使用する場合はtrueに、サーバー側XPシステムを使用する場合はfalseに設定してください

    ProgressbarConfig = {
        Enable = true, -- プログレスバーを使用する場合はtrueに設定、そうでない場合はfalseに設定してください。プログレスバーは使用されません
        Duration = 2000, -- プログレスバーの期間(ミリ秒)
        Text = 'Selling...', -- プログレスバーのテキスト
        Animation = {
            Enable = true, -- アニメーションを使用する場合はtrueに設定、そうでない場合はfalseに設定してください。アニメーションは使用されません
            NPCSync = true, -- NPCにエモートをプレイさせたい場合はtrueに設定、プレイヤーのみの場合はfalseに設定してください。
            Dict = 'mp_common', -- アニメーションディクト
            Anim = 'givetake1_b', -- アニメーション名
        }
    },

    Shops = {
        -- ['pawnshop'] = {
        --     -- メニュー/ターゲットオプション
        --     ["MenuTitle"] = 'Pawnshop', -- メニュータイトル。売却メニューのタイトル
        --     ["TargetIcon"] = 'fas fa-dollar-sign', -- ターゲットアイコン。fontawesomeからのアイコンを使用できます
        --     ["TargetText"] = 'Sell Products', -- ターゲット/TextUIテキスト
        --     ["TargetSize"] = 1.5, -- ターゲットサイズ
        --     ["TargetDistance"] = 1.0, -- ターゲット距離
        --     ["OnlyShowItemsInInventory"] = false, -- true = プレイヤーがインベントリに持っているアイテムのみを表示、false この店のすべてのアイテムを表示

        --     ["Coords"] = vec4(412.15, 315.22, 102.13, 210.65), -- ペドまたはターゲットの座標

        --     ["Ped"] = {
        --         Enable = false, -- ペドを使用する場合はtrueに設定、そうでない場合はfalseに設定してターゲット/ドローテキストのみを使用します
        --         Model = `a_m_m_business_01`,
        --         ["IdleAnimation"] = {
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(https://forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        --                 anim = "idle_a"
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --         },
        --         ["SuccessfulAnimation"] = { -- プレイヤーの成功アニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'mp_common',
        --                 anim = 'givetake1_b'
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --             Duration = 2,
        --             AdvancedAnimation = false,
        --         },
        --         ["PedSuccessfulAnimation"] = { -- ペド/NPC成功アニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'mp_common',
        --                 anim = 'givetake1_b'
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --         },
        --     },

        --     ["TimeFrame"] = {
        --         Enable = true, -- 時間枠を使用する場合はtrueに設定。そうでない場合はfalseに設定すると24/7営業になります
        --         Time = {open = 9, close = 22}, -- 店舗が営業しているときの時間枠。店舗が閉じている場合、プレイヤーは相互作用時に通知を受け取ります。
        --     },
            
        --     ["PoliceCount"] = 0, -- 店舗にアクセスするために必要な最小警察人数

        --     ["Blip"] = {
        --         Enable = true, -- ブリップを使用する場合はtrueに設定
        --         Text = "Pawnshop", -- ブリップテキスト
        --         Sprite = 605, -- ブリップアイコン。https://docs.fivem.net/docs/game-references/blips/
        --         Color = 0, -- ブリップカラー。https://docs.fivem.net/docs/game-references/blips/#blip-colors
        --         Scale = 0.8
        --     },

        --     ["Items"] = {
        --         ['goldbar'] = { -- アイテムの "spawn" 名
        --             Label = "Gold Bar", -- メニューに表示される名前
        --             Price = 100, -- アイテムが売却される価格

        --             ["DisableMoney"] = false, -- これをtrueに設定した場合、["ItemReward"]で指定されたアイテムのみが与えられます

        --             ["ItemReward"] = { -- このテーブルを使用したくない場合は削除できます
        --                 Enable = true, -- プレイヤーへの報酬としてアイテムを与えたい場合はtrueに設定。そうでない場合はfalseに設定するとお金のみが与えられます
        --                 Item = "pawnshopcoin", -- プレイヤーに与えられるアイテム。
        --                 Amount = 1, -- 与えるアイテムの量(1アイテムあたり、sold * amount)
        --             },
        --         },

        --         ['diamond'] = { -- アイテムの "spawn" 名
        --             Label = 'Diamond', -- メニューに表示される名前
        --             Price = 300, -- アイテムが売却される価格

        --             ["DisableMoney"] = false, -- これをtrueに設定した場合、["ItemReward"]で指定されたアイテムのみが与えられます

        --             ["ItemReward"] = { -- このテーブルを使用したくない場合は削除できます
        --                 Enable = false, -- プレイヤーへの報酬としてアイテムを与えたい場合はtrueに設定。そうでない場合はfalseに設定するとお金のみが与えられます
        --                 Item = "pawnshopcoin", -- プレイヤーに与えられるアイテム。
        --                 Amount = 1, -- 与えるアイテムの量(1アイテムあたり、sold * amount)
        --             },
        --         },
        --     },

        --     ["BulkSale"] = {  -- このテーブルを使用したくない場合は削除できます
        --         Enable = false, -- 一括販売の有効化または無効化
        --         BulkAmount = 10, -- 人々が販売する必要があるアイテムの量
        --         ExtraCash = 10, -- (%) 一括販売から得られる追加現金の割合
        --     },
        -- },
        -- ['suspiciousbuyer'] = {
        --     -- メニュー/ターゲットオプション
        --     ["MenuTitle"] = 'Suspicious Buyer', -- メニュータイトル。売却メニューのタイトル
        --     ["TargetIcon"] = 'fas fa-mask', -- ターゲットアイコン。fontawesomeからのアイコンを使用できます
        --     ["TargetText"] = 'Sell Products', -- ターゲット/TextUIテキスト
        --     ["TargetSize"] = 1.0, -- ターゲットサイズ
        --     ["TargetDistance"] = 1.5, -- ターゲット距離
        --     ["OnlyShowItemsInInventory"] = true, -- true = プレイヤーがインベントリに持っているアイテムのみを表示、false この店のすべてのアイテムを表示
        --     ["Coords"] = { -- ペドまたはターゲットの座標(下の座標からランダムに1つの場所に出現します)
        --         vec4(259.51, 2584.91, 43.95, 9.83),
        --         vec4(1915.52, 3735.22, 31.64, 206.85)
        --     },

        --     ["Ped"] = {
        --         Enable = true, -- ペドを使用する場合はtrueに設定。そうでない場合はfalseに設定してターゲット/ドローテキストのみを使用します
        --         Model = 'a_m_m_og_boss_01', -- 任意のペドモデルを使用できます
        --         ["IdleAnimation"] = { -- アイドルアニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "scenario", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(https://forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'amb@world_human_hang_out_street@female_arms_crossed@idle_a', -- アニメーションディクト
        --                 anim = 'idle_a' -- アニメーション名
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --         },
        --         ["SuccessfulAnimation"] = { -- プレイヤーの成功アニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'mp_common', -- アニメーションディクト
        --                 anim = 'givetake1_b' -- アニメーション名
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --             Duration = 2, -- アニメーションの期間(秒)
        --             AdvancedAnimation = true, -- 私たちが行った高度なアニメーション。ディーラーと売り手の両方にアニメーションを使用し、プロップを使用します(これをtrueに設定すると、上記の["SuccessfulAnimation"]がキャンセルされます)(このアニメーションは編集できません)
        --         },
        --     },

        --     ["TimeFrame"] = {
        --         Enable = true, -- 時間枠を使用する場合はtrueに設定。そうでない場合はfalseに設定すると24/7営業になります
        --         Time = {open = 23, close = 6}, -- 店舗が営業しているときの時間枠。店舗が閉じている場合、プレイヤーは相互作用時に通知を受け取ります。
        --     },

        --     ["PoliceCount"] = 1, -- 店舗にアクセスするために必要な最小警察人数

        --     ["Blip"] = {
        --         Enable = false, -- ブリップを使用する場合はtrueに設定
        --         Text = "Suspicious Buyer", -- ブリップテキスト
        --         Sprite = 465, -- ブリップアイコン。https://docs.fivem.net/docs/game-references/blips/
        --         Color = 1, -- ブリップカラー。https://docs.fivem.net/docs/game-references/blips/#blip-colors
        --         Scale = 0.8
        --     },

        --     ["Items"] = {
        --         ['x_painting'] = { -- アイテムの "spawn" 名
        --             Label = "Painting", -- メニューに表示される名前
        --             Price = 300, -- アイテムが売却される価格
        --             DispatchChance = 60, -- プレイヤーがこのアイテムを売却したときに警察がディスパッチを受け取る%の確率
        --             -- image = 'x_painting.png', -- メニューに表示される画像。アイテムの画像名がアイテムの名前と同じ場合、追加する必要はありません

        --             ["DisableMoney"] = false, -- これをtrueに設定した場合、["ItemReward"]で指定されたアイテムのみが与えられます
        --             ["DirtyMoney"] = {
        --                 Enable = true, -- ダーティマネーを使用する場合はtrueに設定。そうでない場合はfalseに設定するとキャッシュが使用されます
        --                 Item = "black_money", -- ダーティマネーとして使用されるアイテム。MoneyType = "cash"の場合、これは無視されます
        --                 MetaData = false, -- trueの場合、価格はメタデータとして使用されます。ブラックマネーの場合(インベントリ内のアイテムにカーソルを合わせたときに情報として表示)
        --             },

        --             ["ItemReward"] = { -- このテーブルを削除することもできます
        --                 Enable = false, -- プレイヤーへの報酬としてアイテムを与えたい場合はtrueに設定。そうでない場合はfalseに設定するとお金のみが与えられます
        --                 Item = "water_bottle", -- プレイヤーに与えられるアイテム。
        --                 Amount = 1, -- 与えるアイテムの量(1アイテムあたり、sold * amount)
        --             },

        --             ["Volume"] = { -- このテーブルを削除することもできます
        --                 Enable = true,
        --                 AmountUntilDropInPrice = 10, -- 価格が下落するまでにプレイヤーが売却する必要があるアイテムの量
        --                 DropInPrice = 10, -- (%) ドロップされる価格
        --             },

        --             ["Exp"] = 5, -- 与えるXP量(1アイテムあたり、exp * amount)。この行を削除するとXPは与えられません。
        --         },
        --         ['x_painting2'] = { -- アイテムの "spawn" 名
        --             Label = "Rare Painting", -- メニューに表示される名前
        --             Price = 500, -- アイテムが売却される価格
        --             DispatchChance = 80, -- プレイヤーがこのアイテムを売却したときに警察がディスパッチを受け取る%の確率
        --             -- image = 'x_painting.png', -- メニューに表示される画像。アイテムの画像名がアイテムの名前と同じ場合、追加する必要はありません

        --             ["DisableMoney"] = true, -- これをtrueに設定した場合、["ItemReward"]で指定されたアイテムのみが与えられます

        --             ["ItemReward"] = { -- このテーブルを削除することもできます
        --                 Enable = true, -- プレイヤーへの報酬としてアイテムを与えたい場合はtrueに設定。そうでない場合はfalseに設定するとお金のみが与えられます
        --                 Item = "rarecoin", -- プレイヤーに与えられるアイテム。
        --                 Amount = 1, -- 与えるアイテムの量(1アイテムあたり、sold * amount)
        --             },

        --             ["Volume"] = { -- このテーブルを削除することもできます
        --                 Enable = false,
        --                 AmountUntilDropInPrice = 10, -- 価格が下落するまでにプレイヤーが売却する必要があるアイテムの量
        --                 DropInPrice = 10, -- (%) ドロップされる価格
        --             },

        --             ["Exp"] = 5, -- 与えるXP量(1アイテムあたり、exp * amount)。この行を削除するとXPは与えられません。
        --         },
        --         ['x_artpiece'] = {
        --             Label = 'Art Piece', -- メニューに表示される名前
        --             Price = 700,
        --             DispatchChance = 90, -- プレイヤーがこのアイテムを売却したときに警察がディスパッチを受け取る%の確率

        --             ["DisableMoney"] = true, -- これをtrueに設定した場合、["ItemReward"]で指定されたアイテムのみが与えられます

        --             ["DirtyMoney"] = { -- このテーブルを削除することもできます
        --                 Enable = false, -- ダーティマネーを使用する場合はtrueに設定。そうでない場合はfalseに設定するとキャッシュが使用されます
        --                 Item = "black_money", -- ダーティマネーとして使用されるアイテム。MoneyType = "cash"の場合、これは無視されます
        --                 MetaData = false, -- trueの場合、価格はメタデータとして使用されます。ブラックマネーの場合(インベントリ内のアイテムにカーソルを合わせたときに情報として表示)
        --             },

        --             ["ItemReward"] = { -- このテーブルを削除することもできます
        --                 Enable = true, -- プレイヤーへの報酬としてアイテムを与えたい場合はtrueに設定。そうでない場合はfalseに設定するとお金のみが与えられます
        --                 Item = "criminalcoin", -- プレイヤーに与えられるアイテム。
        --                 Amount = 1, -- 与えるアイテムの量(1アイテムあたり、sold * amount)
        --             },

        --             ["Volume"] = { -- このテーブルを削除することもできます
        --                 Enable = false,
        --                 AmountUntilDropInPrice = 10, -- 価格が下落するまでにプレイヤーが売却する必要があるアイテムの量
        --                 DropInPrice = 10, -- (%) ドロップされる価格
        --             },

        --             ["Exp"] = 5, -- 与えるXP量(1アイテムあたり、exp * amount)。この行を削除するとXPは与えられません。
        --         },
        --     },
        --     ["BulkSale"] = { -- このテーブルを削除することもできます
        --         Enable = true,
        --         BulkAmount = 10, -- 人々が販売する必要があるアイテムの量
        --         ExtraCash = 10, -- (%) 一括販売から得られる追加現金の割合
        --     },
        -- },
        -- ['jeweler'] = {
        --     -- メニュー/ターゲットオプション
        --     ["MenuTitle"] = 'Jeweler',
        --     ["TargetIcon"] = 'fas fa-ring',
        --     ["TargetText"] = 'Sell Jewelry',
        --     ["TargetSize"] = 1.5,
        --     ["TargetDistance"] = 2.5,
        --     ["OnlyShowItemsInInventory"] = false, 

        --     ["Coords"] = vec4(-770.28, -287.37, 36.09, 96.28),

        --     ["Ped"] = {
        --         Enable = true,
        --         Model = {'a_f_y_business_01', `a_f_y_business_04`},
        --         ["IdleAnimation"] = {
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(https://forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = "amb@world_human_leaning@female@wall@back@hand_up@idle_a",
        --                 anim = "idle_a"
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --         },
        --         ["SuccessfulAnimation"] = { -- プレイヤーの成功アニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'mp_common',
        --                 anim = 'givetake1_b'
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --             Duration = 2,
        --             AdvancedAnimation = false,
        --         },
        --         ["PedSuccessfulAnimation"] = { -- ペド/NPC成功アニメーション。シナリオまたはアニメーションを使用できます
        --             AnimationType = "animation", -- "animation" または "scenario" または "none"

        --             Animation = { -- アニメーション。シナリオまたはアニメーション(forge.plebmasters.de/animations?ped=A_F_Y_Beach_01)を使用できます
        --                 dict = 'mp_common',
        --                 anim = 'givetake1_b'
        --             },
        --             Scenario = 'WORLD_HUMAN_CLIPBOARD', -- アニメーションの代わりにシナリオを使用する場合はこれを使用します(https://github.com/DioneB/gtav-scenarios)
        --         },
        --     },

        --     ["TimeFrame"] = {
        --         Enable = true, -- 時間枠を使用する場合はtrueに設定。そうでない場合はfalseに設定すると24/7営業になります
        --         Time = {open = 9, close = 22}, -- 店舗が営業しているときの時間枠。店舗が閉じている場合、プレイヤーは相互作用時に通知を受け取ります。
        --     },

        --     ["Blip"] = {
        --         Enable = true,
        --         Text = "Jeweler",
        --         Sprite = 233, -- ブリップアイコン。https://docs.fivem.net/docs/game-references/blips/
        --         Color = 1, -- ブリップカラー。https://docs.fivem.net/docs/game-references/blips/#blip-colors
        --         Scale = 0.8
        --     },

        --     ["Items"] = {
        --         ['diamond_earring'] = {
        --             Label = "Diamond Earrings",
        --             Price = 250,
        --         },
        --         ['diamond_necklace'] = {
        --             Label = "Diamond Necklace",
        --             Price = 300,
        --         },
        --         ['diamond_ring'] = {
        --             Label = "Diamond Ring",
        --             Price = 200,
        --         },
        --         ['emerald_earring'] = {
        --             Label = "Emerald Earrings",
        --             Price = 200,
        --         },
        --         ['emerald_necklace'] = {
        --             Label = "Emerald Necklace",
        --             Price = 250,
        --         },
        --         ['emerald_ring'] = {
        --             Label = "Emerald Ring",
        --             Price = 150,
        --         },
        --         ['ruby_earring'] = {
        --             Label = "Ruby Earrings",
        --             Price = 150,
        --         },
        --         ['ruby_necklace'] = {
        --             Label = "Ruby Necklace",
        --             Price = 200,
        --         },
        --         ['ruby_ring'] = {
        --             Label = "Ruby Ring",
        --             Price = 100,
        --             ["Exp"] = 1,
        --         },
        --         ['sapphire_earring'] = {
        --             Label = "Sapphire Earrings",
        --             Price = 100,
        --             ["Exp"] = 1,
        --         },
        --         ['sapphire_necklace'] = {
        --             Label = "Sapphire Necklace",
        --             Price = 150,
        --             ["Exp"] = 2,
        --         },
        --         ['sapphire_ring'] = {
        --             Label = "Sapphire Ring",
        --             Price = 75,
        --             ["Exp"] = 1,
        --         },
        --     },

        --     ["BulkSale"] = {
        --         Enable = true,
        --         BulkAmount = 10, -- 人々が販売する必要があるアイテムの量
        --         ExtraCash = 10, -- (%) 一括販売から得られる追加現金の割合
        --     },
        -- }
    }
}

if Config.InventoryPath == "" or Config.InventoryPath == 'auto' then
    if GetResourceState('ox_inventory') == 'started' then
        Config.InventoryPath = 'ox_inventory/web/images/'
    elseif GetResourceState('qs-inventory') == 'started' then
        Config.InventoryPath = 'qs-inventory/html/images/'
    elseif GetResourceState('qb-inventory') == 'started' then
        Config.InventoryPath = 'qb-inventory/html/images/'
    elseif GetResourceState('ps-inventory') == 'started' then
        Config.InventoryPath = 'ps-inventory/html/images/'
    elseif GetResourceState('lj-inventory') == 'started' then
        Config.InventoryPath = 'lj-inventory/html/images/'
    elseif GetResourceState('tgiann-inventory') == 'started' then
        Config.InventoryPath = 'inventory_images/images/'
    elseif GetResourceState('origen_inventory') == 'started' then
        Config.InventoryPath = 'origen_inventory/html/img/'
    elseif GetResourceState('codem-inventory') == 'started' then
        Config.InventoryPath = 'codem-inventory/html/itemimages/'
    else
        print('^1[Config.InventoryPath] インベントリ画像の自動検出がオンになっていますが、インベントリが起動していないか、デフォルトでサポートされていません。設定を確認して、パスを手動で設定してください。^7')
    end
end

function LoadPreset(name, data)
    if name == "example" then return end
    if IsDuplicityVersion() then
        if Config.Shops[name] then
            lib.print.warn(string.format('ショップ "%s" は既にConfig.Shopsに存在しています。上書きしています...', name))
        else
            lib.print.info(string.format('ショップ "%s" がプリセットを使用して追加されました。', name))
        end
    end

    Config.Shops[name] = data
end