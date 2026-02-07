Logs = {}

-- どのログサービスを使用しますか？
-- 利用可能なオプション: 'fivemanage', 'fivemerr', 'discord' & 'none'
-- Fivemanage や Fivemerr のような適切なログサービスを使用することを強くお勧めします
Logs.Service = 'fivemanage'

-- ログにスクリーンショットを含めますか？
-- これは Fivemanage と Fivemerr にのみ適用されます
Logs.Screenshots = true

-- 特定のプレイヤーイベントのログ記録をここで有効（true）または無効（false）にできます
Logs.Events = {
    -- table_received はテーブルがプレイヤーに発行されたとき
    table_received = true,
    -- table_placed はテーブルが配置されたとき
    table_placed = true,
    -- table_removed はテーブルが拾われたとき
    table_removed = true,
    -- table_batch はメスのバッチが完了したとき
    table_batch = true,
    -- supply_run_completed はプレイヤーが供給クレートを拾ったとき
    supply_run_completed = true,
    -- supply_crate_opened はプレイヤーが供給クレートを開けたとき
    supply_crate_opened = true,
    -- warehouse_buy は倉庫が購入されたとき
    warehouse_buy = true,
    -- warehouse_upgrade は倉庫のアップグレードが完了したとき
    warehouse_upgrade = true,
    -- warehouse_door は倉庫のドアロック状態が変更されたとき
    warehouse_door = true,
    -- warehouse_transfer は倉庫の所有者が変更されたとき
    warehouse_transfer = true,
    -- warehouse_sale は倉庫が州に売却されたとき
    warehouse_sale = true,
    -- warehouse_batch はメスのバッチが完了したとき
    warehouse_batch = true,
    -- raid_warehouse は警察が倉庫に侵入したとき
    raid_warehouse = true,
    -- raid_stash は警察が倉庫のスタッシュに侵入したとき
    raid_stash = true
}

-- Logs.Service = 'discord' の場合、ここでWebhookデータをカスタマイズできます
-- Discordを使用していない場合、このセクションは無視できます
Logs.Discord = {
    -- Webhookの名前
    name = 'メスログ',
    -- Webhookのリンク
    link = GetConvar('LATION_METH_WEBHOOK', ''),
    -- Webhookのプロフィール画像
    image = 'https://i.imgur.com/ILTkWBh.png',
    -- Webhookのフッター画像
    footer = 'https://i.imgur.com/ILTkWBh.png'
}