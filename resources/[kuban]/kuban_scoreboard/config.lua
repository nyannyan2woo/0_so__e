Config = {
    debug = false,

    maxSlots = 48,           -- スコアボードに表示される最大プレイヤー数
    command = 'scoreboard',           -- スコアボードを切り替えるコマンド
    updateInterval = 10000,   -- 職業カウントが更新される頻度（ミリ秒）

    -- 追跡する職業（label = 表示名、image = html/images/ の画像ファイル）
    jobs = {
        { name = 'police',   label = '警察',          image = 'police.png' },
        { name = 'ambulance',label = '救急車',   image = 'ambulance.png' },
        { name = 'vu',   label = 'ヴァニラユニコーン', image = 'vu.png' },
        { name = 'mechanic', label = 'ファストカスタムス',    image = 'fastcustoms.png' },
        -- 必要に応じてさらに追加してください。UIが長くなります。
        -- { name = 'judge', label = '裁判官',    image = 'judge.png' },
    },

    -- ステータス閾値（完全にカスタマイズ可能）
    statusThresholds = {
        { name = "なし",      max = 0,   css = "none" },
        { name = "非常に低い",  max = 1,   css = "very-low" },
        { name = "低い",       max = 5,   css = "low" },
        { name = "中程度",    max = 8,   css = "medium" },
        { name = "高い",      max = 12,  css = "high" },
        { name = "非常に高い", max = 999, css = "very-high" } -- 999 = 無制限
    }
}

-- サーバー用にカスタマイズしたい場合は、Discordで kubanscripts にメッセージを送ってください