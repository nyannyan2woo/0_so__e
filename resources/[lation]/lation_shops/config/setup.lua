return {

    -- 必要な場合、サポートの指示がある場合、または何をしているか理解している場合にのみ使用してください
    -- 注意: デバッグ機能を有効にすると、リソース使用量が大幅に増加します
    -- また、本番環境では常に無効にする必要があります
    debug = false,

    -- 以下にインタラクションシステムを設定してください
    -- 利用可能なオプション: 'auto', 'ox_target', 'qb-target', 'interact', 'custom'
    -- 'auto'は利用可能なインタラクションシステムを自動的に検出して使用します
    -- 'custom'は client/utils/interact.lua に追加する必要があります
    interact = 'auto',

    -- 以下に通知システムを設定してください
    -- 利用可能なオプション: 'lation_ui', 'ox_lib', 'esx', 'qb', 'okok', 'sd-notify', 'wasabi_notify', 'custom'
    -- 'custom'は client/utils/notify.lua に追加する必要があります
    notify = 'lation_ui',

    -- アップデートが利用可能な場合、サーバーコンソールを通じて通知を受け取りますか？
    -- はいの場合はtrue、いいえの場合はfalse
    version = true,

    -- 以下に組織の銀行システムを設定してください
    -- 利用可能なオプション: 'auto', 'qb-banking', 'qb-management', 'esx_addonaccount', 'Renewed-Banking',
    -- 'okokBanking', 'fd_banking', 'tgg-banking' または 'custom'
    -- 'auto'はフレームワークと利用可能な銀行リソースに基づいて自動的に検出します
    -- 'custom'は server/utils/banking.lua に追加する必要があります
    banking = 'auto',
}