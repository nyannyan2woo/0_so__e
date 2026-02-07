return {
    ----------------------------------------------
    --     📊 統計とリーダーボードのカスタマイズ
    ----------------------------------------------

    -- 統計メニューオプションをまったく表示したくないですか？
    -- 以下のすべての統計を false に設定してください！
    stats = {
        -- 木箱収集の統計を表示しますか？
        crates = true,
        -- 記録された最低深度の統計を表示しますか？
        depth = true,
        -- 合計水泳距離の統計を表示しますか？
        swam = true
    },

    -- リーダーボードを表示しますか？
    -- これにより、XPによるトップ10ダイバーが表示されます
    -- 🗒️ 注：リーダーボードは常に更新されるわけではありません
    -- サーバーの再起動とプレイヤーのログアウト時にのみ更新されます
    leaderboard = true,

    ----------------------------------------------
    --          🗺️ ブリップのカスタマイズ
    ----------------------------------------------

    blips = {
        -- 開始/メインペッドの場所
        start = {
            -- ブリップを有効または無効にする
            enable = true,
            -- スプライトID (https://docs.fivem.net/docs/game-references/blips/)
            sprite = 729,
            -- 色 (https://docs.fivem.net/docs/game-references/blips/#blip-colors)
            color = 3,
            -- サイズ/スケール
            scale = 0.9,
            -- ラベル
            label = 'スキューバダイビング'
        },
        -- ダイビングゾーンの半径ブリップ
        zone = {
            color = 1,
            alpha = 100
        }
    },

    ----------------------------------------------
    --     💃 アニメーションとプロップのカスタマイズ
    ----------------------------------------------

    anims = {
        anchorBoat = {
            label = 'アンカーを切り替え中..',
            icon = 'fas fa-anchor',
            duration = 1000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, comat = true },
            anim = { dict = 'random@domestic', clip = 'pickup_low' },
            prop = { }
        },
        openCrate = {
            label = '木箱を開けています..',
            duration = 2000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { move = false, car = true, combat = true },
            anim = { dict = 'anim@heists@box_carry@', clip = 'idle' },
            prop = { model = 'v_serv_abox_04', bone = 57005, pos = vec3(0.24531, 0.0, -0.21094), rot = vec3(-109.6165, -5.7869, 32.9873) }
        },
        toggleGear = {
            label = '着替えています..',
            icon = 'fas fa-shirt',
            duration = 5000,
            position = 'bottom',
            useWhileDead = false,
            allowSwimming = true,
            canCancel = true,
            disable = { car = true },
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            prop = { }
        },
        pickupCrate = {
            label = '拾っています..',
            icon = 'fas fa-hand',
            duration = 3000,
            position = 'bottom',
            useWhileDead = false,
            allowSwimming = true,
            canCancel = false,
            disable = { move = true, car = true, combat = true },
            anim = { },
            prop = { }
        },
        createGroup = {
            label = 'グループを作成中..',
            icon = 'fas fa-users',
            duration = 1000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = { car = true, move = true, comat = true },
            anim = { },
            prop = { }
        },
    },

}