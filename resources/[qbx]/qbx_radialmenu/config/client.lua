local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

return {
    enableExtraMenu = true,
    flipTime = 15000,

    menuItems = {
        {
            id = 'citizen',
            icon = 'user',
            label = '市民',
            items = {
                {
                    id = 'givenum',
                    icon = 'address-book',
                    label = '連絡先を共有',
                    event = 'qb-phone:client:GiveContactDetails'
                },
                {
                    id = 'getintrunk',
                    icon = 'car',
                    label = 'トランクに乗る',
                    event = 'qb-trunk:client:GetIn'
                },
                {
                    id = 'cornerselling',
                    icon = 'cannabis',
                    label = '路上販売',
                    event = 'qb-drugs:client:cornerselling'
                },
                {
                    id = 'interactions',
                    icon = 'exclamation-triangle',
                    label = '対話',
                    items = {
                        {
                            id = 'handcuff',
                            icon = 'user-lock',
                            label = '手錠をかける',
                            event = 'police:client:CuffPlayer',
                        },
                        {
                            id = 'playerInVehicle',
                            icon = 'car-side',
                            label = '車に乗せる',
                            event = 'police:client:PutPlayerInVehicle',
                        },
                        {
                            id = 'playerOutVehicle',
                            icon = 'car-side',
                            label = '車から降ろす',
                            event = 'police:client:SetPlayerOutVehicle',
                        },
                        {
                            id = 'stealPlayer',
                            icon = 'mask',
                            label = '奪う',
                            event = 'police:client:RobPlayer',
                        },
                        {
                            id = 'kidnapPlayer',
                            icon = 'user-group',
                            label = '誘拐する',
                            event = 'police:client:KidnapPlayer',
                        },
                        {
                            id = 'escortPlayer',
                            icon = 'user-group',
                            label = '護衛する',
                            event = 'police:client:EscortPlayer',
                        },
                        {
                            id = 'takeHostage',
                            icon = 'child',
                            label = '人質にする',
                            event = 'police:client:TakeHostage',
                        },
                    },
                },
            },
        },
        {
            id = 'general',
            icon = 'rectangle-list',
            label = '一般',
            items = {
                {
                    id = 'clothesMenu',
                    icon = 'shirt',
                    label = '衣服',
                    items = {
                        {
                            id = 'hair',
                            icon = 'user',
                            label = '髪型',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Hair'},
                        },
                        {
                            id = 'ear',
                            icon = 'ear-deaf',
                            label = 'ピアス',
                            event = 'qb-radialmenu:ToggleProps',
                            args = 'Ear',
                        },
                        {
                            id = 'neck',
                            icon = 'user-tie',
                            label = 'ネクタイ',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Neck'},
                        },
                        {
                            id = 'top',
                            icon = 'shirt',
                            label = '上着',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Top'},
                        },
                        {
                            id = 'shirt',
                            icon = 'shirt',
                            label = 'シャツ',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Shirt'},
                        },
                        {
                            id = 'pants',
                            icon = 'user',
                            label = 'パンツ',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Pants'},
                        },
                        {
                            id = 'shoes',
                            icon = 'shoe-prints',
                            label = '靴',
                            event = 'qb-radialmenu:ToggleClothing',
                            args = {id = 'Shoes'},
                        },
                        {
                            id = 'clothingExtras',
                            icon = 'plus',
                            label = 'その他',
                            items = {
                                {
                                    id = 'hat',
                                    icon = 'hat-cowboy-side',
                                    label = '帽子',
                                    event = 'qb-radialmenu:ToggleProps',
                                    args = 'Hat',
                                },
                                {
                                    id = 'glasses',
                                    icon = 'glasses',
                                    label = 'メガネ',
                                    event = 'qb-radialmenu:ToggleProps',
                                    args = 'Glasses',
                                },
                                {
                                    id = 'visor',
                                    icon = 'hat-cowboy-side',
                                    label = 'ツバ',
                                    event = 'qb-radialmenu:ToggleProps',
                                    args = 'Visor',
                                },
                                {
                                    id = 'mask',
                                    icon = 'masks-theater',
                                    label = 'マスク',
                                    event = 'qb-radialmenu:ToggleClothing',
                                    args = {id = 'Mask'},
                                },
                                {
                                    id = 'vest',
                                    icon = 'vest',
                                    label = 'ベスト',
                                    event = 'qb-radialmenu:ToggleClothing',
                                    args = {id = 'Vest'},
                                },
                                {
                                    id = 'bag',
                                    icon = 'bag',
                                    label = 'バッグ',
                                    event = 'qb-radialmenu:ToggleClothing',
                                    args = {id = 'Bag'},
                                },
                                {
                                    id = 'bracelet',
                                    icon = 'user',
                                    label = 'ブレスレット',
                                    event = 'qb-radialmenu:ToggleProps',
                                    args = 'Bracelet',
                                },
                                {
                                    id = 'watch',
                                    icon = 'stopwatch',
                                    label = '腕時計',
                                    event = 'qb-radialmenu:ToggleProps',
                                    args = 'Watch',
                                },
                                {
                                    id = 'gloves',
                                    icon = 'mitten',
                                    label = '手袋',
                                    event = 'qb-radialmenu:ToggleClothing',
                                    args = {id = 'Gloves'},
                                },
                            },
                        },
                    },
                },
            },
        },
    },

    jobItems = {
        police = {
            {
                id = 'emergencyButton',
                icon = 'bell',
                label = 'Emergency Button',
                event = 'police:client:SendPoliceEmergencyAlert',
            },
            {
                id = 'resetHouse',
                icon = 'key',
                label = '住宅ロックをリセット',
                event = 'qb-houses:client:ResetHouse',
            },
            {
                id = 'revokeDriversLicense',
                icon = 'id-card',
                label = '運転免許を没収',
                event = 'police:client:SeizeDriverLicense',
            },
            {
                id = 'policeInteractions',
                icon = 'list-check',
                label = '警察対応',
                items = {
                    {
                        id = 'statusCheck',
                        icon = 'heart-pulse',
                        label = '健康状態を確認',
                        event = 'hospital:client:CheckStatus',
                    },
                    {
                        id = 'escort',
                        icon = 'user-group',
                        label = 'Escort',
                        event = 'police:client:EscortPlayer',
                    },
                    {
                        id = 'search',
                        icon = 'magnifying-glass',
                        label = '捜索',
                        event = 'police:client:SearchPlayer',
                    },
                    {
                        id = 'jail',
                        icon = 'user-lock',
                        label = '投獄',
                        event = 'police:client:JailPlayer',
                    },
                },
            },
            {
                id = 'policeObjects',
                icon = 'road',
                label = '警察用備品',
                items = {
                    {
                        id = 'cone',
                        icon = 'triangle-exclamation',
                        label = 'コーン',
                        event = 'police:client:spawnPObj',
                        args = 'cone',
                    },
                    {
                        id = 'gate',
                        icon = 'torii-gate',
                        label = 'ゲート',
                        event = 'police:client:spawnPObj',
                        args = 'barrier',
                    },
                    {
                        id = 'speedSign',
                        icon = 'sign-hanging',
                        label = '制限速度標識',
                        event = 'police:client:spawnPObj',
                        args = 'roadsign',
                    },
                    {
                        id = 'tent',
                        icon = 'campground',
                        label = 'テント',
                        event = 'police:client:spawnPObj',
                        args = 'tent',
                    },
                    {
                        id = 'lighting',
                        icon = 'lightbulb',
                        label = '照明',
                        event = 'police:client:spawnPObj',
                        args = 'light',
                    },
                    {
                        id = 'spikeStrip',
                        icon = 'caret-up',
                        label = 'スパイクストリップ',
                        event = 'police:client:SpawnSpikeStrip',
                    },
                    {
                        id = 'deleteObject',
                        icon = 'trash',
                        label = 'オブジェクトを削除',
                        event = 'police:client:deleteObject',
                    },
                },
            },
        },
        ambulance = {
            {
                id = 'statusCheck',
                icon = 'heart-pulse',
                label = 'Check Health Status',
                event = 'hospital:client:CheckStatus',
            },
            {
                id = 'revive',
                icon = 'user-doctor',
                label = '蘇生',
                event = 'hospital:client:RevivePlayer',
            },
            {
                id = 'treatWounds',
                icon = 'bandage',
                label = '傷を治す',
                event = 'hospital:client:TreatWounds',
            },
            {
                id = 'emergencyButton',
                icon = 'bell',
                label = 'Emergency Button',
                serverEvent = 'hospital:server:emergencyAlert',
            },
            {
                id = 'escort',
                icon = 'user-group',
                label = 'Escort',
                event = 'police:client:EscortPlayer',
            },
        },
        mechanic = {
            {
                id = 'towVehicle',
                icon = 'truck-pickup',
                label = 'Tow Vehicle',
                event = 'qb-tow:client:TowVehicle',
            },
        },
        taxi = {
            {
                id = 'togglemeter',
                icon = 'eye-slash',
                label = 'メーター表示切替',
                event = 'qb-taxi:client:toggleMeter',
            },
            {
                id = 'togglemouse',
                icon = 'hourglass-start',
                label = 'メーター開始/停止',
                event = 'qb-taxi:client:enableMeter',
            },
            {
                id = 'npcMission',
                icon = 'taxi',
                label = 'NPCミッション',
                event = 'qb-taxi:client:DoTaxiNpc',
            },
        },
        tow = {
            {
                id = 'togglenpc',
                icon = 'toggle-on',
                label = 'NPCトグル',
                event = 'jobs:client:ToggleNpc',
            },
            {
                id = 'towVehicle',
                icon = 'truck-pickup',
                label = 'Tow Vehicle',
                event = 'qb-tow:client:TowVehicle',
            },
        },
    },

    gangItems = {},

    vehicleDoors = {
        id = 'vehicleDoors',
        icon = 'car-side',
        label = '車のドア',
        items = {
            {
                id = 'door0',
                icon = 'car-side',
                label = '運転席ドア',
                event = 'qb-radialmenu:client:openDoor',
                args = 0,
            },
            {
                id = 'door1',
                icon = 'car-side',
                label = '助手席ドア',
                event = 'qb-radialmenu:client:openDoor',
                args = 1,
            },
            {
                id = 'door2',
                icon = 'car-side',
                label = '後部左ドア',
                event = 'qb-radialmenu:client:openDoor',
                args = 2,
            },
            {
                id = 'door3',
                icon = 'car-side',
                label = '後部右ドア',
                event = 'qb-radialmenu:client:openDoor',
                args = 3,
            },
            {
                id = 'door4',
                icon = 'car-side',
                label = 'ボンネット',
                event = 'qb-radialmenu:client:openDoor',
                args = 4,
            },
            {
                id = 'door5',
                icon = 'car-side',
                label = 'トランク',
                event = 'qb-radialmenu:client:openDoor',
                args = 5,
            },
        },
    },

    vehicleWindows = {
        id = 'vehicleWindows',
        icon = 'car-side',
        label = '車の窓',
        items = {
            {
                id = 'window0',
                icon = 'car-side',
                label = '運転席窓',
                event = 'qbx_radialmenu:client:toggleWindows',
                args = 0,
            },
            {
                id = 'window1',
                icon = 'car-side',
                label = '助手席窓',
                event = 'qbx_radialmenu:client:toggleWindows',
                args = 1,
            },
            {
                id = 'window2',
                icon = 'car-side',
                label = '後部左窓',
                event = 'qbx_radialmenu:client:toggleWindows',
                args = 2,
            },
            {
                id = 'window3',
                icon = 'car-side',
                label = '後部右窓',
                event = 'qbx_radialmenu:client:toggleWindows',
                args = 3,
            },
        },
    },

    vehicleSeats = {
        id = 'vehicleSeats',
        icon = 'chair',
        label = '車のシート',
        menu = 'vehicleSeatsMenu'
    },

    vehicleExtras = {
        id = 'vehicleExtras',
        icon = 'plus',
        label = '車のエクストラ',
        items = {
            {
                id = 'extra1',
                icon = 'box-open',
                label = 'エクストラ 1',
                event = 'radialmenu:client:setExtra',
                args = 1,
            },
            {
                id = 'extra2',
                icon = 'box-open',
                label = 'エクストラ 2',
                event = 'radialmenu:client:setExtra',
                args = 2,
            },
            {
                id = 'extra3',
                icon = 'box-open',
                label = 'エクストラ 3',
                event = 'radialmenu:client:setExtra',
                args = 3,
            },
            {
                id = 'extra4',
                icon = 'box-open',
                label = 'エクストラ 4',
                event = 'radialmenu:client:setExtra',
                args = 4,
            },
            {
                id = 'extra5',
                icon = 'box-open',
                label = 'エクストラ 5',
                event = 'radialmenu:client:setExtra',
                args = 5,
            },
            {
                id = 'extra6',
                icon = 'box-open',
                label = 'エクストラ 6',
                event = 'radialmenu:client:setExtra',
                args = 6,
            },
            {
                id = 'extra7',
                icon = 'box-open',
                label = 'エクストラ 7',
                event = 'radialmenu:client:setExtra',
                args = 7,
            },
            {
                id = 'extra8',
                icon = 'box-open',
                label = 'エクストラ 8',
                event = 'radialmenu:client:setExtra',
                args = 8,
            },
            {
                id = 'extra9',
                icon = 'box-open',
                label = 'エクストラ 9',
                event = 'radialmenu:client:setExtra',
                args = 9,
            },
            {
                id = 'extra10',
                icon = 'box-open',
                label = 'エクストラ 10',
                event = 'radialmenu:client:setExtra',
                args = 10,
            },
            {
                id = 'extra11',
                icon = 'box-open',
                label = 'エクストラ 11',
                event = 'radialmenu:client:setExtra',
                args = 11,
            },
            {
                id = 'extra12',
                icon = 'box-open',
                label = 'エクストラ 12',
                event = 'radialmenu:client:setExtra',
                args = 12,
            },
            {
                id = 'extra13',
                icon = 'box-open',
                label = 'エクストラ 13',
                event = 'radialmenu:client:setExtra',
                args = 13,
            },
        },
    },

    trunkClasses = {
        [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
        [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
        [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
        [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
        [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
        [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
        [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
        [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
        [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
        [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
        [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
        [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
        [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
        [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
        [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
        [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
        [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
        [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
        [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
        [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
        [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
        [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Trains
    },

    clothingCommands = {
        top = {
            Func = function() ToggleClothing({'Top'}) end,
            Sprite = 'top',
            Desc = 'シャツを脱いだり着たりする',
            Button = 1,
            Name = '上半身',
        },
        gloves = {
            Func = function() ToggleClothing({'Gloves'}) end,
            Sprite = 'gloves',
            Desc = '手袋を脱いだり着たりする',
            Button = 2,
            Name = '手袋',
        },
        visor = {
            Func = function() ToggleProps({'Visor'}) end,
            Sprite = 'visor',
            Desc = '帽子のバリエーションを切り替える',
            Button = 3,
            Name = 'ツバ',
        },
        bag = {
            Func = function() ToggleClothing({'Bag'}) end,
            Sprite = 'bag',
            Desc = 'バッグを開いたり閉じたりする',
            Button = 8,
            Name = 'バッグ',
        },
        shoes = {
            Func = function() ToggleClothing({'Shoes'}) end,
            Sprite = 'shoes',
            Desc = '靴を脱いだり履いたりする',
            Button = 5,
            Name = '靴',
        },
        vest = {
            Func = function() ToggleClothing({'Vest'}) end,
            Sprite = 'vest',
            Desc = 'ベストを脱いだり着たりする',
            Button = 14,
            Name = 'ベスト',
        },
        hair = {
            Func = function() ToggleClothing({'Hair'}) end,
            Sprite = 'hair',
            Desc = '髪をまとめたりほどいたりする',
            Button = 7,
            Name = '髪型',
        },
        hat = {
            Func = function() ToggleProps({'Hat'}) end,
            Sprite = 'hat',
            Desc = '帽子を脱いだり被ったりする',
            Button = 4,
            Name = '帽子',
        },
        glasses = {
            Func = function() ToggleProps({'Glasses'}) end,
            Sprite = 'glasses',
            Desc = 'メガネを脱いだり掛けたりする',
            Button = 9,
            Name = 'メガネ',
        },
        ear = {
            Func = function() ToggleProps({'Ear'}) end,
            Sprite = 'ear',
            Desc = '耳飾りを取り外したり付けたりする',
            Button = 10,
            Name = '耳飾り',
        },
        neck = {
            Func = function() ToggleClothing({'Neck'}) end,
            Sprite = 'neck',
            Desc = '首飾りを取り外したり付けたりする',
            Button = 11,
            Name = '首飾り',
        },
        watch = {
            Func = function() ToggleProps({'Watch'}) end,
            Sprite = 'watch',
            Desc = '腕時計を脱いだり付けたりする',
            Button = 12,
            Name = '腕時計',
            Rotation = 5.0,
        },
        bracelet = {
            Func = function() ToggleProps({'Bracelet'}) end,
            Sprite = 'bracelet',
            Desc = 'ブレスレットを外したり付けたりする',
            Button = 13,
            Name = 'ブレスレット',
        },
        mask = {
            Func = function() ToggleClothing({'Mask'}) end,
            Sprite = 'mask',
            Desc = 'マスクを脱いだり着けたりする',
            Button = 6,
            Name = 'Mask',
        },

        pants = {
            Func = function() ToggleClothing({'Pants', true}) end,
            Sprite = 'pants',
            Desc = 'ズボンを脱いだり履いたりする',
            Name = 'ズボン',
            OffsetX = -0.04,
            OffsetY = 0.0,
        },
        shirt = {
            Func = function() ToggleClothing({'Shirt', true}) end,
            Sprite = 'shirt',
            Desc = 'Take your shirt off/on',
            Name = 'シャツ',
            OffsetX = 0.04,
            OffsetY = 0.0,
        },
        reset = {
            Func = function()
                if not ResetClothing(true) then
                    Notify('Nothing To Reset', 'error')
                end
            end,
            Sprite = 'reset',
            Desc = 'すべてを正常な状態に戻す',
            Name = 'リセット',
            OffsetX = 0.12,
            OffsetY = 0.2,
            Rotate = true
        },
        bagoff = {
            Func = function() ToggleClothing({'Bagoff', true}) end,
            Sprite = 'bagoff',
            SpriteFunc = function()
                local Bag = GetPedDrawableVariation(cache.ped, 5)
                local BagOff = LastEquipped['Bagoff']
                if LastEquipped['Bagoff'] then
                    if bags[BagOff.Drawable] then
                        return 'bagoff'
                    else
                        return 'paraoff'
                    end
                end
                if Bag ~= 0 then
                    if bags[Bag] then
                        return 'bagoff'
                    else
                        return 'paraoff'
                    end
                else
                    return false
                end
            end,
            Desc = 'バッグを外したり付けたりする',
            Name = 'バッグを外す',
            OffsetX = -0.12,
            OffsetY = 0.2,
        }
    },
}
