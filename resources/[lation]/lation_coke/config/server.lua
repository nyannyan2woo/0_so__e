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
        -- ここで特定のプレイヤーイベントのログ記録を有効 (true) または無効 (false) にできます
        events = {
            -- 'leaves_harvested' はプレイヤーがコカの葉を収穫したときです
            leaves_harvested = true,
            -- 'cement_collected' はプレイヤーがセメント袋を収集したときです
            cement_collected = true,
            -- 'table_placed' はプレイヤーがテーブルを置いたときです
            table_placed = true,
            -- 'table_brick' はプレイヤーがテーブルから完成したコカブリックを受け取ったときです
            table_brick = true,
            -- 'table_packaged' はプレイヤーがテーブルからコカブリックをパッケージ化したときです
            table_packaged = true,
            -- 'table_removed' はプレイヤーがテーブルを片付けた/拾ったときです
            table_removed = true,
            -- 'lab_purchase' はプレイヤーがラボを購入したときです
            lab_purchase = true,
            -- 'lab_brick' はプレイヤーがラボから完成したコカブリックを受け取ったときです
            lab_brick = true,
            -- 'lab_packaged' はプレイヤーがラボからコカブリックをパッケージ化したときです
            lab_packaged = true,
            -- 'lab_upgrade' はラボがアップグレードされたときです
            lab_upgrade = true,
            -- 'lab_door' はプレイヤーがラボをロック/ロック解除したときです
            lab_door = true,
            -- 'lab_transfer' はプレイヤーがラボの所有権を別のプレイヤーに譲渡したときです
            lab_transfer = true,
            -- 'lab_sold' はプレイヤーがラボを州に売却したときです
            lab_sold = true,
        },
        -- service = 'discord' の場合、ここで Webhook データをカスタマイズできます
        -- Discord を使用していない場合、このセクションは無視できます
        discord = {
            -- Webhook の名前
            name = 'コカインログ',
            -- Webhook のリンク
            link = GetConvar('LATION_COKE_WEBHOOK', ''),
            -- Webhook のプロフィール画像
            image = 'https://i.imgur.com/ILTkWBh.png',
            -- Webhook のフッター画像
            footer = 'https://i.imgur.com/ILTkWBh.png'
        }
    },

}