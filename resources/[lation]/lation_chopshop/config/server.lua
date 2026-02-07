return {
    ----------------------------------------------
    --        💬 ログシステムのセットアップ
    ----------------------------------------------

    logs = {
        -- どのログサービスを使用しますか？
        -- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord' & 'none'
        -- Fivemanage や Fivemerr などの適切なログサービスを使用することを強くお勧めします
        service = 'fivemanage',
        -- ログにスクリーンショットを含めますか？
        -- これは Fivemanage と Fivemerr にのみ適用されます
        screenshots = true,
        -- ここで特定のプレイヤーイベントのログ記録を有効（true）または無効（false）に設定できます
        events = {
            -- プレイヤーが車両からパーツをチョップしたときにログ記録
            partChopped = true,
            -- プレイヤーがツールを壊したときにログ記録
            toolBroke = true,
            -- プレイヤーがツールショップからアイテムを購入したときにログ記録
            itemPurchased = true,
            -- プレイヤーがスワップショップでアイテムを交換したときにログ記録
            itemSwapped = true,
        },
        -- service = 'discord' の場合、ここで Webhook データをカスタマイズできます
        -- Discord を使用しない場合、このセクションは無視できます
        discord = {
            -- Webhook の名前
            name = 'チョップショップ',
            -- Webhook リンク
            link = GetConvar('LATION_CHOPSHOP_WEBHOOK', ''),
            -- Webhook プロフィール画像
            image = 'https://i.imgur.com/ILTkWBh.png',
            -- Webhook フッター画像
            footer = 'https://i.imgur.com/ILTkWBh.png'
        }
    },

}