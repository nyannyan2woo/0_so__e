-- 速度変換定数（GTA内部単位からkm/hおよびmphへの変換係数）
local kmh = 3.6
local mph = 2.236936

---------------------------------------------------------------------------------------------------------------------------------------------------------------

Config = {}

-- デバッグモード（trueにするとコンソールにデバッグメッセージが表示されます）
Config.debug = false

-- ゴーストモード時のエンティティの透明度（0=完全透明、255=完全不透明）
Config.ghostedEntitiesAlpha = 100

Config.afkDropMessage = "セーフゾーン内での放置によりサーバーからキックされました。" --- プレイヤーがAFKでキックされた際に送信されるメッセージ
-- AFK警告通知のタイミング（kickAFK時間を以下の数値で割った時点で通知）
-- 例: kickAFK=600秒の場合、300秒(600/2)、200秒(600/3)、100秒(600/6)、60秒(600/10)で通知
Config.afkNotifyTimes = {2, 3, 6, 10}

---プレイヤーが武器を持っている場合に武装解除する関数
---ox_inventoryを使用する場合はコメントを外してください
Config.disarmPlayer = function()
    -- 使用するシステムのコメントを外してください。ox_inventoryを使う場合はイベントのコメントを外し、それ以外はGTAデフォルトシステムを使用してください。

    TriggerEvent("ox_inventory:disarm", true) -- ox_inventory使用時
    SetCurrentPedWeapon(cache.ped, `WEAPON_UNARMED`, true) -- デフォルトシステム
end

---ゾーンタイプの定義
---各ゾーンタイプごとに異なる設定を定義できます
Config.Types = {
    ['test1'] = {
        logJoinAndExit = true, -- ゾーンへの出入りをログに記録

        -- プレイヤー設定
        player = {
            areaNotify = true, -- ゾーン出入り時に通知を表示

            kickAFK = 600, -- AFK状態が続いた場合にキックするまでの秒数（600秒=10分、0で無効化）
            kickNotify = true, -- キックされる前に警告通知を表示

            disableShoot = true, -- 射撃を無効化
            disableDriveBy = true, -- ドライブバイ射撃を無効化
            disableWeapons = true, -- 武器の所持を無効化（自動的に武装解除）
            disableJump = true, -- ジャンプを無効化
            disableIdleCam = true, -- 放置時のカメラ移動を無効化

            SetFootstepQuiet = true, -- 足音を静かにする
            setPedMoveRate = 2.0, -- プレイヤーの移動速度倍率（1.0=通常、2.0=2倍速）

            ghostMode = true, -- ゴーストモード（他プレイヤーとの衝突を無効化）
        },

        -- NPC（歩行者）設定
        ped = {
            newEntitiesRefreshRate = 250, -- 新しいエンティティをチェックする間隔（ミリ秒）

            disableCollisions = true, -- NPC同士の衝突を無効化
            makeInvincible = true, -- NPCを無敵にする
            customAlpha = 100, -- NPCの透明度（0=完全透明、255=完全不透明）
            disableEvents = true, -- NPCのイベント反応を無効化（攻撃されても反応しない）

            SetFootstepQuiet = true, -- NPCの足音を静かにする
            setPedMoveRate = 2.0, -- NPCの移動速度倍率

            -- 他プレイヤーのPed設定
            playerPeds = {
                SetFootstepQuiet = true, -- 他プレイヤーの足音を静かにする
            },
        },

        -- 車両設定
        vehicle = {
            newEntitiesRefreshRate = 250, -- 新しいエンティティをチェックする間隔（ミリ秒）
            disableCollisions = true, -- 車両同士の衝突を無効化
            makeInvincible = true, -- 車両を無敵にする（破壊不可）
            customAlpha = 200, -- 車両の透明度（0=完全透明、255=完全不透明）
            autoVehicleLock = true, -- 車両を自動的にロック
            disableVehicle = true, -- 車両の運転を無効化
            limitVehicleSpeed = 50 / kmh, -- 車両の最高速度制限（km/h単位で指定、この例では50km/h）
        },
    },

    ['test2'] = {
        logJoinAndExit = true, -- ゾーンへの出入りをログに記録

        player = {
            areaNotify = true, -- ゾーン出入り時に通知を表示
            disableWeapons = true, -- 武器の所持を無効化
            disableIdleCam = true, -- 放置時のカメラ移動を無効化
            ghostMode = true, -- ゴーストモード（他プレイヤーとの衝突を無効化）
        },

        ped = {
            newEntitiesRefreshRate = 250, -- 新しいエンティティをチェックする間隔（ミリ秒）
            makeInvincible = true, -- NPCを無敵にする
            disableEvents = true, -- NPCのイベント反応を無効化
        },
    }
}

---ゾーンの場所設定
---各ゾーンの名前、タイプ、マップブリップ、形状を定義します
Config.Zones = {
    -- ['Central garage'] = {
    --     type = "test1", -- 使用するゾーンタイプ（Config.Typesで定義したもの）
    --     debug = false, -- このゾーンのデバッグ表示（trueにするとゾーンの範囲が可視化されます）

    --     -- マップブリップ設定
    --     -- blip = {
    --     --     label = "Safe zone", -- ブリップのラベル
    --     --     display = 2, -- 表示タイプ（2=常に表示）
    --     --     id = 461, -- ブリップアイコンID
    --     --     color = 66, -- ブリップの色
    --     --     scale = 0.8, -- ブリップのサイズ
    --     -- },

    --     -- ポリゴン形状でゾーンを定義（複雑な形状に対応）
    --     poly = {
    --         points = {
    --             vec3(229.0, -723.25, 33.25),
    --             vec3(199.35000610352, -806.0, 33.25),
    --             vec3(244.0, -823.0, 33.25),
    --             vec3(275.95001220703, -739.79998779297, 33.25),
    --         },
    --         thickness = 23.8, -- ゾーンの高さ（垂直方向の厚み）
    --     }

    --     -- ボックス形状でゾーンを定義する場合（コメントを外して使用）
    --     -- box = {
    --     --     coords = vec3(238.0, -773.0, 35.0), -- ボックスの中心座標
    --     --     size = vec3(89, 50.0, 25.0), -- ボックスのサイズ（幅、奥行き、高さ）
    --     --     rotation = 70.0, -- ボックスの回転角度
    --     -- }

    --     -- 球体形状でゾーンを定義する場合（コメントを外して使用）
    --     -- sphere = {
    --     --     coords = vec3(227.6967010498, -788.95385742188, 30.678344726562), -- 球体の中心座標
    --     --     radius = 25, -- 球体の半径
    --     -- }

    --     -- ポイント形状でゾーンを定義する場合（コメントを外して使用）
    --     -- point = {
    --     --     coords = vec3(227.6967010498, -788.95385742188, 30.678344726562), -- ポイントの座標
    --     --     distance = 15.0, -- ポイントからの有効距離
    --     -- }
    -- },

    -- ['Central square'] = {
    --     type = "test2", -- 使用するゾーンタイプ
    --     debug = false, -- デバッグ表示の有効/無効

    --     -- マップブリップ設定
    --     -- blip = {
    --     --     label = "Safe zone", -- ブリップのラベル
    --     --     display = 2, -- 表示タイプ
    --     --     id = 461, -- ブリップアイコンID
    --     --     color = 66, -- ブリップの色
    --     --     scale = 0.8, -- ブリップのサイズ
    --     -- },

    --     -- ポリゴン形状でゾーンを定義
    --     poly = {
    --         points = {
    --             vec3(262.0, -872.0, 29.0),
    --             vec3(185.0, -844.0, 29.0),
    --             vec3(132.0, -988.0, 29.0),
    --             vec3(210.60000610352, -1015.5, 29.0),
    --         },
    --         thickness = 20.0, -- ゾーンの高さ
    --     }
    -- },
}