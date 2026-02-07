return {

    -- どのログサービスを使用しますか？
    -- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord', 'none'
    -- FivemanageやFivemerrのような適切なログサービスを使用することを強く推奨します
    service = 'fivemanage',

    -- ログにスクリーンショットを含めますか？
    -- これはFivemanageとFivemerrにのみ適用されます
    screenshots = true,

    -- ここでログに記録する特定のイベントを有効(true)または無効(false)にできます
    events = {
        -- プレイヤーの購入を記録
        purchase = true,
        -- 管理者によるショップ作成を記録
        shopCreated = true,
        -- 管理者によるショップ編集を記録
        shopEdited = true,
        -- 管理者によるショップ削除を記録
        shopDeleted = true,
    },

    -- service = 'discord'の場合、ここでWebhookデータをカスタマイズできます
    -- Discordを使用しない場合、このセクションは無視できます
    discord = {
        -- Webhookの名前
        name = 'ショップログ',
        -- Webhookリンク
        link = GetConvar('LATION_SHOPS_WEBHOOK', ''),
        -- Webhookのプロフィール画像
        image = 'https://i.imgur.com/ILTkWBh.png',
        -- Webhookのフッター画像
        footer = 'https://i.imgur.com/ILTkWBh.png'
    }

}