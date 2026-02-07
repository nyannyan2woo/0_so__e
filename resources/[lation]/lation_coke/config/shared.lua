return {
    ----------------------------------------------
    --        🛠️ Setup the basics below
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
        -- 以下にコンテキストメニューシステムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        menu = 'lation_ui',
        -- 以下にアラートと入力ダイアログシステムを設定します
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        dialogs = 'lation_ui',
        -- アップデートが利用可能な場合、サーバーコンソールで通知を受け取りますか？
        -- 受信する場合は true、しない場合は false
        version = true,
        -- 以下の 'request' オプションは、クライアントがモデル/アニメーションの読み込みを待機する時間です
        -- 何をしているか分かっている場合、またはサポートメンバーの指示がない限り、編集しないでください
        request = 10000,
        -- Render は、プロップがスポーンして表示されるためにプレイヤーが近づく必要がある
        -- 最も近いオブジェクトからの単位（距離）です
        -- （この数値/距離の外側では、プロップは必要になるまで削除されます）
        render = 100,
        -- 派遣通知などのために、以下にすべての警察のジョブを入力してください
        police = { 'police', 'sheriff' }
    },

    ----------------------------------------------
    --    🌱 コカ農場の作成、編集、管理
    ----------------------------------------------

    -- 探索後の各植物のクールダウン期間（秒単位）
    -- クールダウンが終了すると、植物を再び探索できます
    cooldown = 180,
    -- 収穫できるコカの最大量を制限します
    -- これはサーバーセッションごとのプレイヤーごとの制限です。つまり、プレイヤーが
    -- この制限に達すると、サーバーが再起動するまでそれ以上探索することはできません
    -- 制限をしたくないですか？ 非常に大きな数字を設定してください！
    limit = 100,
    -- 以下でコカ農場を管理します
    farms = {
        [1] = {
            -- ここでスクリプトに植物のプロップをスポーンさせる必要がありますか？
            spawn = true,
            -- spawn = true の場合、どのプロップをスポーンしますか？
            model = 'coca_growth_3_wild',
            -- ここでのゾーンの中心点の座標
            center = vec3(2139.1252, 5169.0010, 54.1451),
            -- ゾーンのサイズ（半径）（ゾーンを確認するにはデバッグを有効にしてください）
            size = 150,
            -- ここで植物を探索するために必要なレベルは？
            level = 1,
            -- 植えるときに必要＆オプションで削除されるアイテム
            required = {
                { item = 'ls_shears', quantity = 1, remove = false },
                -- 必要に応じて独自のアイテムを追加してください
            },
            -- 探索時にプレイヤーに報酬として与えるアイテムと数量は？
            reward = { item = 'ls_coca_leaf', quantity = { min = 1, max = 1 } },
            -- 確率（パーセンテージ）に基づいて報酬として与える2番目のアイテム
            -- これらは個人のコカ植物を育てて収穫するために必要な種です
            seed = { item = 'ls_coca_seed', quantity = { min = 1, max = 1 }, chance = 5 },
            -- 探索ごとの報酬XPは？ これは葉1枚あたりです。
            -- つまり、プレイヤーが葉を3枚見つけた場合、3XPを獲得します
            xp = { min = 1, max = 1 },
            -- この農場のオプションのブリップ設定
            blip = { enable = true, sprite = 89, color = 1, scale = 0.7, label = 'Coca Field' },
            -- インタラクションポイントを適用する各植物の座標
            -- または、spawn = true の場合 - 各植物をスポーンする座標
            coca = {
                -- 既存の植物の正確な座標を取得するのに助けが必要な場合
                -- dolu_toolの使用をお勧めします: https://github.com/dolutattoo/dolu_tool/releases/latest
                [1] = vec3(2179.3621, 5155.1704, 53.9840),
                [2] = vec3(2172.1982, 5152.0825, 53.1408),
                [3] = vec3(2177.6487, 5162.5894, 55.0238),
                [4] = vec3(2172.4924, 5167.3901, 55.5249),
                [5] = vec3(2158.9534, 5170.7520, 55.4918),
                [6] = vec3(2153.8794, 5178.9380, 56.4784),
                [7] = vec3(2145.5286, 5184.4600, 56.7473),
                [8] = vec3(2147.3643, 5196.0039, 57.9572),
                [9] = vec3(2138.5225, 5197.4136, 57.4630),
                [10] = vec3(2134.8069, 5202.9419, 57.6294),
                [11] = vec3(2130.9080, 5207.7373, 57.7305),
                [12] = vec3(2170.6714, 5145.4829, 51.9476),
                [13] = vec3(2164.1550, 5154.3433, 53.0478),
                [14] = vec3(2154.0593, 5159.4741, 53.3424),
                [15] = vec3(2146.5908, 5168.2437, 54.4723),
                [16] = vec3(2139.6296, 5177.9883, 55.5299),
                [17] = vec3(2135.0847, 5186.2339, 56.3193),
                [18] = vec3(2129.0337, 5191.6782, 56.6006),
                [19] = vec3(2119.1389, 5195.7695, 56.5050),
                [20] = vec3(2116.1658, 5203.2280, 57.0254),
                [21] = vec3(2159.5923, 5138.2407, 49.8532),
                [22] = vec3(2154.9294, 5145.2588, 50.8309),
                [23] = vec3(2146.0554, 5151.8408, 51.5500),
                [24] = vec3(2140.2964, 5158.5825, 52.4179),
                [25] = vec3(2136.4829, 5166.3301, 53.4914),
                [26] = vec3(2133.7690, 5173.1504, 54.3835),
                [27] = vec3(2126.7668, 5180.8262, 55.0367),
                [28] = vec3(2120.1672, 5185.2935, 55.2166),
                [29] = vec3(2114.5471, 5193.8320, 56.1267),
                [30] = vec3(2102.3345, 5198.7134, 55.7128),
                [31] = vec3(2099.0806, 5191.6616, 55.1150),
                [32] = vec3(2108.1299, 5185.8960, 54.8048),
                [33] = vec3(2117.7590, 5176.4795, 53.9329),
                [34] = vec3(2124.3381, 5168.0464, 53.0896),
                [35] = vec3(2130.1248, 5158.8242, 52.1414),
                [36] = vec3(2135.4602, 5149.5005, 50.8720),
                [37] = vec3(2147.3152, 5144.6392, 50.3661),
                [38] = vec3(2152.6050, 5138.3320, 49.5138),
                [39] = vec3(2159.1841, 5130.0737, 48.8332),
                [40] = vec3(2148.3936, 5128.9341, 48.0955),
                [41] = vec3(2136.5923, 5140.8809, 49.5312),
                [42] = vec3(2125.2170, 5153.5503, 51.2402),
                [43] = vec3(2113.2061, 5164.1587, 52.3151),
                [44] = vec3(2104.4207, 5176.2031, 53.6669),
                [45] = vec3(2091.6428, 5186.8242, 54.4904),
                [46] = vec3(2133.9062, 5131.5181, 48.1057),
                [47] = vec3(2113.7305, 5151.1050, 50.3221),
                [48] = vec3(2097.6240, 5169.5703, 52.1555),
                [49] = vec3(2084.0840, 5183.9663, 53.8722)
            }
        },

        -- 好きなだけ農場を作成できます！
        -- 同じフォーマットに従って、必要に応じてここにさらに農場を追加してください

        -- [2] = {
        --     spawn = false,
        --     model = 'h4_prop_bush_cocaplant_01',
        --     center = vec3(0.0, 0.0, 0.0),
        --     size = 100,
        --     level = 1,
        --     required = {
        --         { item = 'ls_shears', quantity = 1, remove = false },
        --     },
        --     reward = { item = 'ls_coca_leaf', quantity = { min = 1, max = 3 } },
        --     seed = { item = 'ls_coca_seed', quantity = { min = 1, max = 1 }, chance = 5 },
        --     xp = { min = 1, max = 1 },
        --     blip = { enable = true, sprite = 89, color = 1, scale = 0.7, label = 'Coca Field' },
        --     coca = {
        --         [1] = vec3(0.0, 0.0, 0.0),
        --         [2] = vec3(0.0, 0.0, 0.0),
        --         [3] = vec3(0.0, 0.0, 0.0)
        --     }
        -- }

    },

    ----------------------------------------------
    --     🌿 植物のオプションをカスタマイズ
    ----------------------------------------------

    planting = {
        -- コカ植物を植えるために使用される種アイテム
        seed = 'ls_coca_seed',
        -- プレイヤーが一度に所有できる植物の最大数
        max = 5,
        -- 配置プロセス中に衝突をチェックしますか？
        collision = true,
        -- 植えるときに必要＆オプションで削除されるアイテム
        required = {
            { item = 'ls_plant_pot', quantity = 1, remove = true },
            -- 必要に応じて独自のアイテムを追加してください
        },
        -- 植えるために何人の警察がオンラインである必要がありますか？
        police = 0,
        -- 土壌チェック機能をカスタマイズ
        soil = {
            -- 土壌チェック機能を有効にしますか？
            -- これにより、プレイヤーは以下の土壌ハッシュに一致する
            -- 土壌タイプにのみ植物を配置できるようになります
            enable = true,
            -- enable = true の場合、これらは許可された土壌タイプです
            -- 上記の debug を true に設定することで土壌タイプを取得できます
            -- 植物を置いてみてください - F8 に土壌ハッシュが出力されます！
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
            -- 土壌チェック機能をアクティブにしておきたいが、特定の場所（倉庫など）での植え付けを許可したい場合
            -- ここに場所とエリアの一般的なサイズ（半径）を指定すると、土壌チェックがバイパスされます
            ignore = {
                [1] = { coords = vec3(0, 0, 0), radius = 25 },
                -- [2] = { coords = vec3(0, 0, 0), radius = 25 },
                -- 必要に応じて無視する場所を追加してください
            }
        },
        -- 特定の場所での植え付けを無効にしたい場合は、ここで行うことができます
        blacklist = {
            [1] = { coords = vec3(0, 0, 0), radius = 25 },
            -- [2] = { coords = vec3(0, 0, 0), radius = 25 },
            -- 必要に応じてブラックリストの場所を追加してください
        },
        -- プレイヤーがマップの周りに自由に植えることを許可したくない場合
        -- 植え付けをホワイトリストに登録された場所のみに制限し、
        -- 植え付けが有効になる各場所のサイズ（半径）を以下でカスタマイズできます
        restrict = {
            -- 制限オプションを有効にしますか？
            enable = false,
            -- enable = true の場合、どの場所で植え付けが許可されますか？
            whitelist = {
                [1] = { coords = vec3(0, 0, 0), radius = 25 },
                -- [2] = { coords = vec3(0, 0, 0), radius = 25 },
                -- 必要に応じてホワイトリストの場所を追加してください
            }
        },
        -- 各ステージに割り当てられたプロップ
        stages = {
            [1] = 'coca_growth_1',
            [2] = 'coca_growth_2',
            [3] = 'coca_growth_3'
        }
    },

    growth = {
        -- 'update_interval' は、各植物が更新される頻度（ミリ秒単位）です
        update_interval = 15000,
        -- 'starting' は、それぞれの開始値（パーセンテージ）です
        starting = { thirst = 85, hunger = 85, yield = 100, growth = 0 },
        -- 'growth_increase' は、update_interval ごとに増加する成長の割合です
        -- デフォルトでは、成長はおよそ15秒ごとに 0.1% ～ 0.3% 増加します
        growth_increase = { min = 0.15, max = 0.35 },
        -- 'stages' は、そのステージに進むための成長率のしきい値です
        -- [2] = 40 は、植物が40%の成長でステージ2に変化することを意味します
        stages = { [2] = 40, [3] = 90 },
        -- 'watering' は、水やりアクションごとに植物の水分レベルが増加する量です
        -- 'item' セクションは、水やりアイテムのスポーン名です
        -- デフォルトでは、植物の水分レベルは水やりごとに8～13%増加します
        watering = { item = 'ls_watering_can', min = 8.0, max = 13.0 },
        -- 'fertilizing' は、肥料を与えるアクションごとに植物の空腹レベルが増加する量です
        -- 'item' セクションは、肥料アイテムのスポーン名です
        -- デフォルトでは、植物の空腹レベルは肥料を与えるごとに10～15%増加します
        fertilizing = { item = 'ls_fertilizer', min = 10.0, max = 15.0 },
        -- 'thirst' は、update_interval ごとに水分が減少する量です
        -- デフォルトでは、水分はおよそ15秒ごとに 0.1% ～ 0.4% 減少します
        thirst = { min = 0.12, max = 0.3 },
        -- 'hunger' は、update_interval ごとに空腹が減少する量です
        -- デフォルトでは、空腹はおよそ15秒ごとに 0.1% ～ 0.4% 減少します
        hunger = { min = 0.11, max = 0.3 },
        -- 'death' は、水分または空腹がこの量に達すると植物が枯れることを意味します
        -- デフォルトでは、水分または空腹が20%以下になると植物は枯れます
        -- 植物が枯れると、完全に削除され、マップから削除されます
        death = 20,
        -- 'yield_threshold' は、植物の水分または空腹がこの数値に達すると、植物の収穫量
        -- が減少し始めることを意味します。たとえば、植物の空腹が100%でも水分が69%の場合、
        -- 植物の水分と空腹がこの量を超えるまで、収穫レベルは update_interval ごとに減少し始めます
        yield_threshold = 70,
        -- 'yield_decrease' は、update_interval ごとに収穫率が減少する量です
        -- 植物の水分または空腹レベルが yield_threshold 量（デフォルトで70%）を下回っている場合
        yield_decrease = { min = 0.4, max = 0.9 },
    },

    harvest = {
        -- 収穫時に必要＆オプションで削除されるアイテム
        required = {
            { item = 'ls_shears', quantity = 1, remove = false },
            -- 必要に応じて独自のアイテムを追加してください
        },
        -- 収穫時にプレイヤーに与えられるアイテムと数量
        add = {
            -- コカの葉のアイテム名
            leaf = 'ls_coca_leaf',
            -- 収穫時にプレイヤーに与えられるコカの葉の数量
            -- プレイヤーに与えられる葉の数は、植物の収穫率に基づいています
            -- デフォルトでは、プレイヤーは10パーセントポイントごとに3枚の葉を取得します
            -- 植物が100%の収穫率で収穫された場合、これはプレイヤーに30枚の葉を与えます
            -- 植物が50%の収穫率で収穫された場合、プレイヤーは15枚の葉を取得します
            -- 収穫率は、植物がどれだけ世話をされたかに基づいて変化します
            yield_per_10_percent = 3,
            -- コカ植物を収穫すると、葉と種が得られます
            -- ただし、"required_yield" オプションを使用すると、植物が特定の収穫率以上で
            -- 収穫されている場合にのみ種を報酬として与えることができます
            -- これにより、植物の管理が悪く、収穫率が required_yield を下回っている場合
            -- プレイヤーは種を取り戻すことができません
            seed = { item = 'ls_coca_seed', quantity = { min = 1, max = 1 }, required_yield = 95, },
            -- 収穫時の報酬XPは？ これは葉1枚あたりです
            -- つまり、プレイヤーが葉を15枚収穫した場合、15XPを獲得します
            xp = { min = 1, max = 1 }
        }
    },

    ----------------------------------------------
    --      ⚙️ テーブルオプションの設定
    ----------------------------------------------

    table = {
        -- メステーブルのアイテムスポーン名
        item = 'ls_coke_table',
        -- テーブルプロップとして使用されるモデル/オブジェクト
        -- その他のモデル: https://forge.plebmasters.de/objects
        model = 'bkr_prop_coke_table01a',
        -- テーブルを所有者のみがアクセスできるようにロックしますか？
        -- true の場合、テーブルを配置したプレイヤーのみが対話できます
        -- false の場合、誰でも対話＆ピックアップ/テーブルを持ち去ることができます
        locked = false,
        -- 1人のプレイヤーが配置できるテーブルの数をいくつ許可しますか？
        -- locked = false の場合、自分の配置制限が1であっても、
        -- 他の人のテーブルを使用できます
        limit = 1,
        -- 必要に応じて、テーブルを配置する際の衝突チェック機能を無効にできます
        -- true のままにすることをお勧めしますが、必要に応じて無効にできます
        collisions = true,
        -- テーブルを配置＆使用するために何人の警察がオンラインである必要がありますか？
        police = { place = 0, use = 0 },
        -- これらのエリアでのテーブルの配置を制限します
        restricted = {
            [1] = { coords = vec3(0, 0, 0), radius = 25 },
            -- 必要に応じてここに追加し、数字を [2], [3] などと
            -- 増やして確認してください
        },
    },

    ----------------------------------------------
    --       📈 XPシステムのカスタマイズ
    ----------------------------------------------

    experience = {
        -- これら [括弧] 内の数字はレベルです
        -- = の後の数字は、そのレベルに到達するために必要な経験値です
        -- レベルは *常に* レベル 1 から 0 経験値で始まるようにしてください
        [1] = 0,
        [2] = 2500,
        [3] = 10000,
        [4] = 20000,
        [5] = 50000,
        [6] = 100000,
        -- 必要に応じてレベルを追加または削除できます
        -- 数字を正しく増やすようにしてください
    },

    ----------------------------------------------
    --      ⚒️ セメント収集のカスタマイズ
    ----------------------------------------------

    cement = {
        -- セメント収集を無効または有効にします
        enable = true,
        -- プレイヤーごとに収集できるセメントの最大数を設定します
        -- これはサーバーセッションごとなので、サーバーが再起動するまでリセットされません
        -- 制限をしたくないですか？ 5000のような非現実的に高い数字を設定してください！
        limit = 25,
        -- 1つ取った後の各セメントパレットのクールダウン期間（秒単位）
        -- クールダウンが終了すると、セメントパレットを再び探索できます
        cooldown = 180,
        -- セメントが取られたときに警察に通知しますか？
        -- はいの場合、chance は通知が送信される確率（パーセンテージ）です
        -- いいえの場合、chance を 0 に設定します。スプライト、色、スケールは派遣ブリップの設定です
        dispatch = { chance = 5, sprite = 133, color = 1, scale = 1.0 },
        -- 収集ゾーンの作成、編集、または管理
        zones = {
            [1] = {
                -- これらのゾーンはポリゾーンで構築されています。以下にすべてのポイントを入力してください
                -- ポリゾーンの構築に助けが必要ですか？ https://skyrossm.github.io/PolyZoneCreator/ をチェックしてください
                -- または、ox_lib の /zone コマンドを使用してポリゾーンを作成できます
                points = {
                    vec3(-436.36, -863.64, 38.0),
                    vec3(-434.85, -965.15, 38.0),
                    vec3(-431.06, -1001.52, 38.0),
                    vec3(-440.91, -1098.48, 38.0),
                    vec3(-521.97, -1065.91, 38.0),
                    vec3(-525.00, -1030.30, 38.0),
                    vec3(-529.55, -993.18, 38.0),
                    vec3(-526.52, -959.09, 38.0),
                    vec3(-489.39, -882.58, 38.0),
                    vec3(-485.61, -862.88, 38.0)
                },
                -- ポリゴンの高さ
                thickness = 35,
                -- 収集時に与えられるアイテムと数量
                reward = { item = 'ls_cement', quantity = { min = 1, max = 1 } },
                -- 収集時の報酬XPは？ これはセメントアイテム1つあたりです
                xp = { min = 0, max = 0 },
                -- 収集を許可したい各セメントオブジェクトの座標
                coords = {
                    [1] = vec3(-486.745, -1051.958, 28.911),
                    [2] = vec3(-490.756, -1049.139, 28.911),
                    [3] = vec3(-492.023, -1048.076, 28.911),
                    [4] = vec3(-478.925, -1050.830, 28.912),
                    [5] = vec3(-478.925, -1049.176, 28.912),
                    [6] = vec3(-465.013, -1045.091, 28.911),
                    [7] = vec3(-464.057, -1046.464, 28.911),
                    [8] = vec3(-469.612, -1051.953, 28.911),
                    [9] = vec3(-468.091, -1052.831, 28.911),
                    [10] = vec3(-455.397, -1052.479, 28.919),
                    [11] = vec3(-454.051, -1053.609, 28.919),
                    [12] = vec3(-497.059, -1010.229, 28.918),
                    [13] = vec3(-497.059, -1008.576, 28.917),
                    [14] = vec3(-493.132, -996.690, 28.911),
                    [15] = vec3(-493.132, -994.933, 28.911),
                    [16] = vec3(-495.574, -992.676, 28.911),
                    [17] = vec3(-495.574, -994.433, 28.911),
                    [18] = vec3(-440.356, -1022.513, 25.784),
                    [19] = vec3(-440.380, -1021.142, 25.784),
                    [20] = vec3(-440.394, -1019.159, 25.784),
                    [21] = vec3(-440.041, -1017.833, 25.784),
                    [22] = vec3(-440.805, -967.684, 25.784),
                    [23] = vec3(-440.603, -966.006, 25.784),
                    [24] = vec3(-448.492, -947.273, 28.973),
                    [25] = vec3(-447.125, -947.166, 28.973),
                    [26] = vec3(-466.271, -899.449, 28.997),
                    [27] = vec3(-464.786, -899.297, 28.996),
                    [28] = vec3(-462.224, -895.241, 28.995),
                    [29] = vec3(-457.348, -881.329, 28.973),
                    [30] = vec3(-457.362, -879.957, 28.973),
                    [31] = vec3(-471.268, -925.761, 28.973),
                    [32] = vec3(-471.492, -927.114, 28.973),
                    [33] = vec3(-470.563, -956.971, 28.973),
                    [34] = vec3(-470.552, -955.599, 28.973),
                    [35] = vec3(-454.731, -959.882, 28.973),
                    [36] = vec3(-456.096, -959.752, 28.973),
                    -- 必要に応じて追加または削除
                }
            },

            -- 好きなだけセメントのゾーンを作成できます！
            -- 同じフォーマットに従って、必要に応じてここにさらにセメントゾーンを追加してください
            -- 🗒️ 注: これはセメントをスポーンするのではなく、設定された座標にターゲットを適用するだけです

            -- [2] = {
            --     points = {
            --         vec3(0.0, 0.0, 0.0),
            --         vec3(0.0, 0.0, 0.0),
            --         vec3(0.0, 0.0, 0.0),
            --         vec3(0.0, 0.0, 0.0),
            --     },
            --     thickness = 35,
            --     reward = { item = 'ls_cement', quantity = { min = 1, max = 1 } },
            --     xp = { min = 0, max = 0 },
            --     coords = {
            --         [1] = vec3(0.0, 0.0, 0.0),
            --         [2] = vec3(0.0, 0.0, 0.0),
            --         [3] = vec3(0.0, 0.0, 0.0),
            --         [4] = vec3(0.0, 0.0, 0.0),
            --         [5] = vec3(0.0, 0.0, 0.0),
            --     }
            -- },

        }
    },

    ----------------------------------------------
    --       🛒 Customize supply shop
    ----------------------------------------------

    shop = {
        -- コカの供給品へのアクセスを別の方法で許可したい場合は、
        -- オプションでこのショップを無効にできます
        enable = true,
        -- enabled = true の場合、このショップはどこにありますか？
        location = vec4(1901.1145, 4924.4526, 48.8241, 207.5563),
        -- 使用されるペッドモデル
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_farmer_01',
        -- ペッドに割り当てられたシナリオ（またはシナリオなしの場合は nil/false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_DRINKING',
        -- ここでペッドが利用可能な時間を制限できます
        -- デフォルトでは、このペッドは24時間365日利用可能です
        -- Min はショップが利用可能になる最も早い時間（24時間形式）
        -- Max はショップが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、夜間のみ利用可能にする場合は、min を 21 に、max を 5 に設定します
        hours = { min = 21, max = 5 },
        -- ここで購入するときに現金または銀行を使用しますか？
        account = 'cash',
        -- このショップで販売されているアイテム
        items = {
            -- item: アイテムのスポーン名
            -- price: アイテムの価格
            -- icon: アイテムのアイコン
            -- metadata: アイテムのオプションのメタデータ
            [1] = { item = 'ls_watering_can', price = 150, icon = 'droplet', metadata = 100 },
            [2] = { item = 'ls_fertilizer', price = 200, icon = 'burger', metadata = 100 },
            [3] = { item = 'ls_plant_pot', price = 100, icon = 'plant-wilt' },
            [4] = { item = 'ls_shears', price = 1500, icon = 'scissors' },
            [5] = { item = 'ls_baking_soda', price = 150, icon = 'box-archive' },
            [6] = { item = 'ls_empty_baggy', price = 50, icon = 'bag-shopping' },
            [7] = { item = 'ls_gasoline', price = 500, icon = 'gas-pump', metadata = 100 },
            [8] = { item = 'ls_coke_table', price = 50000, icon = 'snowflake' },
            -- 必要に応じてアイテムを追加または削除してください
        },
        -- 必要に応じてブリップ設定を管理します
        blip = {
            enable = true, -- このショップのブリップを有効または無効にする
            sprite = 280, -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            color = 0, -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            scale = 0.9, -- サイズ/スケール
            label = 'Farmer' -- ラベル
        }
    },

    ----------------------------------------------
    --    ❄️ コカラボの構築とカスタマイズ
    ----------------------------------------------

    -- 以下に、好きなだけコカラボオプションを作成してください
    -- [2], [3] など、それに応じて数字を増やすようにしてください
    labs = {
        [1] = {
            -- このラボへの入り口座標
            enter = vec4(499.6197, -651.9501, 24.9085, 262.6456),
            -- メニューで使用される簡単な説明
            description = 'リトル・ビッグホーンのテキスタイルシティにある控えめなラボ',
            -- ラボのプレビューに使用される画像へのパス
            -- ラボのプレビュー画像を無効にするには、image = nil を設定してください
            image = 'nui://lation_coke/labs/lab1.jpg',
            -- メニューで使用されるアイコン
            icon = 'fas fa-warehouse',
            -- このラボを購入する価格
            price = 100000,
            -- このラボを購入するために必要なレベル
            level = 1,
            -- 以下の "camrot" はカメラの回転用です。これは、適切なデフォルト角度の
            -- 回転値を割り当てるために使用されます。倉庫の camrot を取得するには、
            -- 倉庫の入り口の前に立ち、ドアに背を向け、
            -- 上記の debug オプションを有効にして、ゲーム内でコマンド "getrot" を使用します
            camrot = vec3(-0.000001, -0.000000, -97.354431),
            -- このラボで利用可能なスタッシュ
            storage = {
                [1] = {
                    -- スタッシュのID。これはすべてのスタッシュで一意である必要があります
                    -- 推奨される命名規則は: lab#_stash#
                    identifier = 'lab1_stash1',
                    -- スタッシュのラベル
                    label = 'Storage',
                    -- スタッシュの座標
                    coords = vec3(1096.9021, -3192.4685, -38.8690),
                    -- スタッシュの最大スロット数
                    slots = 50,
                    -- スタッシュの最大重量
                    weight = 50000
                },
                -- 必要に応じてさらにスタッシュを追加または削除してください
            }
        },
        [2] = {
            enter = vec4(945.9252, -1138.3689, 26.5010, 0.7115),
            description = 'A conveniently located lab in Murrieta Heights',
            image = 'nui://lation_coke/labs/lab2.jpg',
            icon = 'fas fa-warehouse',
            price = 125000,
            level = 1,
            camrot = vec3(0.000000, 0.000000, 0.711507),
            storage = {
                [1] = {
                    identifier = 'lab2_stash1',
                    label = 'Storage',
                    coords = vec3(1096.9021, -3192.4685, -38.8690),
                    slots = 75,
                    weight = 75000
                },
            }
        },
        [3] = {
            enter = vec4(930.9764, -1963.8546, 30.4092, 271.7736),
            description = 'A lab located in Cypress Flats with extra storage',
            image = 'nui://lation_coke/labs/lab3.jpg',
            icon = 'fas fa-warehouse',
            price = 150000,
            level = 1,
            camrot = vec3(-0.019753, -0.034459, -88.226372),
            storage = {
                [1] = {
                    identifier = 'lab3_stash1',
                    label = 'Storage',
                    coords = vec3(1096.9021, -3192.4685, -38.8690),
                    slots = 75,
                    weight = 75000
                },
                [2] = {
                    identifier = 'lab3_stash2',
                    label = 'Storage',
                    coords = vec3(1093.5725, -3199.8215, -38.9873),
                    slots = 25,
                    weight = 25000
                },
            }
        },
        [4] = {
            enter = vec4(-1267.7716, -811.9169, 17.1077, 127.9849),
            description = 'A large lab located in the heart of Del Perro',
            image = 'nui://lation_coke/labs/lab4.jpg',
            icon = 'fas fa-warehouse',
            price = 175000,
            level = 1,
            camrot = vec3(-0.280802, 0.012579, 127.985153),
            storage = {
                [1] = {
                    identifier = 'lab4_stash1',
                    label = 'Storage',
                    coords = vec3(1096.9021, -3192.4685, -38.8690),
                    slots = 100,
                    weight = 100000
                },
            }
        },
        [5] = {
            enter = vec4(-1684.7803, -291.3889, 51.8901, 145.2175),
            description = 'A re-purposed church with lots of storage',
            image = 'nui://lation_coke/labs/lab5.jpg',
            icon = 'fas fa-warehouse',
            price = 250000,
            level = 1,
            camrot = vec3(0.025158, -0.001362, 145.217484),
            storage = {
                [1] = {
                    identifier = 'lab5_stash1',
                    label = 'Storage',
                    coords = vec3(1096.9021, -3192.4685, -38.8690),
                    slots = 75,
                    weight = 75000
                },
                [2] = {
                    identifier = 'lab5_stash2',
                    label = 'Storage',
                    coords = vec3(1093.5725, -3199.8215, -38.9873),
                    slots = 50,
                    weight = 50000
                },
                [3] = {
                    identifier = 'lab5_stash3',
                    label = 'Storage',
                    coords = vec3(1090.0062, -3199.6501, -38.8936),
                    slots = 50,
                    weight = 50000
                },
            }
        },
    },

    -- すべてのラボに適用されるさまざまなコカラボ設定
    settings = {
        -- 特定のラボ取引に使用されるプレイヤーアカウント
        -- 利用可能なオプション: 'cash' または 'bank'
        accounts = { purchase = 'cash', upgrade = 'cash', sell = 'cash' },
        -- プレイヤーがラボに入ると、ここにテレポートされます
        enter = vec4(1088.7609, -3187.5291, -38.9934, 181.0739),
        -- プレイヤーがラボ内にいるとき、ここから退出します
        exit = vec4(1088.7609, -3187.5291, -38.9934, 181.0739),
        -- ラボ管理メニューをどこに配置しますか？
        manage = vec3(1086.5208, -3194.2824, -39.1940),
        -- 調理ステーションはどこにありますか？
        -- 'basic' はアップグレードされていないラボのステーションがある場所です
        -- 'upgrade' はアップグレードされたラボのステーションがある場所です
        -- デフォルトでは、アップグレードされたラボにはより多くのステーションが付いてきます
        stations = {
            ['basic'] = {
                [1] = vec3(1090.3503, -3195.7060, -39.1919),
                [2] = vec3(1093.1036, -3195.7351, -39.1924),
                [3] = vec3(1095.3885, -3195.7077, -39.1919)
            },
            ['upgrade'] = {
                [1] = vec3(1090.3503, -3195.7060, -39.1919),
                [2] = vec3(1093.1036, -3195.7351, -39.1924),
                [3] = vec3(1095.3885, -3195.7077, -39.1919),
                [4] = vec3(1098.6831, -3194.3437, -39.1923),
                [5] = vec3(1101.8637, -3192.8369, -39.1920)
            }
        },
        -- 1人のプレイヤーが所有できるラボの最大数は？
        limit = 1,
        -- プレイヤーがラボを購入すると、これらのデフォルト値が割り当てられます
        -- スタイルオプション: 'basic', 'upgrade'
        -- セキュリティオプション: 'basic', 'upgrade'
        defaults = { style = 'basic', security = 'basic' },
        -- プレイヤーがラボに承認済みユーザーを追加すると、これらがデフォルトの
        -- 権限として新しく追加されたユーザーに適用されます
        permissions = {
            -- manageDoor は、ラボのドアをロック/ロック解除する機能です
            manageDoor = false,
            -- viewCamera は、ラボのセキュリティカメラを表示する機能です
            viewCamera = false,
            -- manageUsers は、承認済みユーザーを追加/削除する機能です
            manageUsers = false
        },
        -- 各ラボで利用可能なアップグレード（スタイルとセキュリティはデフォルト = 'basic' の場合のみ利用可能）
        -- Price は費用 | duration は完了までにかかる時間（分単位）
        upgrades = {
            style = { price = 15000, duration = 60 },
            security = { price = 10000, duration = 30 }
        },
        -- ラボ売却関連のオプション
        selling = {
            -- ユーザーがラボを売却する場合、続行するにはこれを入力する必要があります
            confirm = 'confirm',
            -- ラボを売却する場合、これは払い戻される購入価格の割合です
            refund = 50,
        },
        -- プレイヤーが倉庫を所有している場合、これはそのブリップ設定です
        blip = {
            name = 'Coke Lab',
            -- スプライトID: https://docs.fivem.net/docs/game-references/blips/
            sprite = 473,
            -- 色: https://docs.fivem.net/docs/game-references/blips/#blip-colors
            color = 0,
            -- マップ上のブリップのサイズ
            scale = 0.8
        }
    },

    -- さまざまなコカラボ急襲設定
    raids = {
        -- 警察がコカラボを急襲できるようにしますか？
        police = true,
        -- プレイヤーがコカラボを急襲できるようにしますか？
        players = true,
        -- 急襲が有効な場合、以下はスキルチェックの難易度と入力です
        -- 詳細はこちら: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
        skillcheck = {
            -- ロックされたラボに入るときのスキルチェック設定
            entry = {
                difficulty = {'easy', 'easy', 'easy', 'medium', 'medium', 'medium', 'hard'},
                inputs = {'W', 'A', 'S', 'D'}
            },
            -- ロックされたスタッシュを開くときのスキルチェック設定
            stash = {
                difficulty = {'easy', 'easy', 'easy', 'medium', 'medium', 'medium', 'hard'},
                inputs = {'W', 'A', 'S', 'D'}
            }
        }
    },

    -- コカラボを販売するペッド
    dealer = {
        -- ラボショップへのアクセスを、利用可能なエクスポートを使用して
        -- 別の方法で許可したい場合は、オプションでこのショップを無効にできます（ドキュメントを参照）
        enable = true,
        -- enabled = true の場合、このショップはどこにありますか？
        location = vec4(-7.2472, 409.2823, 120.1271, 76.4763),
        -- enabled = true の場合、使用されるペッドモデル
        -- その他のモデル: https://docs.fivem.net/docs/game-references/ped-models/
        model = 'a_m_m_eastsa_02',
        -- enabled = true の場合、ペッドに割り当てられたシナリオ（またはシナリオなしの場合は nil/false）
        -- その他のシナリオ: https://github.com/DioneB/gtav-scenarios
        scenario = 'WORLD_HUMAN_SMOKING',
        -- enabled = true の場合、ショップにアクセスするにはプレイヤーは何レベルである必要がありますか？
        level = 1,
        -- ここでペッドが利用可能な時間を制限できます
        -- デフォルトでは、このペッドは24時間365日利用可能です
        -- Min はショップが利用可能になる最も早い時間（24時間形式）
        -- Max はショップが利用可能になる最も遅い時間（24時間形式）
        -- たとえば、夜間のみ利用可能にする場合は、min を 21 に、max を 5 に設定します
        hours = { min = 0, max = 24 },
        -- 必要に応じてブリップ設定を管理します
        blip = {
             -- このショップのブリップを有効または無効にする
            enable = true,
            -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            sprite = 280,
            -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            color = 0,
            -- マップ上のブリップのサイズ
            scale = 0.8,
            -- ラベル
            label = 'Lab Shop'
        }
    },

    ----------------------------------------------
    --      👩‍🍳 Customize cooking process
    ----------------------------------------------

    cooking = {

        -- Do you want each players cooking process to be unique?
        -- If true every player will have a different mixture of
        -- 純度100%のコカ/クラックに到達するために必要なガスとセメント
        -- false の場合、すべてのプレイヤーが同じ混合物を持ち、
        -- 以下の調理ステップでサーバー全体の範囲を割り当てることができます
        unique = true,

        -- プレイヤーが調理しているときに警察に通知しますか？
        -- はいの場合、chance は通知が送信される確率（パーセンテージ）です
        -- いいえの場合、chance を 0 に設定します。スプライト、色、スケール、半径は派遣ブリップの設定です
        dispatch = {
            -- ポータブルテーブル調理の派遣設定
            table = { chance = 5, sprite = 133, color = 1, scale = 1.0, radius = 50 },
            -- ラボ調理の派遣設定
            lab = { chance = 5, sprite = 133, color = 1, scale = 1.0, radius = 50 }
        },

        -- テーブルの調理ステップを作成、編集、管理
        table = {
            [1] = {
                -- このステップのタイトルと説明（ロケールファイルで編集）
                title = locale('table-menu.process-leaves-title'),
                description = locale('table-menu.process-leaves-desc'),
                -- アイコン設定
                icon = 'fas fa-mortar-pestle',
                iconColor = '',
                -- このステップに必要なアイテム
                required = {
                    { item = 'ls_coca_leaf', quantity = 20, remove = true },
                    -- 必要に応じて独自のアイテムを追加してください
                    -- 何も必要としない場合は、このテーブルを空のままにしてください
                },
                -- このステップが完了したときに追加されるアイテム
                add = {
                    { item = 'ls_coca_ground', quantity = 1 },
                    -- 必要に応じて独自のアイテムを追加してください
                },
                -- このステップで与えられるXPは？
                -- XPを与えたくない場合は、このセクションを削除するか
                -- min/max を 0/0 に割り当てることができます
                xp = { min = 1, max = 3 },
                -- サーバー側でイベントをトリガーする必要がある場合
                -- イベント名の後に server = true を追加します
                event = { name = 'lation_coke:table:processLeaves' }
            },
            [2] = {
                title = locale('table-menu.add-gas-title'),
                description = locale('table-menu.add-gas-desc'),
                icon = 'fas fa-gas-pump',
                iconColor = '',
                -- 地面の葉に追加するために使用されるガソリンアイテム
                -- これにより、コカの基本純度が最初に決定されます
                gasoline = 'ls_gasoline',
                -- ⚠️ unique = true の場合、ここの範囲設定は無視できます
                -- ⚠️ unique = false の場合、ここですべてのプレイヤーの範囲を設定できます
                -- 追加するガソリンの理想的なパーセンテージ/量
                -- これらの値の範囲外の量は、純度に悪影響を与えます
                range = { min = 5, max = 9 },
                -- 上記の範囲外の場合の純度への最大ペナルティ
                -- たとえば、誰かが100%ガスを入れた場合、純度は75%に戻ります（最大25%のペナルティ）
                penalty = 25,
                required = {
                    { item = 'ls_coca_ground', quantity = 5, remove = true },
                },
                add = {
                    { item = 'ls_coca_base_unf', quantity = 1, metatype = 'purity' },
                },
                xp = { min = 1, max = 3 },
                event = { name = 'lation_coke:table:addGasoline' }
            },
            [3] = {
                title = locale('table-menu.add-cement-title'),
                description = locale('table-menu.add-cement-desc'),
                icon = 'fas fa-trowel-bricks',
                iconColor = '',
                -- コカベースに追加するために使用されるセメントアイテム
                -- コカの純度レベルはここでさらに影響を受ける可能性があります
                cement = 'ls_cement',
                -- ⚠️ unique = true の場合、ここの範囲設定は無視できます
                -- ⚠️ unique = false の場合、ここですべてのプレイヤーの範囲を設定できます
                -- 追加するセメントの理想的なパーセンテージ/量
                -- これらの値の範囲外の量は、純度に悪影響を与えます
                range = { min = 15, max = 19 },
                -- 上記の範囲外の場合の純度への最大ペナルティ
                penalty = 25,
                required = {
                    { item = 'ls_coca_base_unf', quantity = 1, remove = true, metatype = 'purity' },
                },
                add = {
                    { item = 'ls_coca_base', quantity = 1, metatype = 'purity' },
                },
                xp = { min = 1, max = 3 },
                event = { name = 'lation_coke:table:addCement' }
            },
            [4] = {
                title = locale('table-menu.start-heat-title'),
                description = locale('table-menu.start-heat-desc'),
                icon = 'fas fa-fire',
                iconColor = '',
                -- このステップが完了するまでにどれくらい時間がかかりますか？
                -- この期間は分単位です
                duration = 60,
                required = {
                    { item = 'ls_coca_base', quantity = 1, remove = true, metatype = 'purity' }
                },
                add = {
                    { item = 'ls_cocaine_brick', quantity = 1, metatype = 'purity' }
                },
                xp = { min = 10, max = 30 },
                event = { name = 'lation_coke:table:heatAndDry' }
            },
            [5] = {
                title = locale('table-menu.package-title'),
                description = locale('table-menu.package-desc'),
                icon = 'fas fa-hammer',
                iconColor = '',
                -- ブリックをバッグに詰めるために必要な空のバギーアイテム
                empty_baggy = 'ls_empty_baggy',
                required = {
                    { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
                    -- { item = 'ls_crack_brick', quantity = 1, remove = true, metatype = 'purity'}
                },
                add = {
                    { item = 'ls_cocaine_bag', min = 10, max = 20, metatype = 'purity' },
                    -- { item = 'ls_crack_bag', min = 10, max = 20, metatype = 'purity' }
                },
                xp = { min = 2, max = 5 },
                event = { name = 'lation_coke:table:packageBrick' }
            },
            -- -- OPTIONAL: Uncomment below to enable crack production on tables
            -- [6] = {
            --     title = locale('table-menu.cook-coke-title'),
            --     description = locale('table-menu.cook-coke-desc'),
            --     icon = 'fas fa-flask-vial',
            --     iconColor = '',
            --     -- How long does this step take to complete?
            --     -- This duration is in minutes
            --     duration = 60,
            --     required = {
            --         { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
            --         { item = 'ls_baking_soda', quantity = 1, remove = true }
            --     },
            --     add = {
            --         { item = 'ls_crack_brick', quantity = 1, metatype = 'purity' }
            --     },
            --     xp = { min = 5, max = 15 },
            --     event = { name = 'lation_coke:table:cookCoke' }
            -- },
            -- -- OPTIONAL: Uncomment below to enable brick cutting on tables
            -- [7] = {
            --     title = locale('table-menu.cut-brick-title'),
            --     description = locale('table-menu.cut-brick-desc'),
            --     icon = 'fas fa-scissors',
            --     iconColor = '',
            --     -- The cutting agent used to double the batch size
            --     cutting_agent = 'ls_baking_soda',
            --     -- The percentage purity is impacted when cutting
            --     -- e.g. If you cut x1 100% purity brick, it'll now be x2 65% bricks
            --     penalty = 50,
            --     required = {
            --         { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
            --         { item = 'ls_crack_brick', quantity = 1, remove = true, metatype = 'purity' }
            --     },
            --     add = {
            --         { item = 'ls_cocaine_brick', quantity = 2, metatype = 'purity' },
            --         { item = 'ls_crack_brick', quantity = 2, metatype = 'purity' }
            --     },
            --     xp = { min = 1, max = 3 },
            --     event = { name = 'lation_coke:table:cutBrick' }
            -- },
        },

        -- ラボステーションの調理ステップを作成、編集、管理
        lab = {
            [1] = {
                title = locale('table-menu.process-leaves-title'),
                description = locale('table-menu.process-leaves-desc'),
                icon = 'fas fa-mortar-pestle',
                iconColor = '',
                required = {
                    { item = 'ls_coca_leaf', quantity = 20, remove = true },
                },
                add = {
                    { item = 'ls_coca_ground', quantity = 1 },
                },
                xp = { min = 2, max = 4 },
                event = { name = 'lation_coke:lab:processLeaves' }
            },
            [2] = {
                title = locale('table-menu.add-gas-title'),
                description = locale('table-menu.add-gas-desc'),
                icon = 'fas fa-gas-pump',
                iconColor = '',
                gasoline = 'ls_gasoline',
                -- ⚠️ unique = true の場合、ここの範囲設定は無視できます
                -- ⚠️ unique = false の場合、ここですべてのプレイヤーの範囲を設定できます
                -- 追加するガソリンの理想的なパーセンテージ/量
                -- これらの値の範囲外の量は、純度に悪影響を与えます
                range = { min = 5, max = 9 },
                -- 上記の範囲外の場合の純度への最大ペナルティ
                -- たとえば、誰かが100%ガスを入れた場合、純度は75%に戻ります（最大25%のペナルティ）
                penalty = 20,
                required = {
                    { item = 'ls_coca_ground', quantity = 5, remove = true },
                },
                add = {
                    { item = 'ls_coca_base_unf', quantity = 1, metatype = 'purity' },
                },
                xp = { min = 2, max = 4 },
                event = { name = 'lation_coke:lab:addGasoline' }
            },
            [3] = {
                title = locale('table-menu.add-cement-title'),
                description = locale('table-menu.add-cement-desc'),
                icon = 'fas fa-trowel-bricks',
                iconColor = '',
                cement = 'ls_cement',
                -- ⚠️ unique = true の場合、ここの範囲設定は無視できます
                -- ⚠️ unique = false の場合、ここですべてのプレイヤーの範囲を設定できます
                -- 追加するセメントの理想的なパーセンテージ/量
                -- これらの値の範囲外の量は、純度に悪影響を与えます
                range = { min = 15, max = 19 },
                -- 上記の範囲外の場合の純度への最大ペナルティ
                penalty = 20,
                required = {
                    { item = 'ls_coca_base_unf', quantity = 1, remove = true, metatype = 'purity' },
                },
                add = {
                    { item = 'ls_coca_base', quantity = 1, metatype = 'purity' },
                },
                xp = { min = 2, max = 4 },
                event = { name = 'lation_coke:lab:addCement' }
            },
            [4] = {
                title = locale('table-menu.start-heat-title'),
                description = locale('table-menu.start-heat-desc'),
                icon = 'fas fa-fire',
                iconColor = '',
                -- このステップが完了するまでにどれくらい時間がかかりますか？
                -- この期間は分単位です
                duration = 45,
                required = {
                    { item = 'ls_coca_base', quantity = 1, remove = true, metatype = 'purity' }
                },
                add = {
                    { item = 'ls_cocaine_brick', quantity = 1, metatype = 'purity' }
                },
                xp = { min = 25, max = 50 },
                event = { name = 'lation_coke:lab:heatAndDry' }
            },
            [5] = {
                title = locale('table-menu.cook-coke-title'),
                description = locale('table-menu.cook-coke-desc'),
                icon = 'fas fa-flask-vial',
                iconColor = '',
                -- このステップが完了するまでにどれくらい時間がかかりますか？
                -- この期間は分単位です
                duration = 30,
                required = {
                    { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
                    { item = 'ls_baking_soda', quantity = 1, remove = true }
                },
                add = {
                    { item = 'ls_crack_brick', quantity = 1, metatype = 'purity' }
                },
                xp = { min = 5, max = 15 },
                event = { name = 'lation_coke:lab:cookCoke' }
            },
            [6] = {
                title = locale('table-menu.cut-brick-title'),
                description = locale('table-menu.cut-brick-desc'),
                icon = 'fas fa-scissors',
                iconColor = '',
                -- バッチサイズを2倍にするために使用される切断剤
                cutting_agent = 'ls_baking_soda',
                -- 切断時に影響を受ける純度のパーセンテージ
                -- 例: 100%純度のブリックを1つ切断すると、65%のブリックが2つになります
                penalty = 35,
                required = {
                    { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
                    { item = 'ls_crack_brick', quantity = 1, remove = true, metatype = 'purity' }
                },
                add = {
                    { item = 'ls_cocaine_brick', quantity = 2, metatype = 'purity' },
                    { item = 'ls_crack_brick', quantity = 2, metatype = 'purity' }
                },
                xp = { min = 1, max = 3 },
                event = { name = 'lation_coke:lab:cutBrick' }
            },
            [7] = {
                title = locale('table-menu.package-title'),
                description = locale('table-menu.package-desc'),
                icon = 'fas fa-hammer',
                iconColor = '',
                -- ブリックをバッグに詰めるために必要な空のバギーアイテム
                empty_baggy = 'ls_empty_baggy',
                -- どちらのブリックをパッケージ化するかを選択するメニューがポップアップします。両方のアイテムは必要ありません
                -- ブリックタイプを追加する場合は、バッグが同じ順序であることを確認してください
                -- 例: コカインブリックが先頭の場合、コカインバッグは "add" セクションの先頭にある必要があります
                required = {
                    { item = 'ls_cocaine_brick', quantity = 1, remove = true, metatype = 'purity' },
                    { item = 'ls_crack_brick', quantity = 1, remove = true, metatype = 'purity' }
                },
                add = {
                    { item = 'ls_cocaine_bag', min = 10, max = 20, metatype = 'purity' },
                    { item = 'ls_crack_bag', min = 10, max = 20, metatype = 'purity' }
                },
                xp = { min = 3, max = 6 },
                event = { name = 'lation_coke:lab:packageBrick' }
            },
        }
    },

    ----------------------------------------------
    --        ❄️ 消費アイテムのカスタマイズ
    ----------------------------------------------

    consumables = {
        -- ['item_spawn_name'] 消費アイテム名
        ['ls_cocaine_bag'] = {
            -- このアイテムを消費可能にしますか？
            usable = true,
            -- これを消費するにはプレイヤーは何レベルである必要がありますか？
            level = 1,
            -- このアイテムがプレイヤーに与える効果を管理します
            effects = {
                -- enable: この効果を有効にしますか？
                -- amount: 有効な場合、どれだけの体力を適用しますか？
                health = { enable = false, amount = 50 },
                -- enable: この効果を有効にしますか？
                -- amount: 有効な場合、どれだけのアーマーを適用しますか？
                -- max: 複数を消費する場合、プレイヤーが持つことができる最大アーマーはどれくらいですか？
                armor = { enable = true, amount = 100, max = 100 },
                -- enable: この効果を有効にしますか？
                -- multiplier: 有効な場合、プレイヤーの速度をどれだけ増加させますか？（最大は1.49）
                -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒単位）アクティブにしますか
                speed = { enable = true, multiplier = 1.49, duration = 30000 },
                -- enable: この効果を有効にしますか？
                -- effect: タイムサイクル修飾子（詳細はこちら: https://forge.plebmasters.de/timecyclemods）
                -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒単位）アクティブにしますか
                screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
                -- enable: この効果を有効にしますか？
                -- clipset: 適用する移動クリップセット（詳細はこちら: https://github.com/DurtyFree/gta-v-data-dumps/blob/master/movementClipsetsCompact.json）
                -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒単位）アクティブにしますか
                walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
                -- enable: この効果を有効にしますか？
                -- name: カメラシェイク名（詳細はこちら: https://docs.fivem.net/natives/?_0xFD55E49555E017CF）
                -- intensity: カメラシェイクの強度（低いほど少なく、高いほど多い）
                -- duration: 有効な場合、効果をどれくらいの期間（ミリ秒単位）アクティブにしますか
                shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
            }
        },
        ['ls_crack_bag'] = {
            usable = true,
            level = 1,
            effects = {
                health = { enable = false, amount = 50 },
                armor = { enable = true, amount = 100, max = 100 },
                speed = { enable = true, multiplier = 1.49, duration = 30000 },
                screen = { enable = true, effect = 'stoned_monkeys', duration = 30000 },
                walk = { enable = true, clipset = 'move_m@drunk@a', duration = 30000 },
                shake = { enable = true, name = 'DRUNK_SHAKE', intensity = 2.0, duration = 30000 }
            }
        },
    }

}