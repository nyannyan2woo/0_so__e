return {
    ----------------------------------------------
    --        💬 ログシステムの設定
    ----------------------------------------------

    logs = {
        -- どのログサービスを使用しますか？
        -- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord' & 'none'
        -- Fivemanage や Fivemerr などの適切なログサービスを使用することを強くお勧めします
        service = 'fivemanage',
        -- ログにスクリーンショットを含めますか？
        -- これは Fivemanage と Fivemerr にのみ適用されます
        screenshots = true,
        -- ここで特定のプレイヤーイベントのログ記録を有効 (true) または無効 (false) にできます
        events = {
            -- プレイヤーが木箱を拾ったときにログ記録
            crateFound = true,
            -- プレイヤーが木箱を開けたときにログ記録
            crateOpened = true,
            -- プレイヤーがダイビングショップで購入したときにログ記録
            itemPurchased = true,
            -- プレイヤーが質屋にアイテムを売却したときにログ記録
            itemPawned = true,
            -- プレイヤーがボートをレンタルしたときにログ記録
            boatRented = true,
            -- プレイヤーがレンタルボートを返却したときにログ記録
            boatReturned = true,
        },
        -- service = 'discord' の場合、ここで Webhook データをカスタマイズできます
        -- Discord を使用していない場合、このセクションは無視できます
        discord = {
            -- Webhook の名前
            name = 'スキューバダイビング',
            -- Webhook のリンク
            link = GetConvar('LATION_DIVING_WEBHOOK', ''),
            -- Webhook のプロフィール画像
            image = 'https://i.imgur.com/ILTkWBh.png',
            -- Webhook のフッター画像
            footer = 'https://i.imgur.com/ILTkWBh.png'
        }
    },

}