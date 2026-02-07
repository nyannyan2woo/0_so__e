---Gang names must be lower case (top level table key)
---@type table<string, Gang>
return {
    ['none'] = {
        label = '堅気',
        grades = {
            [0] = {
                name = '一般市民'
            },
        },
    },
    ['lostmc'] = {
        label = '羅洲斗連合',
        grades = {
            [0] = {
                name = '見習い'
            },
            [1] = {
                name = '構成員'
            },
            [2] = {
                name = '幹部'
            },
            [3] = {
                name = '総長',
                isboss = true,
                bankAuth = true
            },
        },
    },
    ['ballas'] = {
        label = '刃羅洲組',
        grades = {
            [0] = {
                name = '組員見習い'
            },
            [1] = {
                name = '構成員'
            },
            [2] = {
                name = '若頭補佐'
            },
            [3] = {
                name = '組長',
                isboss = true,
                bankAuth = true
            },
        },
    },
    ['vagos'] = {
        label = '葉護洲会',
        grades = {
            [0] = {
                name = '準構成員'
            },
            [1] = {
                name = '構成員'
            },
            [2] = {
                name = '幹部'
            },
            [3] = {
                name = '会長',
                isboss = true,
                bankAuth = true
            },
        },
    },
    ['cartel'] = {
        label = '加流帝琉一家',
        grades = {
            [0] = {
                name = '舎弟'
            },
            [1] = {
                name = '若衆'
            },
            [2] = {
                name = '本部長'
            },
            [3] = {
                name = '総裁',
                isboss = true,
                bankAuth = true
            },
        },
    },
    ['families'] = {
        label = '譜亜美李会',
        grades = {
            [0] = {
                name = '見習い'
            },
            [1] = {
                name = '組員'
            },
            [2] = {
                name = '若頭'
            },
            [3] = {
                name = '組長',
                isboss = true,
                bankAuth = true
            },
        },
    },
    ['triads'] = {
        label = '兎来亜土睦会',
        grades = {
            [0] = {
                name = '構成員'
            },
            [1] = {
                name = '幹部'
            },
            [2] = {
                name = '若頭'
            },
            [3] = {
                name = '組長',
                isboss = true,
                bankAuth = true
            },
        },
    }
}
