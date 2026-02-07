return {

    ----------------------------------------------
    --     💃 アニメーションとプロップをカスタマイズ
    ----------------------------------------------

    anims = {
        mining = {
            label = '採鉱中..',
            description = '地面から鉱石を採掘する',
            icon = 'fa-solid fa-hammer',
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, combat = true },
            anim = { dict = 'melee@hatchet@streamed_core', clip = 'plyr_rear_takedown_b', flag = 1 },
            prop = { bone = 28422, model = 'prop_tool_pickaxe', pos = vec3(0.09, -0.05, -0.02), rot = vec3(-78.0, 13.0, 28.0) }
        },
        smelting = {
            scenario = 'WORLD_HUMAN_STAND_FIRE'
        }
    },

    ----------------------------------------------
    --     📊 ステータスとリーダーボードをカスタマイズ
    ----------------------------------------------

    -- ステータスメニューを表示したくない場合は、
    -- 以下のすべてをfalseに設定してください！
    stats = {
        -- 採掘した鉱石のステータスを表示しますか？
        mined = true,
        -- 製錬したインゴットのステータスを表示しますか？
        smelted = true,
        -- 稼いだお金のステータスを表示しますか？
        earned = true
    },

    -- リーダーボードを表示しますか？
    -- XPによるトップ10のマイナーを表示します
    -- 🗒️ 注：リーダーボードは常に更新されません
    -- サーバーの再起動とプレイヤーのログアウト時のみ更新されます
    leaderboard = true

}