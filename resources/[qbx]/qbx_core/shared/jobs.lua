---職業名は小文字である必要があります (トップレベルテーブルキー)
---@type table<string, Job>
return {
    ['unemployed'] = {
        label = '市民',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'フリーランス',
                payment = 100
            },
        },
    },
    ['police'] = {
        label = '警察 (LSPD)',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '採用候補生',
                payment = 500
            },
            [1] = {
                name = '巡査',
                payment = 750
            },
            [2] = {
                name = '巡査部長',
                payment = 1000
            },
            [3] = {
                name = '警部補',
                payment = 1250
            },
            [4] = {
                name = '署長',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['bcso'] = {
        label = '保安官 (BCSO)',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '採用候補生',
                payment = 500
            },
            [1] = {
                name = '保安官代理',
                payment = 750
            },
            [2] = {
                name = '軍曹',
                payment = 1000
            },
            [3] = {
                name = '警部補',
                payment = 1250
            },
            [4] = {
                name = '保安官',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['sasp'] = {
        label = '州警察 (SASP)',
        type = 'leo',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '採用候補生',
                payment = 500
            },
            [1] = {
                name = '巡査',
                payment = 750
            },
            [2] = {
                name = '巡査部長',
                payment = 1000
            },
            [3] = {
                name = '警部補',
                payment = 1250
            },
            [4] = {
                name = '本部長',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['ambulance'] = {
        label = '救急隊 (EMS)',
        type = 'ems',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '研修生',
                payment = 500
            },
            [1] = {
                name = '救急救命士',
                payment = 750
            },
            [2] = {
                name = '医師',
                payment = 1000
            },
            [3] = {
                name = '外科医',
                payment = 1250
            },
            [4] = {
                name = '院長',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['realestate'] = {
        label = '不動産業',
        type = 'realestate',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '見習い',
                payment = 500
            },
            [1] = {
                name = '住宅販売員',
                payment = 750
            },
            [2] = {
                name = '店舗販売員',
                payment = 1000
            },
            [3] = {
                name = 'ブローカー',
                payment = 1250
            },
            [4] = {
                name = 'マネージャー',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['taxi'] = {
        label = 'タクシー',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '見習い',
                payment = 500
            },
            [1] = {
                name = 'ドライバー',
                payment = 750
            },
            [2] = {
                name = 'イベントドライバー',
                payment = 1000
            },
            [3] = {
                name = '営業',
                payment = 1250
            },
            [4] = {
                name = 'マネージャー',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['bus'] = {
        label = 'バス',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '運転手',
                payment = 500
            },
        },
    },
    ['cardealer'] = {
        label = 'カーディーラー',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '見習い',
                payment = 500
            },
            [1] = {
                name = 'ショールーム担当',
                payment = 750
            },
            [2] = {
                name = '法人営業',
                payment = 1000
            },
            [3] = {
                name = '財務担当',
                payment = 1250
            },
            [4] = {
                name = '店長',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['mechanic'] = {
        label = 'メカニック',
        type = 'mechanic',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '見習い',
                payment = 500
            },
            [1] = {
                name = '新人整備士',
                payment = 750
            },
            [2] = {
                name = '熟練整備士',
                payment = 1000
            },
            [3] = {
                name = '上級整備士',
                payment = 1250
            },
            [4] = {
                name = '工場長',
                isboss = true,
                bankAuth = true,
                payment = 1500
            },
        },
    },
    ['judge'] = {
        label = '司法',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '裁判官',
                payment = 1000
            },
        },
    },
    ['lawyer'] = {
        label = '法律事務所',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'アソシエイト弁護士',
                payment = 500
            },
        },
    },
    ['reporter'] = {
        label = '報道',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'ジャーナリスト',
                payment = 500
            },
        },
    },
    ['trucker'] = {
        label = '運送業',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = 'トラック運転手',
                payment = 500
            },
        },
    },
    ['tow'] = {
        label = 'レッカー',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '運転手',
                payment = 500
            },
        },
    },
    ['garbage'] = {
        label = '清掃業',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '収集員',
                payment = 500
            },
        },
    },
    ['vineyard'] = {
        label = 'ワイナリー',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '収穫作業員',
                payment = 500
            },
        },
    },
    ['hotdog'] = {
        label = 'ホットドッグ屋',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            [0] = {
                name = '販売員',
                payment = 500
            },
        },
    },
}