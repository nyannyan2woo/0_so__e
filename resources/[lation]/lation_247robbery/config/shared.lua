return {

    -- 🔎 もっと高品質なスクリプトを探していますか？
    -- 🛒 今すぐショップ: https://lationscripts.com
    -- 💬 Discordに参加: https://discord.gg/9EbY4nM5uu
    -- 😢 このオプションをfalseのままにするなんて！
    YouFoundTheBestScripts = false,

    ----------------------------------------------
    --        🛠️ 下記で基本設定を行う
    ----------------------------------------------

    setup = {
        -- 必要に応じてのみ使用してください。サポートから指示されるか、内容を理解している場合のみ有効にしてください
        -- 注意: デバッグ機能を有効にするとリソース使用量が大幅に増加します
        -- 本番環境では常に無効にしてください
        debug = false,
        -- 下記でインタラクションシステムを設定してください
        -- 利用可能なオプション: 'ox_target', 'qb-target', 'interact' & 'custom'
        -- 'custom'はclient/functions.luaに追加する必要があります
        interact = 'ox_target',
        -- 下記で通知システムを設定してください
        -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify', 'mythic_notify' & 'custom'
        -- 'custom'はclient/functions.luaに追加する必要があります
        notify = 'lation_ui',
        -- 下記でプログレスバーシステムを設定してください
        -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'qbcore' & 'custom'
        -- 'custom'はclient/functions.luaに追加する必要があります
        -- カスタムプログレスバーはアニメーションもサポートする必要があります
        progress = 'lation_ui',
        -- 下記でミニゲーム(スキルチェック)システムを設定してください
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        minigame = 'lation_ui',
        -- 下記でアラートと入力ダイアログシステムを設定してください
        -- 利用可能なオプション: 'lation_ui', 'ox_lib' & 'custom'
        dialogs = 'lation_ui',
        -- 更新が利用可能な場合、サーバーコンソール経由で通知を受け取りたいですか？
        -- 有効にする場合はtrue、無効にする場合はfalse
        version = true,
        -- ストア強盗が正常に開始されると、クールダウンが開始されます
        -- これはプレイヤーごとのクールダウンであり、グローバルクールダウンではありません(単位：秒)
        cooldown = 600,
        -- デフォルトでは、プレイヤーベースのクールダウンはこのグローバルクールダウンでオーバーライドされます
        -- これにより、クールダウンが終了するまで、すべてのストアでのすべてのプレイヤーの強盗が防止されます
        -- より柔軟なプレイヤーベースのクールダウンオプションを希望する場合は、グローバルを無効にしてください
        -- ここでのduration変数も上記と同じく秒単位です
        global = { enable = true, duration = 600 }
    },

    ----------------------------------------------
    --        👮 警察オプションの設定
    ----------------------------------------------

    police = {
        -- 強盗を開始するには、何人の警察がオンラインである必要がありますか？
        count = 1,
        -- 下記に警察職業を追加してください
        jobs = { 'police', 'sheriff' },
        -- ディスパッチシステムを設定してください
        -- 利用可能なオプション: 'cd_dispatch', 'ps-dispatch', 'qs-dispatch'
        -- 'core_dispatch', 'rcore_dispatch', 'aty_dispatch', 'op-dispatch',
        -- 'origen_police', 'emergencydispatch', 'lb-tablet' & 'custom'オプション
        dispatch = 'custom',
        -- リスク機能は、強盗中にオンラインの警察の数に基づいて
        -- プレイヤーの報酬支払いを増加させる機能です
        -- リスク機能を有効にしますか？
        risk = true,
        -- risk = trueの場合、percentは報酬支払いがどれだけ増加するかを示します
        -- オンライン中のすべての警察に対するパーセンテージで表されます。percent = 10で
        -- 警察が3人オンラインの場合、報酬支払いは30%増加します
        percent = 10
    },

    ----------------------------------------------
    --        🏪 レジスター強盗の設定
    ----------------------------------------------

    registers = {
        -- 下記でレジスターを強盗するのに必要な必須アイテム名を設定してください
        item = 'lockpick',
        -- 下記でミニゲーム(スキルチェック)難易度をカスタマイズしてください
        minigame = {
            -- 下記でスキルチェック難易度レベルを設定してください
            -- 'easy'、'medium'または'hard'を任意の順序で設定できます
            -- どの量/数でも設定できます。スキルチェックについてもっと詳しく学んでください
            -- こちら: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
            difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy','easy', },
            -- 'inputs'はスキルチェック
            -- ミニゲームに使用されるキーです。任意のキーに設定できます
            inputs = { 'W', 'A', 'S', 'D' }
        },
        -- 成功したレジスター強盗の後、どのアイテムを報酬として与えたいですか？
        -- { item = 'some_item', min = 1, max = 1, chance = 100, metadata = { ['key'] = value } }
        -- metadataテーブルはオプションです
        -- 'item'は'cash'または'bank'などのアカウントにすることもできます
        reward = {
            { item = 'black_money', min = 750, max = 1250, chance = 100 },
            -- { item = 'markedbills', min = 1, max = 1, chance = 100, metadata = { ['worth'] = math.random(750, 1250) } }
            -- 同じフォーマットに従って、アイテムを追加または削除してください
        },
        -- プレイヤーがレジスターのロックピックに失敗した場合
        -- ロックピックが壊れる可能性があります。パーセンテージで
        -- ロックピックが壊れる可能性をどのくらいにしたいですか？ 壊れないようにするには0を設定
        -- 毎回壊れるようにするには100を設定
        breakChance = 50,
        -- プレイヤーがレジスターの強盗に成功した後、この"noteChance"で彼らは
        -- 金庫のPINを"レジスターの下から""見つける"ことができ、コンピュータハッキング
        -- ステップをスキップできます。パーセンテージで、このノートを見つける確率はどのくらいですか？
        noteChance = 10
    },

    ----------------------------------------------
    --        🖥️ コンピュータハッキングの設定
    ----------------------------------------------

    computers = {
        -- プレイヤーがコンピュータをハッキングしようとしているとき、何回の
        -- 試行を許可しますか？ デフォルトでは、3回の失敗試行の後
        -- 強盗は終了し、それ以上進みません
        maxAttempts = 3,
        -- アンケートハックを有効にしたいですか？ trueの場合、これはスキルチェックハックを
        -- プレイヤーが正しく答える必要のある一連の質問に置き換えます
        questionnaire = false,
        -- 下記でミニゲーム(スキルチェック)難易度をカスタマイズしてください
        minigame = {
            -- 下記でスキルチェック難易度レベルを設定してください
            -- 'easy'、'medium'または'hard'を任意の順序で設定できます
            -- どの量/数でも設定できます。スキルチェックについてもっと詳しく学んでください
            -- こちら: https://overextended.dev/ox_lib/Modules/Interface/Client/skillcheck
            difficulty = { 'easy', 'easy', 'easy', 'easy', 'easy','easy', },
            -- 'inputs'はスキルチェック
            -- ミニゲームに使用されるキーです。任意のキーに設定できます
            inputs = { 'W', 'A', 'S', 'D' }
        },
    },

    ----------------------------------------------
    --        🔐 金庫強盗の設定
    ----------------------------------------------

    safes = {
        -- プレイヤーが金庫をハッキングしようとしている(PINを入力している)とき、何回の
        -- 試行を許可しますか？ デフォルトでは、3回の失敗試行の後
        -- 強盗は終了し、進みません(報酬は受け取りません)
        maxAttempts = 3,
        -- 成功したレジスター強盗の後、どのアイテムを報酬として与えたいですか？
        -- { item = 'some_item', min = 1, max = 1, chance = 100, metadata = { ['key'] = value } }
        -- metadataテーブルはオプションです
        -- 'item'は'cash'または'bank'などのアカウントにすることもできます
        reward = {
            { item = 'black_money', min = 20000, max = 70000, chance = 100 },
            -- { item = 'markedbills', min = 1, max = 1, chance = 100, metadata = { ['worth'] = math.random(2000, 7000) } }
            -- 同じフォーマットに従って、アイテムを追加または削除してください
        },
    },

    ----------------------------------------------
    --     ❓ オプションのアンケート設定
    ----------------------------------------------

    questionnaire = {
        questions = {
            [1] = {
                type = 'select',
                label = '質問 #1',
                description = 'このコンビニの名前は？',
                icon = 'fas fa-store',
                required = true,
                options = {
                    { value = 1, label = '24/7スーパーマーケット' },
                    { value = 2, label = 'ディナーホール' },
                    { value = 3, label = 'LTD ガソリンスタンド' },
                    { value = 4, label = 'ロビンソンズ' },
                }
            },
            [2] = {
                type = 'select',
                label = '質問 #2',
                description = '防犯カメラの台数は何台？',
                icon = 'fas fa-camera',
                required = true,
                options = {
                    { value = 1, label = '2台' },
                    { value = 2, label = '4台' },
                    { value = 3, label = '6台' },
                    { value = 4, label = '8台' },
                }
            },
            [3] = {
                type = 'select',
                label = '質問 #3',
                description = '警察が到着するまでの時間は？',
                icon = 'fas fa-clock',
                required = true,
                options = {
                    { value = 1, label = '3分' },
                    { value = 2, label = '5分' },
                    { value = 3, label = '7分' },
                    { value = 4, label = '10分' },
                }
            },
            [4] = {
                type = 'select',
                label = '質問 #4',
                description = '現金はどこに保管されている？',
                icon = 'fas fa-money-bill',
                required = true,
                options = {
                    { value = 1, label = 'レジの下' },
                    { value = 2, label = 'バックルーム' },
                    { value = 3, label = 'オーナー室' },
                    { value = 4, label = '金庫' },
                }
            },
            -- 上記と同じフォーマットに従って、ここに他の質問を追加してください
            -- 番号を正しく増やしてください。[5]、[6]など
        },
        -- 上記のすべての質問への答えはここに配置する必要があります
        -- 上記の質問と同じ順序で答えを配置してください
        -- 上記の質問[3]への答えもここで[3]であるべきです
        -- 注意: type = 'select'への答えは値の番号である必要があります
        answers = {
            [1] = 1,
            [2] = 2,
            [3] = 2,
            [4] = 4
        }
    }

}
