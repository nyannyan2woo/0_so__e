return {

    ----------------------------------------------
    --        💬 ログシステムの設定
    ----------------------------------------------

    logs = {
        -- どのログサービスを使用しますか？
        -- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord', 'none'
        -- FivemanageやFivemerrのような適切なログサービスを使用することを強く推奨します
        service = 'fivemanage',
        -- ログにスクリーンショットを含めますか？
        -- これはFivemanageとFivemerrにのみ適用されます
        screenshots = true,
        -- ここで特定のプレイヤーイベントのログ記録を有効(true)または無効(false)にできます
        events = {
            -- register_robbed はレジが強盗されたとき
            register_robbed = true,
            -- safe_robbed は...まあ、わかりますよね...
            safe_robbed = true,
        },
        -- service = 'discord'の場合、ここでWebhookデータをカスタマイズできます
        -- Discordを使用しない場合、このセクションは無視できます
        discord = {
            -- Webhookの名前
            name = '24/7強盗ログ',
            -- Webhookリンク
            link = GetConvar('LATION_247ROBBERY_WEBHOOK', ''),
            -- Webhookのプロフィール画像
            image = 'https://i.imgur.com/ILTkWBh.png',
            -- Webhookのフッター画像
            footer = 'https://i.imgur.com/ILTkWBh.png'
        }
    }

}