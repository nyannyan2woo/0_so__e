Strings = {}

Strings.Symbols = {
    dollar = '$',
    quantity = 'x',
    each = 'each',
    plus = '+'
}

Strings.Notify = {
    rejects = {
        'ふざけてるのか？ 俺から離れろ',
        '警察に通報するぞ、クズが！',
        'お前みたいなのがこの街の問題なんだよ.. あばよ',
        '俺が犯罪者に見えるか？',
        '消えろ、チンピラ！',
        'クズとは取引しねぇ！',
        '後悔する前に失せな！',
        '気が狂ってるに違いない！',
        'お前の怪しい取引には興味がねぇ。',
        '人違いだろ、相棒！',
        'そんなガラクタいらねぇ、失せろ！',
        '無駄だ、興味ねぇよ！',
        '関わりたくねぇんだ！',
        '俺の額に「ヤク中」って書いてあるか？',
        '話は終わりだ！',
        '二度とそんなくだらない話を持ってくるな！',
        '人違いだ、ここから出て行け！'
        -- Add or remove rejection messages here
    },
    robbed = '買い手が金を払わずにドラッグを持ち逃げした、取り返せ！',
    escaped = '泥棒はドラッグを全部持って逃げた..',
    daytime = '白昼堂々ここでドラッグを売るのは賢明ではないようだ..',
    police = '現在、これを行うのに十分な警察官が勤務していません..',
    ignoreModel = '買い手は完全にあなたを無視しています',
    cooldown = '頻繁には販売できません - 後でもう一度試してください',
    limit = 'この場所はヤバくなってきた.. 他の場所に行ったほうがいい',
    levelUp = 'おめでとうございます、レベルアップしました！',
    noVehicle = '車内からは販売できません'
}

Strings.TextUI = {
    selling = {
        label = '**ドラッグ販売**  \n E - メニューを開く',
        icon = 'fas fa-capsules'
    },
    robbed = {
        label = '**ドラッグ回収**  \n E - 取り返す',
        icon = 'fas fa-capsules'
    }
}

Strings.Target = {
    selling = {
        label = 'ドラッグを売る',
        icon = 'fas fa-capsules',
        color = '',
        dist = 3.0
    },
    robbed = {
        label = 'ドラッグを取り返す',
        icon = 'fas fa-capsules',
        color = '',
        dist = 3.0
    }
}

Strings.Menu = {
    selling = {
        title = 'ドラッグ販売',
        drugs = {
            desc = '現在所持しているのは ',
            meta = {
                each = '買取価格',
                risk = 'リスクボーナス',
                rep = '評判ボーナス',
                quantity = '買取希望数',
                total = '合計販売額',
            }
        },
        rep = {
            title = '評判 | レベル ',
            -- Description found in Config.Reputation.levels
            icon = 'fas fa-chart-line',
            iconColor = '',
            meta = {
                currentRep = '現在の評判',
                repUntilLevel = 'レベルアップまで'
            }
        },
        stats = {
            title = 'あなたの統計',
            desc = '全期間の統計を表示',
            icon = 'fas fa-chart-simple',
            iconColor = ''
        },
        cancel = {
            title = 'やめる',
            desc = 'この買い手との取引をキャンセル',
            icon = 'fas fa-delete-left',
            iconColor = '#FF4444'
        },
    },
    stats = {
        title = 'あなたの統計',
        sales = {
            title = '総売上',
            desc = 'あなたは合計 ',
            desc2 = ' 個のドラッグを売りました',
            icon = 'fas fa-capsules',
            iconColor = ''
        },
        earned = {
            title = '獲得金額',
            desc = 'あなたは合計 $',
            icon = 'fas fa-money-bill-wave',
            iconColor = ''
        }
    }
}

Strings.Logs = {
    selling = {
        title = 'ドラッグ販売完了',
        message = '%s (ID: %s) が x%s %s を $%s で売却しました'
    },
    robbed = {
        title = 'プレイヤー強盗被害',
        message = '%s (ID: %s) が x%s %s を奪われました'
    },
    claimed = {
        title = 'アイテム回収',
        message = '%s (ID: %s) がすべてのアイテムを回収しました'
    },
    leveled = {
        title = 'プレイヤーレベルアップ',
        message = '%s (ID: %s) がレベル %s にレベルアップしました'
    }
}