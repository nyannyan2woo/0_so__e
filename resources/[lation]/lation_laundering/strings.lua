Strings = {}

Strings.Notify = {
    runStarted = '新しい契約を受領しました',
    runStopped = '新しい契約の受領を停止しました',
    noContracts = 'これ以上契約を実行できません',
    runsEnded = '資金が尽きたため、これ以上の契約は割り当てられません',
    noPolice = '都市に十分な警察がいません',
    noMoney = 'お金が足りません',
    notAuthorized = '入室する権限がありません',
    requireItem = 'まだ準備ができていないようです..',
    noAccess = 'これにアクセスする権限がありません',
    remaining = {
        base = '資金の準備ができるまであと',
        hours = '時間',
        minutes = '分',
        aand = 'と',
        seconds = '秒です'
    }
}

Strings.Targets = {
    start = {
        name = 'Talk',
        label = '話す',
        icon = 'fas fa-money-bill-wave',
        iconColor = '',
        distance = 2.0
    },
    clean = {
        name = 'Talk',
        label = '話す',
        icon = 'fas fa-comments',
        iconColor = '',
        distance = 2.0
    },
    enterWarehouse = {
        name = 'enterWarehouse',
        label = '入る',
        icon = 'fas fa-right-to-bracket',
        iconColor = '',
        radius = 1.0,
        distance = 2.0
    },
    exitWarehouse = {
        name = 'exitWarehouse',
        label = '出る',
        icon = 'fas fa-right-from-bracket',
        iconColor = '',
        radius = 1.0,
        distance = 2.0
    },
    startWashing = {
        name = 'startWashing',
        label = '洗浄を開始',
        icon = 'fas fa-hands-bubbles',
        iconColor = '',
        radius = 1.0,
        distance = 2.0
    },
    pickupMoney = {
        name = 'pickupMoney',
        label = 'お金を取る',
        icon = 'fas fa-hand-holding-dollar',
        iconColor = '',
        radius = 1.0,
        distance = 2.0
    },
    countMoney = {
        name = 'counter',
        label = '計算を開始',
        icon = 'fas fa-sack-dollar',
        iconColor = '',
        distance = 2.0
    }
}

Strings.TextUI = {
    start = {
        label = '**マネーロンダリング**  \n E - 話す',
        icon = 'fas fa-sack-dollar'
    },
    clean = {
        label = '**資金洗浄**  \n E - 話す',
        icon = 'fas fa-sack-dollar'
    },
    enterWarehouse = {
        label = '**倉庫**  \n E - 入る',
        icon = 'fas fa-right-to-bracket'
    },
    exitWarehouse = {
        label = '**倉庫**  \n E - 出る',
        icon = 'fas fa-right-from-bracket'
    },
    startWashing = {
        label = '**洗濯機**  \n E - 洗浄を開始',
        icon = 'fas fa-hands-bubbles'
    },
    pickupMoney = {
        label = '**洗濯機**  \n E - お金を取る',
        icon = 'fas fa-hand-holding-dollar'
    },
    countMoney = {
        label = '**お金を数える**  \n E - 計算を開始',
        icon = 'fas fa-sack-dollar'
    }
}

Strings.Alert = {
    notEnough = { header = '**申し訳ありません**', content = 'お金が足りないようです。私の時間を無駄にしないでください。', centered = true, cancel = false },
    rejected = { header = '**お断りします**', content = 'あなたとのビジネスには興味がありません。', centered = true, cancel = false },
    denyNegotiate = { header = '**さようなら**', content = 'いいえ、あなたのオファーには興味がありません。', centered = true, cancel = false },
    buyKey = { header = '**確認**', content = '倉庫の鍵を $', centered = true, cancel = true } -- Note: The original string ends with '$' expecting concatenation. I'll translate carefully while keeping potential structure but usually Japanese puts the price first or differently. Since it's concatenated, I assume the code does `.. price`. So '倉庫の鍵を $... で購入してもよろしいですか？' is tricky if the code does `.. '$'`.  Assuming the code appends the number. Let's see how it's used. "purchase a warehouse key for $" -> "倉庫の鍵を $" is probably safe if the number follows. Let's add 'で購入しますか？' at the end if I could but I can't inject code. Wait, the original is just a string. Code likely does: content = Strings.Alert.buyKey.content .. price .. '?' or similar. Actually looking at the English: '... for $' -> '... for $500?'.  Japanese: '...を $500 で購入しますか？'. So I should probably leave it ending in $ or equivalent. Let's try: '倉庫の鍵を $' -> '倉庫の鍵を $' (price follows).
}

Strings.Inputs = {
    wash = {
        header = 'お金を洗う',
        label = '数量',
        desc = '所持金: $',
        desc2 = '。いくら洗浄しますか？',
        icon = 'hashtag'
    },
    count = {
        header = 'お金を数える',
        label = '数量',
        desc = '所持金: $',
        desc2 = '。いくら数えますか？',
        icon = 'hashtag'
    }
}

Strings.Menu = {
    main = { -- メインのマネーロンダリングメニュー
        title = 'マネーロンダリング',
        level = {
            title = 'レベル',
            desc = '現在のロンダリングレベル: ',
            desc2 = ' - 税率: ',
            desc3 = '%',
            icon = 'fas fa-ranking-star',
            iconColor = ''
        },
        xp = {
            title = '経験値',
            desc = '次のレベルへの進捗: ',
            desc2 = '%',
            icon = 'fas fa-chart-bar',
            iconColor = ''
        },
        contracts = {
            title = '契約',
            desc = '完了した契約の合計: ',
            icon = 'fas fa-file-signature',
            iconColor = ''
        },
        money = {
            title = '洗浄済み資金',
            desc = '洗浄された資金の総額: $',
            icon = 'fas fa-money-bill-wave',
            iconColor = ''
        },
        start = {
            title = '新規契約',
            desc = '新しいマネーロンダリング契約の受領を開始',
            icon = 'fas fa-circle-play',
            iconColor = '#51cf66',
        },
        stop = {
            title = '契約停止',
            desc = '新しいマネーロンダリング契約の受領を停止',
            icon = 'fas fa-circle-stop',
            iconColor = '#fa5252'
        },
        warehouse = {
            title = '倉庫',
            desc = '倉庫へのアクセスに必要な鍵を購入',
            icon = 'fas fa-key',
            iconColor = ''
        },
        vehicle = {
            title = '車両返却',
            desc = '借りた車両を返却し、デポジットを受け取る',
            icon = 'fas fa-car',
            iconColor = ''
        }
    },
    negotiate = {
        title = '交渉',
        accept = {
            title = 'オファーを承諾',
            desc = '現在のオファーは $',
            desc2 = ' *洗浄済み* (元金: $',
            desc3 = ' *汚れたお金*)',
            icon = 'fas fa-check',
            iconColor = ''
        },
        negotiate = {
            title = '交渉',
            desc = '買い手とオファーを再交渉する',
            icon = 'fas fa-repeat',
            iconColor = ''
        }
    },
    final = {
        title = '最終オファー',
        accept = {
            title = 'オファーを承諾',
            desc = '最終オファーは $',
            desc2 = ' *洗浄済み* (元金: $',
            desc3 = ' *汚れたお金*)',
            icon = 'fas fa-check',
            iconColor = ''
        },
        deny = {
            title = 'オファーを拒否',
            desc = '買い手の最終オファーを断る',
            icon = 'fas fa-rectangle-xmark',
            iconColor = ''
        }
    },
    colors = { -- ox_lib メニューの進行状況バーに使用されるさまざまな色
        red = '#fa5252',
        yellow = '#fcc419',
        green = '#51cf66'
    },
}

Strings.Phone = {
    title = '倉庫',
    sender = '倉庫',
    name = '倉庫',
    subject = '資金ステータス',
    message = '資金の処理が完了し、回収の準備が整いました。'
}

Strings.Logs = {
    colors = {
        green = 65280,
        red = 16711680,
        yellow = 16776960,
    },
    titles = {
        levelUp = '⬆️ レベルアップ',
        contract = '💰 契約完了',
        warehouse = '🧽 洗浄完了',
        counting = '#️⃣ 計算完了',
        negotiate = '🤝 契約交渉',
        rejected = '❌ 契約拒否',
        warehouseKey = '🔑 倉庫倉庫の鍵購入',
    },
    messages = {
        playerName = '**プレイヤー名**: ',
        playerID = '\n **プレイヤーID**: ',
        playerIdent = '\n **識別子**: ',
        message = '\n **メッセージ**: ',
        levelUp = 'ユーザーがレベルにレベルアップしました ',
        contract = 'ユーザーが $',
        contract2 = ' の汚れたお金を $',
        contract3 = ' の洗浄済み現金に洗浄しました',
        warehouse = 'ユーザーが $',
        warehouse2 = ' の汚れたお金を $',
        warehouse3 = ' の未計算現金に洗浄しました',
        counting = 'ユーザーが計算を完了し、$ を受け取りました: ',
        negotiate = 'ユーザーが契約オファーを $',
        negotiate2 = ' から $',
        negotiate3 = ' (汚れたお金) に交渉しました',
        negotiateAccepted = ' - 承諾 ✅',
        negotiateDenied = ' - 拒否 ❌',
        rejected = 'ユーザーが契約試行中に拒否されました',
        warehouseKey = 'ユーザーが倉庫の鍵を $ で購入しました: ',
    }
}