return {
    cityhalls = {
        {
            coords = vec3(-265.0, -963.6, 31.2),
            showBlip = true,
            blip = {
                label = '市役所',
                shortRange = true,
                sprite = 487,
                display = 4,
                scale = 0.65,
                colour = 0,
            },
            licenses = {
                ['id'] = {
                    item = 'id_card',
                    label = '身分証明書',
                    cost = 500,
                },
                ['driver'] = {
                    item = 'driver_license',
                    label = '運転免許証',
                    cost = 500,
                },
                -- ['weapon'] = {
                --     item = 'weaponlicense',
                --     label = '武器ライセンス',
                --     cost = 500,
                -- },
            },
        },
    },

    employment = {
        enabled = true, -- 雇用メニューを無効にするにはfalseに設定してください
        jobs = {
            -- unemployed = '無職',
            trucker = 'トラック運転手',
            -- taxi = 'タクシー運転手',
            tow = 'レッカー車運転手',
            -- reporter = 'ニュースレポーター',
            garbage = 'ゴミ収集作業員',
            bus = 'バス運転手',
        },
    },
}
