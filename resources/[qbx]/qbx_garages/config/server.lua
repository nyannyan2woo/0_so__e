return {
    autoRespawn = true, -- true にするとスクリプト再起動時に外にある車両をガレージに自動で戻します。false の場合は戻さず、プレイヤーは押収保管所へ行く必要があります
    warpInVehicle = true, -- false の場合、車両を出庫してもプレイヤーは車内にワープしません
    doorsLocked = true, -- true の場合、車両を出したときにドアがロックされます
    distanceCheck = 5.0, -- 車両がスポーンできるために必要な空き距離（車両が重ならないようにするため）
    ---自動押収料金を計算します。
    ---@param vehicleId integer
    ---@param modelName string
    ---@return integer fee
    calculateImpoundFee = function(vehicleId, modelName)
        local vehCost = VEHICLES[modelName].price
        return qbx.math.round(vehCost * 0.02) or 0
    end,

    ---@class GarageBlip
    ---@field name? string -- ブリップの名前。省略時はガレージのラベルを使用します
    ---@field sprite? number -- ブリップのスプライト。省略時は357です
    ---@field color? number -- ブリップの色。省略時は3です

    ---プレイヤーがガレージにアクセスして車両を出庫できる場所です
    ---@class AccessPoint
    ---@field coords vector4 ガレージメニューにアクセスできる座標
    ---@field blip? GarageBlip
    ---@field spawn? vector4 車両が出現する座標。省略時は coords と同じ
    ---@field dropPoint? vector3 車両を保管できるポイント。省略時は spawn または coords

    ---@class GarageConfig
    ---@field label string -- ガレージの表示名
    ---@field type? GarageType -- 任意の特別なガレージタイプ。現在は主に DEPOT（押収保管所）を示すために使用されます
    ---@field vehicleType VehicleType -- 車両の種類
    ---@field groups? string | string[] | table<string, number> ガレージにアクセスできる職業やギャング
    ---@field shared? boolean -- 省略時は false。共有ガレージが有効な場合、アクセス権を持つ全プレイヤーがそのガレージ内の全ての車両にアクセスできます。無効な場合はプレイヤー自身の所有車両のみが表示されます
    ---@field states? VehicleState | VehicleState[] -- 設定すると、指定した状態の車両のみが取り出し可能になります。省略時は GARAGED
    ---@field skipGarageCheck? boolean -- true の場合、その車両の登録ガレージ名と一致しなくても取り出し可能な車両として返します
    ---@field canAccess? fun(source: number): boolean -- 追加のアクセス判定関数。他のフィルタ条件も満たす必要があります
    ---@field accessPoints AccessPoint[] -- アクセスポイントの配列

    ---@type table<string, GarageConfig>
    garages = {
        -- Public Garages
        motelgarage = {
            label = 'モーテル',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(275.58, -344.74, 45.17, 70.0),
                    spawn = vec4(271.26, -342.32, 44.7, 159.97),
                }
            },
        },
        sapcounsel = {
            label = 'サンアンドレアス',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(-330.67, -781.12, 33.96, 40.46),
                    spawn = vec4(-337.11, -775.34, 33.56, 132.09),
                }
            },
        },
        spanishave = {
            label = 'スペインアベニュー',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(-1160.46, -741.04, 19.95, 41.26),
                    spawn = vec4(-1165.38, -747.65, 18.94, 40.45),
                }
            },
        },
        caears24 = {
            label = 'Caears 24',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(68.08, 13.15, 69.21, 160.44),
                    spawn = vec4(72.61, 11.72, 68.47, 157.59),
                },
            },
        },
        littleseoul = {
            label = 'リトルソウル',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(-463.51, -808.2, 30.54, 0.0),
                    spawn = vec4(-472.24, -813.61, 30.3, 179.88),
                }
            },
        },
        lagunapi = {
            label = 'ラグーナ',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(363.85, 297.97, 103.5, 341.39),
                    spawn = vec4(367.41, 297.02, 103.2, 341.08),
                }
            },
        },
        airportp = {
            label = '空港',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(-796.07, -2023.26, 9.17, 55.18),
                    spawn = vec4(-793.35, -2020.62, 8.51, 58.42),
                }
            },
        },
        beachp = {
            label = 'ビーチ',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(-1184.21, -1509.65, 4.65, 303.72),
                    spawn = vec4(-1184.4, -1501.88, 4.39, 214.7),
                }
            },
        },
        themotorhotel = {
            label = 'ザ・モーターホテル',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(1137.77, 2663.54, 37.9, 0.0),
                    spawn = vec4(1137.56, 2674.19, 38.17, 359.95),
                }
            },
        },
        liqourparking = {
            label = 'リカーショップ',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(960.68, 3609.32, 32.98, 268.97),
                    spawn = vec4(960.48, 3605.71, 32.98, 87.09),
                }
            },
        },
        shoreparking = {
            label = 'ショア',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(1726.9, 3710.38, 34.26, 22.54),
                    spawn = vec4(1728.65, 3714.85, 34.18, 21.26),
                }
            },
        },
        haanparking = {
            label = 'ベルファーム',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(78.34, 6418.74, 31.28, 0),
                    spawn = vec4(70.71, 6425.16, 30.92, 68.5),
                }
            },
        },
        dumbogarage = {
            label = 'ダンボプライベート',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(157.26, -3240.00, 7.00, 0),
                    spawn = vec4(165.32, -3236.10, 5.93, 268.5),
                }
            },
        },
        pillboxgarage = {
            label = 'ピルボックスガレージ',
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = 'ガレージ',
                        sprite = 357,
                        color = 3,
                    },
                    coords = vec4(218.66, -804.08, 30.75, 65.69),
                    spawn = vec4(229.33, -805.01, 30.54, 156.79),
                }
            },
        },
        -- intairport = {
        --     label = '空港',
        --     vehicleType = VehicleType.AIR,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - 航空',
        --                 sprite = 360,
        --                 color = 3,
        --             },
        --             coords = vec4(-1025.34, -3017.0, 13.95, 331.99),
        --             spawn = vec4(-979.2, -2995.51, 13.95, 52.19),
        --         }
        --     },
        -- },
        -- higginsheli = {
        --     label = 'ヒギンズヘリツアーズ',
        --     vehicleType = VehicleType.AIR,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - 航空',
        --                 sprite = 360,
        --                 color = 3,
        --             },
        --             coords = vec4(-722.12, -1472.74, 5.0, 140.0),
        --             spawn = vec4(-724.83, -1443.89, 5.0, 140.0),
        --         }
        --     },
        -- },
        -- airsshores = {
        --     label = 'サンディショアーズ',
        --     vehicleType = VehicleType.AIR,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - 航空',
        --                 sprite = 360,
        --                 color = 3,
        --             },
        --             coords = vec4(1757.74, 3296.13, 41.15, 142.6),
        --             spawn = vec4(1740.88, 3278.99, 41.09, 189.46),
        --         }
        --     },
        -- },
        -- lsymc = {
        --     label = 'LSYMC',
        --     vehicleType = VehicleType.SEA,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - ボート',
        --                 sprite = 356,
        --                 color = 3,
        --             },
        --             coords = vec4(-794.64, -1510.89, 1.6, 201.55),
        --             spawn = vec4(-793.58, -1501.4, 0.12, 111.5),
        --         }
        --     },
        -- },
        -- paleto = {
        --     label = 'パレト',
        --     vehicleType = VehicleType.SEA,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - ボート',
        --                 sprite = 356,
        --                 color = 3,
        --             },
        --             coords = vec4(-277.4, 6637.01, 7.5, 40.51),
        --             spawn = vec4(-289.2, 6637.96, 1.01, 45.5),
        --         }
        --     },
        -- },
        -- millars = {
        --     label = 'ミラーズ',
        --     vehicleType = VehicleType.SEA,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = 'ガレージ - ボート',
        --                 sprite = 356,
        --                 color = 3,
        --             },
        --             coords = vec4(1299.02, 4216.42, 33.91, 166.8),
        --             spawn = vec4(1296.78, 4203.76, 30.12, 169.03),
        --         }
        --     },
        -- },

        -- Job Garages
        police = {
            label = '警察',
            vehicleType = VehicleType.CAR,
            groups = 'police',
            accessPoints = {
                {
                    coords = vec4(454.6, -1017.4, 28.4, 0),
                    spawn = vec4(438.4, -1018.3, 27.7, 90.0),
                }
            },
        },

        -- Gang Garages
        ballas = {
            label = 'バラス',
            vehicleType = VehicleType.CAR,
            groups = 'ballas',
            accessPoints = {
                {
                    coords = vec4(98.50, -1954.49, 20.84, 0),
                    spawn = vec4(98.50, -1954.49, 20.75, 335.73),
                }
            },
        },
        families = {
            label = 'ラ・ファミリア',
            vehicleType = VehicleType.CAR,
            groups = 'families',
            accessPoints = {
                {
                    coords = vec4(-811.65, 187.49, 72.48, 0),
                    spawn = vec4(-818.43, 184.97, 72.28, 107.85),
                }
            },
        },
        lostmc = {
            label = 'ロスト MC',
            vehicleType = VehicleType.CAR,
            groups = 'lostmc',
            accessPoints = {
                {
                    coords = vec4(957.25, -129.63, 74.39, 0),
                    spawn = vec4(957.25, -129.63, 74.39, 199.21),
                }
            },
        },
        cartel = {
            label = 'カルテル',
            vehicleType = VehicleType.CAR,
            groups = 'cartel',
            accessPoints = {
                {
                    coords = vec4(1407.18, 1118.04, 114.84, 0),
                    spawn = vec4(1407.18, 1118.04, 114.84, 88.34),
                }
            },
        },

        -- Impound Lots
        impoundlot = {
            label = '押収保管所',
            type = GarageType.DEPOT,
            states = {VehicleState.OUT, VehicleState.IMPOUNDED},
            skipGarageCheck = true,
            vehicleType = VehicleType.CAR,
            accessPoints = {
                {
                    blip = {
                        name = '押収保管所',
                        sprite = 68,
                        color = 3,
                    },
                    coords = vec4(400.45, -1630.87, 29.29, 228.88),
                    spawn = vec4(407.2, -1645.58, 29.31, 228.28),
                }
            },
        },
        -- airdepot = {
        --     label = '航空',
        --     type = GarageType.DEPOT,
        --     states = {VehicleState.OUT, VehicleState.IMPOUNDED},
        --     skipGarageCheck = true,
        --     vehicleType = VehicleType.AIR,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = '押収保管所 - 航空',
        --                 sprite = 359,
        --                 color = 3,
        --             },
        --             coords = vec4(-1244.35, -3391.39, 13.94, 59.26),
        --             spawn = vec4(-1269.03, -3376.7, 13.94, 330.32),
        --         }
        --     },
        -- },
        -- seadepot = {
        --     label = 'LSYMC',
        --     type = GarageType.DEPOT,
        --     states = {VehicleState.OUT, VehicleState.IMPOUNDED},
        --     skipGarageCheck = true,
        --     vehicleType = VehicleType.SEA,
        --     accessPoints = {
        --         {
        --             blip = {
        --                 name = '押収保管所 - ボート',
        --                 sprite = 356,
        --                 color = 3,
        --             },
        --             coords = vec4(-772.71, -1431.11, 1.6, 48.03),
        --             spawn = vec4(-729.77, -1355.49, 1.19, 142.5),
        --         }
        --     },
        -- },
    },
}
