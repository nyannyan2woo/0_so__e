Strings = {}

Strings.Notify = {
    lostItem = 'アイテムを見失い、移動しました',
    stopped = '金属探知を停止しました',
    alreadyDigging = 'すでに掘っています',
    nothingToDig = 'ここには掘るものはありません',
    noShovel = 'シャベルを持っていません',
    nothingToSell = '価値のあるものを持っていません',
    levelUp = '金属探知のレベルが上がりました！',
    noMoney = 'お金が足りません',
    noLevel = 'この金属探知機に必要なレベルに達していません',
    inVehicle = 'それはできません',
    cantDetect = 'このエリアでは金属探知できません',
    notAuthorized = 'これを行う権限がありません'
}

Strings.TextUI = {
    shop = {
        label = '**ショップ**  \n E- 開く',
        icon = 'basket-shopping'
    },
    searching = {
        label = '**金属探知中**  \n 探索中..',
        icon = 'magnifying-glass'
    },
    distance = {
        label = '**金属探知中**  \n 距離: ',
        icon = 'location-dot'
    },
    dig = {
        label = '**金属探知中**  \n E - 掘り始める',
        icon = 'trowel'
    },
    error = {
        label = '**金属探知中**  \n エラー',
        icon = 'exclamation-triangle'
    }
}

Strings.Target = {
    shop = {
        icon = 'fas fa-shopping-basket',
        label = 'ショップを開く',
    },
    distance = 2
}

Strings.ContextMenu = {
    detector_shop = { -- プレイヤーが金属探知機を購入するショップ
        title = '金属探知',
        subtitle = ' | $',
        level1 = { -- Blue metal detector
            title = '初心者のビーコン',
            description = '初心者向け、初心者のビーコンはシンプルで信頼性があります。宝探しの旅を始める人に最適です。',
            icon = 'fas fa-magnifying-glass-location',
            image = 'nui://lation_detecting/install/images/blue_metaldetector.png',
            metadata = {
                radius = { label = '半径', value = '2.5/10', progress = 25 },
                depth = { label = '深度', value = '3/10', progress = 30 },
                accuracy = { label = '精度', value = '3.5/10', progress = 35 }
            }
        },
        level2 = { -- Green metal detector
            title = '輝きのロケーター',
            description = '輝きのロケーターでゲームをステップアップしましょう。強化された深度機能と優れた素材識別により、野心的な探検家に選ばれています。',
            icon = 'fas fa-magnifying-glass-location',
            image = 'nui://lation_detecting/install/images/green_metaldetector.png',
            metadata = {
                radius = { label = '半径', value = '4.1/10', progress = 41 },
                depth = { label = '深度', value = '5/10', progress = 50 },
                accuracy = { label = '精度', value = '4.3/10', progress = 43 }
            }
        },
        level3 = { -- Red metal detector
            title = '財宝トラッカー',
            description = '地下の秘密を解き明かしましょう。優れた感度と高度なフィルタリングを備えた財宝トラッカーは、あなたを富へと導きます。',
            icon = 'fas fa-magnifying-glass-location',
            image = 'nui://lation_detecting/install/images/red_metaldetector.png',
            metadata = {
                radius = { label = '半径', value = '5.8/10', progress = 58 },
                depth = { label = '深度', value = '6.4/10', progress = 64 },
                accuracy = { label = '精度', value = '5.2/10', progress = 52 }
            }
        },
        level4 = { -- Orange metal detector
            title = 'ゴールドシーカーの聖杯',
            description = '冒険心のある人のために特別に設計されました。ゴールドシーカーの聖杯は、検出機能とチューニングが強化されています。金属や遺物は逃しません。',
            icon = 'fas fa-magnifying-glass-location',
            image = 'nui://lation_detecting/install/images/orange_metaldetector.png',
            metadata = {
                radius = { label = '半径', value = '7.5/10', progress = 75 },
                depth = { label = '深度', value = '8.5/10', progress = 85 },
                accuracy = { label = '精度', value = '7.2/10', progress = 72 }
            }
        },
        level5 = { -- Black metal detector
            title = '考古学のエース',
            description = '目利きのプロのために作られました。考古学のエースは、比類のない深度検出と複雑な物体分析を誇ります。より深く潜り、より多くを発見してください。',
            icon = 'fas fa-magnifying-glass-location',
            image = 'nui://lation_detecting/install/images/black_metaldetector.png',
            metadata = {
                radius = { label = '半径', value = '10/10', progress = 100 },
                depth = { label = '深度', value = '9.6/10', progress = 96 },
                accuracy = { label = '精度', value = '8.6/10', progress = 86 }
            }
        }
    },
    sell_shop = {
        title = '売却ショップ',
        sellAll = {
            title = 'すべて売却',
            description = '持っているアイテムをすべて売却します',
            icon = 'fas fa-sack-dollar'
        },
        selectItem = {
            title = 'アイテムを選択',
            description = '売却したいアイテムを選択してください',
            icon = 'fas fa-hand-pointer'
        },
        singleItem = {
            description = 'あなたは x%s 所持しており、それぞれ $%s で売れます',
            icon = 'fas fa-dollar-sign'
        },
        shovel = {
            title = 'シャベルを購入',
            icon = 'fas fa-trowel'
        }
    },
    stats_menu = {
        title = 'Metal Detecting',
        colors = {
            red = 'red',
            yellow = 'yellow',
            green = 'green'
        },
        level = {
            title = '現在のレベル',
            description = '現在のレベルは %s/5 です',
            icon = 'fas fa-ranking-star'
        },
        progress = {
            title = '現在の進捗',
            description = '次のレベルまでの進捗: ',
            description2 = '%',
            icon = 'fas fa-bars-progress',
            metadata = {
                currentXP = {one = '現在の経験値', two = 'XP'},
                nextLevel = {one = '次のレベルまで', two = 'XP'}
            }
        },
        itemsFound = {
            title = '発見したアイテム',
            description = '合計 %s 個のアイテムを発見しました',
            icon = 'fas fa-person-digging'
        },
        moneyEarned = {
            title = '獲得した金額',
            description = '合計で $',
            icon = 'fas fa-sack-dollar'
        }
    }
}

Strings.InputDialog = {
    title = '%s の売却確認',
    label = '数量',
    description = 'いくつ売りますか？ x%s 所持しています',
    icon = 'hashtag'
}

Strings.AlertDialog = {
    selling = {
        header = '確認',
        content = 'すべてを $%s で売却します。続行してもよろしいですか？',
        labels = { confirm = 'はい', cancel = 'いいえ' }
    },
    buyDetector = {
        header = '購入確認',
        content = 'この金属探知機は $%s です。続行しますか？',
        centered = true,
        cancel = true,
        labels = { confirm = '購入', cancel = 'やめる' }
    }
}

Strings.Logs = {
    found_item = {
        title = 'アイテム発見',
        message = '%s (ID: %s) が x%s %s を発見しました'
    },
    level_up = {
        title = 'レベルアップ',
        message = '%s (ID: %s) がレベル %s にレベルアップしました'
    },
    buy_detector = {
        title = '探知機購入',
        message = '%s (ID: %s) が %s を購入しました'
    },
    item_sold = {
        title = 'アイテム売却',
        message = '%s (ID: %s) が x%s %s を $%s で売却しました'
    },
    item_sold_all = {
        title = 'アイテム一括売却',
        message = '%s (ID: %s) がアイテム: %s を合計 $%s で売却しました'
    }
}