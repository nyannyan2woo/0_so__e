Config, Seconds, Minutes, Hours = {}, 1000, 60000, 3600000 -- Do not touch

-- 必要な場合にのみ使用し、サポートの指示があった場合、または何をしているかわかる場合に使用してください
-- 注意: デバッグ機能を有効にすると、resmonが大幅に増加する可能性があります
-- 特に必要な場合を除き、本番環境では常に無効にする必要があります
Config.Debug = false

-- 更新が利用可能な場合にサーバーコンソール経由で通知を受け取りますか？
-- はいの場合は true、いいえの場合は false
Config.VersionCheck = true

-- 以下のコンテキストメニューを選択してください
-- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx' または 'qb'
Config.Menu = 'lation_ui'

-- ターゲットシステム - オプション: 'ox_target', 'qb-target', 'qtarget', 'custom' & 'none'
-- 'custom' は client/functions.lua に追加する必要があります
-- 'none' の場合、ターゲットの代わりにTextUIが使用されます
Config.Target = 'none'

-- 以下の進行状況バーシステムを設定してください
-- 利用可能なオプション: 'lation_ui', 'ox_lib', 'qbcore' & 'custom'
-- 'custom' は client/functions.lua に追加する必要があります
-- カスタム進行状況バーもアニメーションをサポートしている必要があります
Config.Progress = 'lation_ui'

-- 通知システム - オプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify' & 'custom'
-- 'custom' は client/functions.lua に追加する必要があります
Config.Notify = 'lation_ui'

-- 以下は Config.Target = 'none' の場合のみ使用されます
-- ターゲットが設定されていない場合、インタラクションに使用されるキーになります
-- その他のオプションはこちら: https://docs.fivem.net/docs/game-references/controls/
Config.InteractKey = 38 -- E

-- お金が準備できたことをユーザーにどのように通知しますか（倉庫を使用している場合）？
-- 以下に電話システムを設定するか、デフォルトのアラートを使用するために 'none' に設定できます
-- オプション: 'qb-phone', 'npwd', 'qs-smartphone', 'qs-smartphonepro', 'lb-phone', 'gksphone', 'yseries', 'custom' または 'none'
-- 'custom' の場合、client & server functions.lua を介してイベントを設定する必要があります
-- 'none' の場合、ox_lib のデフォルトのアラートダイアログが使用されます
Config.Phone = 'none'

-- プレイヤーがマネーロンダリングを開始する方法をカスタマイズ
Config.Start = {
    -- spawnPed = true の場合、メインの開始NPCが通常通りスポーンします
    -- false の場合、開始NPCはまったく存在しません
    -- このオプションは、エクスポートなどを介してメインメニューを開く場所、
    -- いつ、どのように処理したい人のために存在します
    spawnPed = true,
    -- 有効な場合、上記のNPCはリストされた場所のいずれか1つだけにランダムにスポーンします
    -- false の場合、ペッドは以下のすべての場所に通常通りスポーンします
    randomizeSpawn = false,
    -- 以下の "require" オプションは、開始ペッドと対話/マネーロンダリングプロセスを開始するために
    -- 特定のアイテムを要求するためのものです
    -- アイテムを要求したい場合は、require を true に設定し、以下にアイテムを設定します
    require = false,
    -- 上記で require = true の場合、どのアイテムを要求しますか？
    -- require = false の場合、これは無視できます
    -- アイテムを削除したい場合は remove = true、そうでない場合は remove = false に設定します
    item = { name = 'water', quantity = 1, remove = false },
    -- Render は、開始ペッドがスポーンするためにプレイヤーがその場にいなければならない距離です
    -- この半径の外にいると、再び必要になるまでペッドは削除されます
    render = 75,
    -- ペッドをスポーンする場合、ペッドのモデルは何ですか？
    -- ここで詳細を見つけることができます: https://docs.fivem.net/docs/game-references/ped-models/
    model = 'g_m_importexport_01',
    -- 以下は、ペッドがスポーンする場所です
    -- vector4 座標を使用するようにしてください
    locations = {
        vec4(138.6853, 270.6841, 109.9740, 73.0269),
        -- 必要に応じてここにスポーンを追加します
    }
}

-- 警察関連の設定を以下でカスタマイズ
Config.Police = {
    -- 以下に警察のジョブをリストします
    jobs = { 'police', 'sheriff' },
    -- 洗浄を開始するために警察がオンラインであることを要求しますか？
    -- true の場合、これは倉庫ではなく、ペッド契約にのみ適用されます
    require = false,
    -- 上記で require = true の場合、何人オンラインである必要がありますか？
    count = 3,
    -- 警察のジョブを持つプレイヤーに、レベル、キーなどのすべての要件を無視して
    -- 倉庫へのアクセスを許可しますか？
    warehouseAccess = true,
    -- 警察へのディスパッチ通知を有効にしますか？警察はプレイヤーが拒否された場合にのみ
    -- 通知されます - したがって、この機能を使用するには Config.Reject.enable が
    -- true である必要があります
    enableDispatch = false,
    -- enableDispatch = true の場合、どのディスパッチシステムを使用しますか？利用可能な
    -- オプションは: 'linden_outlawalert', 'cd_dispatch', 'ps-dispatch', 'qs-dispatch',
    -- 'core_dispatch', 'rcore_dispatch', 'aty_dispatch' & 'custom'
    -- 'custom' は client/functions.lua に手動で追加する必要があります
    dispatchSystem = 'none'
}

-- 必要に応じてアイテムのスポーン名をここでカスタマイズ
Config.Items = {
    key = 'warehouse_key',
    uncountedMoney = 'uncounted_money'
}

-----------------------------------------------------------------
-----------------------------------------------------------------
-- ⛔ QBCore ユーザー: 重要 - 以下を注意深くお読みください ⛔
-----------------------------------------------------------------

-- 以下のオプションは、物事が機能するために極めて重要です
-- 希望どおりに機能することを確認してください。注意深く読んでオプションを設定してください
Config.QBCore = {
    -- 汚れたお金のアイテム（markedbillsなど）がメタデータを使用する場合
    -- （メタデータとは、アイテムにカーソルを合わせたときの「価値」または「金額」を意味します）
    -- メタデータを true に設定してください！ false の場合、それはカウントされます
    -- あなたの汚れたお金のアイテムを 1:1 としてカウントします。つまり、1つの markedbills アイテムは $1 に等しくなります
    metadata = true,
    -- メタデータを使用する場合、見つかったすべての汚れたお金の合計値をカウント（加算）しますか？
    -- インベントリで？はいの場合は true に設定します
    -- false の場合、最初に見つかった汚れたお金のアイテムのみを考慮します
    -- インベントリ内で一度に1つのバッグを処理します（合計を加算しません）
    countTotal = true,
    -- メタデータを使用する場合、単にアイテム全体を洗浄しますか？
    -- 価値？たとえば、プレイヤーが $100 または $10,000 の markedbills を持っている場合
    -- それは関係ありません、合計値が何であれ洗浄します
    -- countTotal = true の場合、インベントリで見つかったすべてのものを洗浄します
    takeAll = false,
    -- メタデータを使用しないが、ロンダリングスクリプトに割り当てさせたい場合
    -- 汚れたお金のアイテム（またはアイテム）に独自の値を割り当てるには、ここで実行できます
    -- hardValues = true に設定し、以下にアイテムの値をリストします
    -- このオプションは、既存の価値や値を完全に無視します
    -- たとえば、markedbills を常にそれぞれ $500 の価値にしたい場合
    hardValues = false,
    -- 値をハード割り当てしたいアイテムを以下にリストします
    -- 以下の形式に従うようにしてください
    items = {
        ['markedbills'] = 500,
        -- ['cashrolls'] = 250,
        -- 上記と同じ形式に従ってここにアイテムを追加します
    }
}

-- 新しい契約ミッションを開始するときの車両関連のオプション
Config.Vehicle = {
    -- プレイヤーが新しい契約実行を開始するとき、
    -- 彼らが使用するための車両をスポーンしますか？
    spawn = true,
    -- 車両をスポーンする場合、テレポート（ワープ）しますか？
    -- プレイヤーを直接車両の運転席に？
    teleport = true,
    -- 車両をスポーンする場合、どれだけの燃料で車両をスポーンしますか？
    -- 浮動小数点値を使用するようにしてください！それは単に
    -- ここで設定した数字に .0 を含めることを意味します
    fuel = 85.0,
    -- 車両をスポーンする場合、どのモデルをスポーンする必要がありますか？
    models = { 'baller3', 'fugitive' },
    -- 上記のリストに複数のモデルを追加する場合、
    -- random = true に設定して、リストからモデルをランダムに選択できます
    random = true,
    -- spawn = true の場合に提供される車両に対して
    -- プレイヤーに支払いを要求しますか？
    requireDeposit  = true,
    -- requireDeposit が true の場合、費用はいくらですか？
    depositPrice = 500,
    -- プレイヤーが契約実行を終了したとき、
    -- デポジットを返金する必要がありますか？車両は返却する必要があります
    -- メインメニューの最初の開始場所で
    returnDeposit = true,
    -- returnDeposit が true の場合、いくら返金する必要がありますか？
    depositReturn = 250,
    -- requireDeposit が true の場合、どのアカウントを使用しますか
    -- レンタルと返却デポジットの支払いに？ (cash または bank)
    account = 'cash',
    -- 車両をスポーンする場合、車両はどこにスポーンする必要がありますか？
    -- 複数の開始ペッドの場所がある場合、確認してください
    -- 各場所に車両がスポーンする場所があること
    -- スクリプトはどの場所にスポーンするかを自動的に検出します
    -- プレイヤーの場所に基づいて車両を
    locations = {
        vec4(125.9180, 278.1013, 109.9004, 249.8953),
        -- 必要に応じてここに場所を追加
    }
}

-- ここで拒否設定をカスタマイズ
-- 拒否は、洗浄中にペッドがプレイヤーを拒否する機能です
-- 下記の Config.Levels でレベルごとの拒否チャンスをカスタマイズできます
Config.Reject = {
    -- 拒否を有効にしますか？ true の場合、プレイヤーは拒否される可能性があります
    -- それぞれのレベルで設定されたチャンスに基づいて。 false の場合、プレイヤーは
    -- （もちろん、お金が足りない場合を除いて）決して拒否されません
    enable = true,
    -- 拒否が有効な場合、ミッションを通常どおり継続することを許可しますか？
    -- そうする場合は true に設定します。ミッションを終了させたい場合
    -- 拒否後に、continue を false に設定します
    continue = true
}

-- すべての倉庫関連のオプションを以下でカスタマイズ
Config.Warehouse = {
    -- 以下は、プレイヤーが倉庫の使用を解除するレベルです
    unlockAt = 5,
    -- デフォルトでは、プレイヤーが倉庫の使用を解除するレベルに達すると
    -- 以前のレベルのように契約を実行することはできなくなります
    -- ただし、両方のオプションを許可したい場合は
    -- allowContracts を true に設定できます
    allowContracts = false,
    -- 以下のオプションを使用すると、倉庫に入って使用できる人とできない人をカスタマイズできます
    -- requireLvl が true の場合、プレイヤーが入るために正しいレベル（unlockAt）である必要があります
    -- false に設定すると、入るために必要なキーを持っている限り、誰でも入る（および使用する）ことができます
    requireLvl = true,
    -- プレイヤーに倉庫のキーを購入させる必要がある場合は
    -- requirePurchase が true に設定されていることを確認してください。 false に設定すると、キーは
    -- 無料でプレイヤーに与えられます
    requirePurchase = true,
    -- 上記で requirePurchase が true に設定されている場合、キーの価格はいくらですか？
    -- requirePurchase が false の場合、これは無視できます
    price = 2500,
    -- 上記で requirePurchase が true に設定されている場合、どのアカウントを使用して
    -- キーを購入しますか？ オプションは 'bank' と 'cash' - requirePurchase が
    -- false の場合、これも無視できます
    account = 'cash',
    -- プレイヤーが倉庫の使用を解除したとき、
    -- 倉庫に入る場所を示すブリップを作成しますか？
    showBlip = true,
    -- 以下は、プレイヤーが倉庫に入ることができる場所です
    -- これは、有効な場合にブリップが表示される場所と同じです
    enterAt = vec4(1142.6859, -986.6674, 45.9059, 96.6889),
    -- exitAt は、プレイヤーが入ったときにテレポートされる座標です
    -- それはまた、プレイヤーが倉庫を出るのと同じポイントになります
    -- そして、彼らは enterAt にテレポートされます
    exitAt = vec4(1138.0872, -3199.1570, -39.6657, 181.2139),
    -- Rotate は、出口と入口でプレイヤーを回転させる度数です
    -- テレポートされたときにプレイヤーが正しい方向を向いていることを確認するため
    rotate = 180,
    -- カスタムの場所を使用していて、それがMLOである場合は、
    -- IsMLO を true に設定してください。これにより、入口/出口ポイントの使用などが無効になります
    isMLO = false,
    -- Duration は、お金の洗浄サイクルが完了して
    -- 拾い上げてカウントできるようになるまでにかかる時間（時間、分+秒）です。これは
    -- 必要に応じて長くすることができます - スクリプトは、サーバーの再起動時や
    -- プレイヤーのログアウトイベント時に残り時間を保存し、中断したところから再開します
    duration = 1 * Hours + 25 * Minutes + 30 * Seconds,
    -- 以下は、プレイヤーが使用できる洗濯機の場所です
    -- 汚れたお金を入れて洗浄プロセスを開始するために
    washer = {
        coords = vec3(1122.4, -3193.5, -40.35), -- 洗濯機自体の場所
        size = vec3(1.7, 4.35, 2.1), -- 洗濯機周辺のゾーンのサイズ（TextUIのみ）
        rotation = 0, -- ゾーンの回転（TextUIのみ）
        debug = false, -- ゾーンデバッグの有効化または無効化（視覚表示、TextUIのみ）
    },
    -- 以下は、各マネーカウントマシンの設定です
    counters = {
        [1] = {
            coords = vec3(1116.0024, -3194.9362, -40.5910), -- カウントマシン自体の場所
            size = vec3(3.2, 1.0, 1.8), -- マシン周辺のゾーンのサイズ（TextUIのみ）
            rotation = 0, -- ゾーンの回転（TextUIのみ）
            radius = 0.35, -- マシン周辺の半径のサイズ（ターゲットのみ）
            offset = vec3(0.6327, 0.0385, -0.8101), -- 椅子がスポーンし、プレイヤーが座るマシンからのオフセット
            heading = 88.88, -- お金を数えるときにプレイヤーが向いている方向
            debug = false -- ゾーンデバッグの有効化または無効化（視覚表示、TextUIのみ）
        },
        [2] = {
            coords = vec3(1116.0164, -3196.2717, -40.5917),
            size = vec3(3.2, 1.0, 1.8),
            rotation = 0,
            radius = 0.35,
            offset = vec3(0.5997, 0.0329, -0.8074),
            heading = 88.88,
            debug = false
        },
        -- 必要に応じてここにさらに追加します
        -- 注：これはマネーカウンターをスポーンするのではなく、存在するものを対話可能にするだけです
        -- 上記と同じ形式に従うようにしてください
    },
    -- お金の洗浄とカウントの制限を以下に設定します
    limits = {
        washing = {
            -- 1回のサイクルで洗浄できる最小金額
            min = 500,
            -- 1回のサイクルで洗浄できる最大金額
            -- （ミッション/契約の制限を変更するには、Config.Levels に移動してください）
            max = 25000
        },
        counting = {
            -- プレイヤーが1回の着席で数えることができる最小金額を設定します
            min = 0,
            -- プレイヤーが1回の着席で数えることができる最大金額を設定します
            max = 15000,
            -- Interval は、1回のアニメーションが再生される金額です
            -- たとえば、プレイヤーが $5,000 の uncounted_money を数えていて
            -- 間隔が 2500 に設定されている場合、それは2回再生されることを意味します
            -- $10,000 を数える場合は4回再生されます
            -- カウントされるお金 $2,500 ごとに1回再生されるためです
            interval = 2500
        }
    },
    -- プレイヤーがお金を数えている間、以下のアクションは無効になります
    -- アニメーション中に。 こちらで詳細を見つけることができます: https://docs.fivem.net/docs/game-references/controls/
    -- client/functions.lua にある空の関数 StartedCounting & StoppedCounting を使用して
    -- さらなる制御/統合を行うこともできます
    disable = {
        200, -- ESC / ポーズメニュー
        36, -- 左 CTRL / ダック
        -- 必要に応じて追加または削除
    },
    -- ConvertTo は、uncounted_money を何に変換するかです
    -- ユーザーがカウントプロセスを完了したとき。 デフォルトではこれは
    -- 現金ですが、'cash' または 'bank' に設定できます
    convertTo = 'cash'
}

-- レベリングシステムを以下でカスタマイズ
Config.Levels = {
    [1] = { -- レベル 1
        -- レベル1で使用される汚れたお金のアイテム
        dirtyMoney = 'markedbills',
        -- 税率は、洗浄プロセス中に失われる汚れたお金の量です
        -- たとえば、25%の税率は、プレイヤーが $1,000 の汚れたお金に対して
        -- $750 のきれいな現金を受け取ることを意味します
        taxRate = 25,
        -- 以下のクリーンオプションは、各ペッドが1回の契約で洗浄する
        -- 最小および最大金額です。 ペッドはこれら2つの値の間でランダムに金額を選択し
        -- その金額の洗浄を申し出ます
        clean = { min = 500, max = 1000 },
        -- AddXP は、洗浄契約ごとに報酬として与えられる経験値です
        -- ここでレベリングの速度を調整できます
        addXP = 1000,
        -- 交渉が有効な場合、これはプレイヤーの交渉が受け入れられる確率（パーセンテージ）です
        negotiateChance = 60,
        -- 交渉が有効で、ペッドが正常に受け入れた場合
        -- これは洗浄金額のオファーが増加する量です
        -- これは割合なので、25 は 25% のブーストを意味します ($1000 のオファーは $1250 になります)
        multiplier = 25,
        -- Config.Reject.enable が true の場合、RejectChance は
        -- このレベルでの洗浄契約中にプレイヤーが拒否される確率（パーセンテージ）です
        rejectChance = 20
    },
    [2] = { -- レベル 2
        dirtyMoney = 'markedbills',
        taxRate = 20,
        clean = { min = 750, max = 1500 },
        addXP = 500,
        negotiateChance = 70,
        multiplier = 50,
        rejectChance = 15
    },
    [3] = { -- レベル 3
        dirtyMoney = 'markedbills',
        taxRate = 15,
        clean = { min = 1000, max = 2000 },
        addXP = 250,
        negotiateChance = 80,
        multiplier = 75,
        rejectChance = 10
    },
    [4] = { -- レベル 4
        dirtyMoney = 'markedbills',
        taxRate = 10,
        clean = { min = 1500, max = 3000 },
        addXP = 125,
        negotiateChance = 90,
        multiplier = 100,
        rejectChance = 5
    },
    [5] = { -- レベル 5
        dirtyMoney = 'markedbills',
        taxRate = 5,
        -- (倉庫の洗浄制限を変更するには Config.Warehouse.limits.washing に移動してください)
        clean = { min = 2000, max = 10000 },
        -- プレイヤーが最終レベルに達すると、XPはそれ以上獲得されません
        -- 以下の addXP に何があっても関係ありません
        addXP = 1,
        -- 最終レベル（デフォルトではレベル5）では、以下のオプション
        -- negotiateChance, multiplier & rejectChance は、上記の allowContracts が
        -- true の場合にのみ使用され、それ以外の場合は関係ありません
        negotiateChance = 95,
        multiplier = 125,
        rejectChance = 0
    },
    -- 好きなようにカスタムオプションでレベルを追加または削除してください！
    -- 正しい形式に従い、番号を正しく増やすようにしてください
}

-- これは、各レベル間で獲得しなければならない経験値の量です。
-- たとえば、レベル1からレベル2にするには、100,000 XPを獲得する必要があります
-- レベル2からレベル3の場合も同様です。レベル間でレベリングが発生する速度を
-- カスタマイズするには、単に各レベルの "addXP" を調整するのが最善です
Config.LevelUp = 100000

-- プレイヤーにペッドと交渉する能力を許可したい場合
-- 彼らが洗浄を申し出ている金額に対して、より高い金額を得るチャンスのために
-- true に設定します。そうでない場合は false に設定します。Config.Levels で
-- プレイヤーが成功する確率をカスタマイズできます
Config.AllowNegotiations = true

-- ブリップの表示方法をカスタマイズ
Config.Blips = {
    start = { -- お金の洗浄を開始するためのペッドの場所
        enabled = true, -- マネーロンダリングを開始する場所を示すブリップを表示しますか？
        sprite = 47, -- スプライトID: https://docs.fivem.net/docs/game-references/blips/
        color = 0, -- 色: https://docs.fivem.net/docs/game-references/blips/#blip-colors
        scale = 0.8, -- マップ上のブリップのサイズ
        label = 'Money Laundering' -- ブリップ名/ラベル
    },
    contracts = { -- 様々なペッドとお金を洗浄するときに使用されるブリップ
        sprite = 500,
        color = 2,
        scale = 0.8,
        label = 'Money Contract'
    },
    warehouse = { -- 有効な場合、倉庫の場所に使用されるブリップ
        sprite = 473,
        color = 17,
        scale = 0.8,
        label = 'Warehouse'
    }
}

-- ここですべてのアニメーションを管理します
Config.Animations = {
    accept = {
        label = 'Making deal..',
        duration = 5000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'missfam4', clip = 'base' },
        prop = { model = `p_amb_clipboard_01`, bone = 36029, pos = vec3(0.160, 0.080, 0.100), rot = vec3(-130.00, -50.00, 0.00) }
    },
    negotiate = {
        label = 'Negotiating..',
        duration = 6000,
        position = 'bottom',
        useWhileDead = false,
        canCancel = true,
        disable = { move = true, car = true, combat = true },
        anim = { dict = 'misscarsteal4@actor', clip = 'actor_berating_loop' },
        prop = {  }
    },
    wash = {
        duration = 1500,
        anim = { dict = 'missfbi_s4mop', clip = 'put_down_bucket' }
    },
    count = {
        anim = { dict = 'anim@amb@business@cfm@cfm_counting_notes@', clip = 'note_counting_counter' },
        props = {
            chair = 'v_corp_cd_chair',
            briefcase = 'prop_cash_case_02',
            cash = 'bkr_prop_money_sorted_01',
            cashWrapped = 'bkr_prop_money_wrapped_01'
        }
    }
}

-- 契約中NPCがスポーンする様々な場所
Config.Locations = {
    vec4(130.2, -1274.99, 29.24, 0.0),
    vec4(162.11, -1268.32, 29.24, 160.62),
    vec4(161.79, -1286.42, 29.23, 110.34),
    vec4(339.17, -1263.60, 31.96, 74.82),
    vec4(306.83, -1246.18, 29.57, 08.58),
    vec4(343.40, -1190.28, 29.31, 164.21),
    vec4(109.19, -1804.54, 26.50, 179.38),
    vec4(524.42, -1831.14, 28.28, 249.49),
    vec4(959.98, -2373.81, 30.50, 0.0),
    vec4(1062.27, -2408.46, 29.97, 92.5),
    vec4(1140.85, -2332.80, 31.34, 166),
    vec4(1126.36, -2096.35, 31.08, 278.05),
    vec4(990.39, -1791.78, 31.63, 181.86),
    vec4(1010.55, -1778.92, 31.42, 83.75),
    vec4(977.90, -1708.98, 30.09, 87.52),
    vec4(990.39, -1660.08, 29.44, 0.0),
    vec4(980.86, -1383.56, 31.54, 29.47),
    vec4(935.19, -1520.58, 31.06, 0.0),
    vec4(998.07, -1489.55, 31.41, 278.1),
    vec4(925.84, -1483.28, 30.11, 50.98),
    vec4(886.78, -1516.57, 30.18, 223.01),
    vec4(886.59, -1584.52, 30.95, 261.39),
    vec4(536.46, -1650.18, 29.26, 259.47),
    vec4(491.19, -1705.30, 29.35, 325.47),
    vec4(353.25, -1850.11, 27.71, 217.45),
    vec4(201.78, -2002.96, 18.86, 234),
    vec4(-592.01, -1767.25, 23.18, 235.15),
    vec4(-1110.98, -1046.5, 2.153, 214.28),
    vec4(1064.63, -2407.89, 29.98, 106.59),
    vec4(1078.87, -2443.25, 29.44, 89.69),
    vec4(953.97, -2529.31, 28.30, 171.31),
    vec4(402.26, -2188.63, 5.917, 243.06),
    vec4(-353.99, -1490.89, 30.26, 142.04),
    vec4(-312.45, -1342.49, 31.32, 42.24),
    vec4(-342.67, -899.03, 31.07, 210.86),
    vec4(-317.44, -772.25, 33.96, 28.59),
    vec4(-241.84, -785.30, 30.45, 71.82),
    vec4(-203.62, -758.88, 30.45, 196.89),
    vec4(-222.69, -641.03, 33.39, 142),
    vec4(66.48, -266.27, 48.18, 214.91),
    vec4(117.78, -265.57, 46.33, 114.95),
    vec4(133.96, -258.22, 46.33, 118.89),
    vec4(169.79, -279.18, 50.27, 297.43),
    vec4(475.16, -105.43, 63.15, 190.25),
    vec4(741.29, 140.41, 80.76, 188.99),
    vec4(777.54, 210.96, 83.64, 158.28),
    vec4(955.28, -194.77, 73.20, 229.43),
    vec4(960.85, -210.85, 73.21, 37.49),
    vec4(974.39, -192.00, 73.20, 37.49),
    vec4(966.46, -203.89, 76.25, 249.08),
    vec4(955.76, -195.02, 79.29, 143.23),
    vec4(791.53, -102.66, 82.03, 335.53),
    vec4(820.06, -124.38, 80.22, 296.63),
    vec4(501.94, -612.38, 24.75, 280.33),
    vec4(460.75, -698.17, 27.42, 41.48),
    vec4(367.92, -776.74, 29.26, 95.15),
    vec4(378.51, -900.16, 29.41, 197.58),
    vec4(-3.72, -1086.34, 26.67, 65.54),
    vec4(-17.60, -1037.06, 28.90, 0.0),
    vec4(45.53, -1011.18, 29.52, 109.67),
    vec4(2.23, -1024.41, 28.96, 103.56),
    vec4(-771.69, -1028.13, 14.13, 254.41),
    vec4(-661.76, -710.01, 26.89, 193.05),
    vec4(-617.15, -683.27, 32.23, 222.4),
    vec4(-584.07, -698.28, 31.23, 176.97),
    vec4(-577.70, -676.53, 36.28, 125.32),
    vec4(-592.16, -751.90, 36.28, 4.41),
    vec4(-594.46, -748.81, 29.48, 225.83),
    vec4(-574.89, -800.02, 30.68, 40.03),
    vec4(-590.54, -797.30, 26.04, 223.14),
    vec4(-1000.58, -945.72, 2.15, 160.51),
    vec4(-1055.29, -971.06, 2.00, 198.95),
    vec4(-1072.79, -988.20, 2.15, 249.84),
    vec4(-1044.78, -1168.74, 2.15, 302.46),
    vec4(-1083.22, -1140.00, 2.15, 250.54),
    vec4(-1122.34, -1237.42, 3.17, 295.03),
    vec4(-1112.39, -1258.41, 6.65, 65.14)
}

-- 契約NPCとして使用される様々なNPCモデル
Config.Models = {
    'a_m_m_afriamer_01',
    'u_m_m_aldinapoli',
    's_m_y_ammucity_01',
    's_m_m_ammucountry',
    'u_m_y_antonb',
    'csb_anton',
    'g_m_m_armboss_01',
    'g_m_m_armgoon_01',
    'g_m_y_armgoon_02',
    'g_m_m_armlieut_01',
    'ig_ashley',
    'cs_ashley',
    's_m_y_autopsy_01',
    's_m_m_autoshop_01',
    's_m_m_autoshop_02',
    'ig_money',
    'csb_money',
    'g_m_y_azteca_01',
    'u_m_y_babyd',
    'g_m_y_ballaeast_01',
    'g_m_y_ballaorig_01',
    'g_f_y_ballas_01',
    'ig_ballasog',
    'csb_ballasog',
    'g_m_y_ballasout_01',
    's_m_y_barman_01',
    's_f_y_bartender_01',
    'u_m_y_baygor',
    's_f_y_baywatch_01',
    's_m_y_baywatch_01',
    'a_f_m_beach_01',
    'a_f_y_beach_01',
    'a_m_m_beach_01',
    'a_m_o_beach_01',
    'a_m_y_beach_01',
    'a_m_m_beach_02',
    'a_m_y_beach_02',
    'a_m_y_beach_03',
    'a_m_y_beachvesp_01',
    'a_m_y_beachvesp_02',
    'ig_benny',
    'ig_beverly',
    'cs_beverly',
    'a_f_m_bevhills_01',
    'a_f_y_bevhills_01',
    'a_m_m_bevhills_01',
    'a_m_y_bevhills_01',
    'a_f_m_bevhills_02',
    'a_f_y_bevhills_02',
    'a_m_m_bevhills_02',
    'a_m_y_bevhills_02',
    'a_f_y_bevhills_03',
    'a_f_y_bevhills_04',
    'u_m_m_bikehire_01',
    'u_f_y_bikerchic',
    'a_m_y_breakdance_01',
    'u_m_y_burgerdrug_01',
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
    'a_m_o_salton_01',
    'a_m_y_salton_01',
    'a_m_m_salton_02',
    'a_m_m_salton_03',
    'a_m_m_salton_04',
    'g_m_y_salvaboss_01',
    'g_m_y_salvagoon_01',
    'g_m_y_salvagoon_02',
    'g_m_y_salvagoon_03',
    'a_m_y_vinewood_04',
}