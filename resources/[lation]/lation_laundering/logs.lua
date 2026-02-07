Logs = {}

-- 一般的なWebhook設定
Logs.Name = 'Laundering Logs' -- Webhookの名前
Logs.Image = 'https://i.imgur.com/ILTkWBh.png' -- Webhookの画像
Logs.Footer = 'https://i.imgur.com/ILTkWBh.png' -- Webhookのフッター画像

-- 特定のログタイプの設定
Logs.Types = {
    -- プレイヤーがレベルアップしたログを記録しますか？
    levelUp = {
        enabled = false,
        webhook = '',
    },
    -- プレイヤーが契約を完了したログを記録しますか？
    contracts = {
        enabled = false,
        webhook = '',
    },
    -- プレイヤーが倉庫での洗浄を完了したログを記録しますか？
    warehouse = {
        enabled = false,
        webhook = ''
    },
    -- プレイヤーがお金を数えているログを記録しますか？
    counting = {
        enabled = false,
        webhook = ''
    },
    -- プレイヤーが契約交渉しているログを記録しますか？
    negotiate = {
        enabled = false,
        webhook = ''
    },
    -- プレイヤーが契約中に拒否されたログを記録しますか？
    rejected = {
        enabled = false,
        webhook = ''
    },
    -- プレイヤーが倉庫のキーを購入したログを記録しますか？
    warehouseKey = {
        enabled = false,
        webhook = ''
    }
}