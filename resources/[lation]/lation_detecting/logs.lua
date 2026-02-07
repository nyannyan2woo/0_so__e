Logs = {}

-- どのログサービスを使用しますか？
-- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord' & 'none'
-- Fivemanage や Fivemerr などの適切なログサービスを使用することを強くお勧めします
Logs.Service = 'fivemanage'

-- ログにスクリーンショットを含めますか？
-- これは Fivemanage と Fivemerr にのみ適用されます
Logs.Screenshots = true

-- ここで特定のプレイヤーイベントのログ記録を有効 (true) または無効 (false) にできます
Logs.Events = {
    -- found_item はプレイヤーが検出中にアイテムを見つけたときです
    found_item = true,
    -- level_up はプレイヤーが金属探知のスキルレベルを上げたときです
    level_up = true,
    -- buy_detector はプレイヤーが金属探知機を購入したときです
    buy_detector = true,
    -- item_sold はプレイヤーがアイテムをショップに売却したときです
    item_sold = true,
}

-- Logs.Service = 'discord' の場合、ここで Webhook データをカスタマイズできます
-- Discord を使用していない場合、このセクションは無視できます
Logs.Discord = {
    -- Webhook の名前
    name = 'Metal Detecting Logs',
    -- Webhook のリンク
    link = '',
    -- Webhook のプロフィール画像
    image = 'https://i.imgur.com/ILTkWBh.png',
    -- Webhook のフッター画像
    footer = 'https://i.imgur.com/ILTkWBh.png'
}