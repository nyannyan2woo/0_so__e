Strings = {}

Strings.Notify = {
    error = 'エラーが発生しました。もう一度試してください',
    cancel = 'テーブルの設置をキャンセルしました',
    restricted = 'ここには設置できません',
    missing = '設置するテーブルを持っていません',
    cantPlace = 'ここにテーブルを設置することはできません',
    noPseudoephedrine = 'プソイドエフェドリンがないのにどうやって砕くんだ？',
    missingIngredient = '十分な材料がないようだ..',
    noMeth = 'ハイになってるのか？ 持ってもいないメスを加熱しようとしたぞ..',
    toxic = '有毒な煙により呼吸困難と痛みを引き起こしています',
    max = 'テーブルはもう十分持っていると思う..',
    incomplete = '最初に前の手順をすべて完了する必要があります',
    cantAfford = 'お金が足りない..',
    pinCreated = 'パスコードを追加しました',
    pinReset = 'パスコードをリセットしました',
    pinRemoved = 'パスコードが削除されました',
    wrongPin = 'パスコードが間違っています - アクセスできません',
    visitorLocked = 'このドアは現在ロックされています',
    locked = 'ドアをロックしました',
    unlocked = 'ドアのロックを解除しました',
    limit = '倉庫はこれ以上必要ないと思う..',
    targetLimit = 'ユーザーはすでに最大数の倉庫を所有しています',
    targetLevel = 'ユーザーはこの倉庫を所有するのに十分なレベルではありません',
    transferred = '倉庫の所有権を譲渡しました',
    receivedTransfer = '倉庫の所有権を受け取りました',
    unconfirmed = '確認メッセージが間違っています - もう一度試してください',
    noPolice = '都市に十分な警察がいません',
    raidFail = '侵入に失敗しました - もう一度試してください',
    getRot = '現在の回転値がクリップボードに保存されました！',
    confiscated = '警察に通報され、要請されたすべての機器の押収が間もなく開始されます',
    notAuthorized = 'これを行う権限がありません',
    transferSelf = '待てよ.. すでに持っているのに.. 何をしてるんだ？',
    addSelf = '自分自身にアクセス権を与えようなんて.. おかしいだろ',
    addSuccess = '%s を追加しました',
    addFail = '無効なプレイヤーです - もう一度試してください',
    removeSuccess = '%s を削除しました',
    userNotFound = 'そのユーザーは許可されたユーザーに見つかりませんでした',
    noAccess = 'あなたとのビジネスには興味がありません..',
    notReady = 'それを持ってきたらまた来な..',
    missingItem = 'おいおい.. 時間を無駄にさせないでくれ..',
    startSupply = 'GPSが更新されました',
    stopSupply = '新しい補給品の生成を停止しました',
    supplyLimit = '今は誰も空いていません..',
    supplyLow = 'うーん.. これらの入力に対して十分な供給がないようです',
    cookStarted = '製造プロセスはすでに開始されています',
    powerSurge = '電力サージが発生し、電気の音が聞こえます..',
    noMethBreak = 'ハイになってるに違いない.. 砕くメスを持っていない',
    noMethBag = 'こんなものを吸うのはやめないと.. 袋詰めするものがない',
    overdose = {
        '視界が薄れ、心臓の鼓動が早くなるのを感じる..',
        '不安が急速に高まるのを感じる..',
        'ますます気分が悪くなっていく..'
    },
    died = '過剰摂取しました'
}

Strings.Menu = {
    warehouseShop = {
        details = {
            mainTitle = '倉庫の空き状況',
            title = '購入額 $'
            -- 各倉庫のアイコン、画像などは config.lua ファイルで設定します
        },
        confirm = {
            mainTitle = '購入確認',
            confirm = {
                title = 'はい',
                description = '倉庫を $', -- Note: Original ends with $. Assuming concatenated number. Code probably adds amount. "倉庫を $XXX で購入しますか" -> "倉庫を $XXX で購入確認". Let's stick to safe "倉庫の購入を確認: $" or similar. But looking at line 70: 'Confirm warehouse purchase for $'. Japanese: '倉庫の購入を確認: $'
                icon = 'fas fa-circle-check',
                iconColor = '#82E58B'
            },
            cancel = {
                title = 'いいえ',
                description = '購入をキャンセルして選択に戻る',
                icon = 'fas fa-circle-xmark',
                iconColor = '#FF5C5C'
            },
            waypoint = {
                title = 'ウェイポイントを設定',
                description = '倉庫の場所にウェイポイントを設定',
                icon = 'fas fa-map-location-dot',
                iconColor = ''
            }
        }
    },
    operations = {
        title = 'オペレーション管理',
        status = {
            inactive = {
                title = '現在のステータス',
                description = '現在は何も起きていません',
                icon = 'fas fa-pause',
                iconColor = '',
                iconAnimation = ''
            },
            active = {
                title = '現在のステータス | ステージ %d / %d',
                -- 説明は Config.Cooking.warehouse.stages で利用可能です
                icon = 'fas fa-rotate',
                iconColor = '',
                iconAnimation = 'spin',
            }
        },
        supply = {
            title = '供給を確認',
            description = '施設の現在の供給レベルを確認',
            icon = 'fas fa-chart-simple',
            iconColor = '',
            metadata = {
                ammonia = { label = 'アンモニア', value = '%d%%' },
                iodine = { label = 'ヨウ素', value = '%d%%' },
                acetone = { label = 'アセトン', value = '%d%%' }
            },
            colors = { red = 'red', yellow = 'yellow', green = 'green' }
        },
        inputs = {
            title = '入力を確認',
            description = '施設の現在の入力値を確認',
            icon = 'fas fa-list-check',
            iconColor = '',
            metadata = {
                ammonia = 'アンモニア',
                iodine = 'ヨウ素',
                acetone = 'アセトン',
                temp = '温度'
            }
        },
        power = {
            on = {
                title = '電源オン',
                description = '製造機器の電源を入れて調理を開始',
                icon = 'fas fa-power-off',
                iconColor = '#82E58B'
            },
            off = {
                title = '電源オフ',
                description = 'すべての製造プロセスを直ちに終了',
                icon = 'fas fa-power-off',
                iconColor = '#FF5C5C'
            }
        }
    },
    security = {
        title = 'セキュリティ管理',
        door = {
            title = 'ドアステータス |',
            description = '倉庫のドアは現在',
            locked = {
                status = '施錠中',
                icon = 'fas fa-lock',
                iconColor = '#FF5C5C'
            },
            unlocked = {
                status = '開錠中',
                icon = 'fas fa-unlock',
                iconColor = '#82E58B'
            }
        },
        camera = {
            title = 'カメラ確認',
            description = '正面玄関のセキュリティカメラを確認',
            icon = 'fas fa-video',
            iconColor = ''
        },
        passcode = {
            create = {
                title = 'パスコード作成',
                description = '保管庫にアクセスするための数字パスコードを追加',
                icon = 'fas fa-key',
                iconColor = ''
            },
            reset = {
                title = 'パスコードリセット',
                description = '保管庫の現在のパスコードを変更',
                icon = 'fas fa-rotate',
                iconColor = ''
            },
            remove = {
                title = 'パスコード削除',
                description = '保管庫の現在のパスコードを削除',
                icon = 'fas fa-delete-left',
                iconColor = '#FF5C5C'
            }
        },
        auth_users = {
            title = '許可されたユーザー',
            description = '倉庫へのアクセス権を持つユーザーを管理',
            icon = 'fas fa-user-lock',
            iconColor = '',
            add = {
                title = 'ユーザー追加',
                description = '新しい許可ユーザーを追加',
                icon = 'fas fa-circle-plus',
                iconColor = '#82E58B',
            },
            remove = {
                -- このメニューのタイトルは許可されたユーザーの名前です
                description = '倉庫から %s のアクセス権を削除',
                icon = 'fas fa-user-minus',
                iconColor = '#FF5C5C',
            }
        }
    },
    facility = {
        title = '施設管理',
        pending = {
            notice = {
                title = 'アップグレード保留中',
                description = '現在のアップグレードが完了するまで利用可能なアップグレードはありません',
                icon = 'fas fa-circle-info',
                iconColor = ''
            },
            ttd = {
                title = '完了までの時間 (TTD)',
                description = 'アップグレード完了までの残り時間:',
                icon = 'fas fa-rotate',
                iconColor = '',
                iconAnimation = 'spin',
                -- 色はHTMLカラーも受け入れます
                colors = { red = 'red', yellow = 'yellow', green = 'green' }
            }
        },
        operations = {
            title = 'オペレーション管理',
            description = '施設のオペレーションを表示および管理',
            icon = 'fas fa-bars-progress',
            iconColor = '',
        },
        security = {
            title = 'セキュリティ管理',
            description = '施設のセキュリティオペレーションを管理',
            icon = 'fas fa-shield-halved',
            iconColor = ''
        },
        upgrades = {
            -- タイトル、説明、アイコン、iconColorは config.lua で処理されます
            meta = {
                price = { label = '価格', value = '$' },
                ttd = { label = '完了時間', abb = { hours = '時間', mins = '分', ltm = '< 1分'} }
            }
        },
        transfer = {
            title = '所有権の譲渡',
            description = '倉庫の所有権を譲渡する',
            icon = 'fas fa-right-left',
            iconColor = ''
        },
        sell = {
            title = '州へ倉庫を売却',
            description = '希望する場合、倉庫を州に売却する',
            icon = 'fas fa-sack-dollar',
            iconColor = ''
        },
        level = {
            title = '製造レベル | %s/%s',
            description = '現在の経験値: %sXP',
            icon = 'fas fa-chart-simple',
            iconColor = '',
            metadata = {
                nextLevel = '次のレベル',
                remainder = '残り',
                efficiency = '効率ボーナス',
                maxed = '最大レベル到達'
            }
        },
        stats = {
            main = {
                title = '生涯統計',
                description = '生涯の製造統計を表示',
                icon = 'fas fa-chart-pie',
                iconColor = ''
            },
            title = '生涯統計',
            produced = {
                title = '生産量',
                description = '合計 %s 袋のメスを生産しました',
                icon = 'fas fa-snowflake',
                iconColor = ''
            },
            supply = {
                title = '補給任務',
                description = '合計 %s 回の補給任務を完了しました',
                icon = 'fas fa-person-running',
                iconColor = ''
            }
        },
        -- 色はHTMLカラーも受け入れます
        colors = { red = 'red', yellow = 'yellow', green = 'green' }
    },
    table = {
        title = 'メステーブル',
        steps = {
            mainTitle = '調理中',
            subTitle = 'ステップ',
            create = {
                title = 'ベース作成',
                description = '粉砕したプソイドエフェドリンのベースを確立する'
            },
            mix = {
                title = '化学薬品を混合',
                description = 'ベースをアンモニア、ヨウ素、アセトンと混合する'
            },
            heat = {
                title = '混合物を加熱',
                description = '最適な温度まで混合物の加熱を開始する'
            },
            acid = {
                title = '酸を追加',
                description = '加熱した混合物に塩酸を加える'
            },
            pour = {
                title = '注いで冷却',
                description = '混合物をトレイに注ぎ、固まるまで冷やす'
            },
            breakdown = {
                title = '粉砕',
                description = 'シートをより細かい結晶に砕く'
            },
            icons = { complete = 'fas fa-check', incomplete = 'fas fa-x' },
            iconColors = { complete = '', incomplete = '#FF5555' }
        },
        stats = {
            title = '生涯統計',
            produced = {
                title = '生産量',
                description = '合計 %s 袋のメスを生産しました',
                icon = 'fas fa-snowflake',
                iconColor = ''
            },
            supply = {
                title = '補給任務',
                description = '合計 %s 回の補給任務を完了しました',
                icon = 'fas fa-person-running',
                iconColor = ''
            }
        },
        main = {
            level = {
                title = '製造レベル | %s/%s',
                description = '現在の経験値: %sXP',
                icon = 'fas fa-chart-simple',
                iconColor = '',
                metadata = {
                    nextLevel = '次のレベル',
                    remainder = '残り',
                    efficiency = '効率ボーナス',
                    maxed = '最大レベル到達'
                }
            },
            stats = {
                title = '生涯統計',
                description = '生涯の製造統計を表示',
                icon = 'fas fa-chart-pie',
                iconColor = ''
            },
            status = {
                title = '現在のステータス',
                heating = {
                    description = '現在メスのバッチを加熱中..',
                    icon = 'fas fa-rotate',
                    iconColor = '',
                    iconAnimation = 'spin',
                },
                cooling = {
                    description = '現在メスのバッチを冷却中..',
                    icon = 'fas fa-rotate',
                    iconColor = '',
                    iconAnimation = 'spin',
                },
                inactive = {
                    description = '現在は何も起きていません',
                    icon = 'fas fa-pause',
                    iconColor = '',
                    iconAnimation = '',
                },
            },
            start = {
                title = '調理開始',
                description = 'メスのバッチ生産を開始',
                icon = 'fas fa-circle-play',
                iconColor = '#74F37C'
            },
            packup = {
                title = '片付ける',
                description = 'すべてを片付けてこのテーブルを移動する',
                icon = 'fas fa-dolly',
                iconColor = '#FF5555'
            },
            -- 色はHTMLカラーも受け入れます
            colors = { red = 'red', yellow = 'yellow', green = 'green' }
        }
    }
}

Strings.Target = { -- これらの文字列は "interact" ラベルにも使用されます
    table = {
        label = '使用',
        icon = 'fas fa-flask',
        dist = 1.5
    },
    warehouse = {
        enter = {
            name = 'enter',
            label = '入る',
            icon = 'fas fa-right-to-bracket',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        exit = {
            name = 'exit',
            label = '出る',
            icon = 'fas fa-right-from-bracket',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        manage = {
            name = 'manage',
            label = '施設管理',
            icon = 'fas fa-gears',
            iconColor = '',
            radius = 0.35,
            dist = 2.0
        },
        stash = {
            name = 'stash',
            label = '保管庫を開く',
            icon = 'fas fa-box',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        confiscate = {
            name = 'confiscate',
            label = '機器を押収',
            icon = 'fas fa-shield-halved',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        addsupply = {
            name = 'addsupply',
            label = '補給品を追加',
            icon = 'fas fa-flask',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        inputs = {
            name = 'inputs',
            label = '値を設定',
            icon = 'fas fa-gears',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        temp = {
            name = 'temp',
            label = '温度を設定',
            icon = 'fas fa-temperature-half',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        break_down = {
            name = 'break_down',
            label = '粉砕する',
            icon = 'fas fa-hammer',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        },
        bagging = {
            name = 'bagging',
            label = '袋詰めを開始',
            icon = 'fas fa-weight-scale',
            iconColor = '',
            radius = 1.0,
            dist = 2.0
        }
    },
    shop = {
        label = '話す',
        icon = 'fas fa-comment',
        dist = 2.0
    },
    mission = {
        label = '話す',
        icon = 'fas fa-comment',
        dist = 2.0
    },
    supplies = {
        start = {
            label = '話す',
            icon = 'fas fa-comment',
            dist = 2.0
        },
        collect = {
            label = '回収',
            icon = 'fas fa-box',
            dist = 2.0
        }
    }
}

Strings.TextUI = {
    table = { label = '**メステーブル**  \n E - 使用', icon = 'fas fa-flask' },
    warehouse = {
        enter = { label = '**倉庫**  \n E - 入る', icon = 'fas fa-right-to-bracket' },
        exit = { label = '**倉庫**  \n E - 出る', icon = 'fas fa-right-from-bracket' },
        manage = { label = '**倉庫**  \n E - 管理', icon = 'fas fa-gears' },
        stash = { label = '**保管庫**  \n E - 開く', icon = 'fas fa-box' },
        confiscate = { label = '**警察**  \n E - 機器を押収', icon = 'fas fa-shield-halved' },
        addsupply = { label = '**補給タンク**  \n E - 補給品を追加', icon = 'fas fa-flask' },
        inputs = { label = '**入力パネル**  \n E - 値を設定', icon = 'fas fa-gears' },
        temp = { label = '**温度**  \n E - 温度を設定', icon = 'fas fa-temperature-half', },
        break_down = { label = '**粉砕**  \n E - 開始', icon = 'fas fa-hammer' },
        bagging = { label = '**袋詰め**  \n E - 開始', icon = 'fas fa-weight-scale' }
    },
    controls = {
        table = {
            label = '**操作**  \n **Q**: 左回転  \n **E**: 右回転  \n **W**: 前進  \n **S**: 後退  \n **A**: 左移動  \n **D**: 右移動  \n **X**: キャンセル  \n **Space**: 確認',
            icon = 'fas fa-hand'
        },
        camera = {
            label = '**操作**  \n **W**: 上回転  \n **A**: 左回転  \n **S**: 下回転  \n **D**: 右回転  \n **Q**: ズームアウト  \n **E**: ズームイン  \n **Backspace**: 終了',
            icon = 'fas fa-video'
        }
    },
    shop = {
        label = '**ベンジャミン**  \n E - 話す',
        icon = 'fas fa-comment'
    },
    mission = {
        label = '**ジェームズ**  \n E - 話す',
        icon = 'fas fa-comment'
    },
    supplies = {
        start = {
            label = '**ウィリアム**  \n E - 話す',
            icon = 'fas fa-comment'
        },
        collect = {
            label = '**サプライヤー**  \n E - 回収',
            icon = 'fas fa-hand'
        }
    }
}

Strings.Input = {
    mixing = {
        title = '材料の量',
        ammonia = 'アンモニア',
        iodine = 'ヨウ素',
        acetone = 'アセトン'
    },
    heating = {
        title = '混合物を加熱',
        label = '温度 (c)',
    },
    createPin = {
        title = 'パスコード作成',
        data = {
            type = 'number',
            label = 'ピンを作成',
            description = '以下に数字のパスコードを作成してください',
            icon = 'key',
            required = true
        }
    },
    resetPin = {
        title = 'パスコードをリセット',
        data = {
            type = 'number',
            label = 'ピンをリセット',
            description = '以下に新しい数字のパスコードを作成してください',
            icon = 'key',
            required = true
        }
    },
    inputPin = {
        title = '保管庫のパスコード',
        data = {
            type = 'number',
            label = 'ピンを入力',
            description = 'この保管庫にアクセスするにはピンが必要です',
            icon = 'key',
            required = true
        }
    },
    confirm = {
        title = '譲渡の確認',
        data = {
            type = 'input',
            label = '本当によろしいですか？',
            description = '所有権の譲渡は元に戻せません - 続行するには下のボックスに "' ..Config.WarehouseSettings.transfer.. '" と入力してください',
            icon = 'quote-left',
            required = true
        }
    },
    transfer = {
        title = '譲渡先',
        data = {
            type = 'number',
            label = 'プレイヤーID',
            description = '譲渡したいプレイヤーのIDを入力してください',
            icon = 'fas fa-user',
            required = true
        }
    },
    sell = {
        title = '売却確認',
        data = {
            type = 'input',
            label = '本当によろしいですか？',
            description = '倉庫の売却は元に戻せず、保管庫は空になります - 続行するには下のボックスに "' ..Config.WarehouseSettings.selling.sell.. '" と入力してください',
            icon = 'fas fa-user',
            required = true
        }
    },
    add_user = {
        title = 'ユーザー追加',
        data = {
            type = 'number',
            label = 'プレイヤーID',
            description = 'アクセス権を与えたいプレイヤーのIDを入力してください',
            icon = 'fas fa-user',
            required = true
        }
    },
    confiscate = {
        title = '警察のアクション',
        manufacturing = '製造機器を押収',
        security = 'セキュリティ機器を押収'
    },
    addsupply = {
        title = '補給タンクを補充',
        ammonia = { label = 'アンモニア', desc = '現在のアンモニアレベル: %d%% | 満タンまで %d%%', icon = 'fas fa-fill-drip' },
        iodine = { label = 'ヨウ素', desc = '現在のヨウ素レベル: %d%% | 満タンまで %d%%', icon = 'fas fa-fill-drip' },
        acetone = { label = 'アセトン', desc = '現在のアセトンレベル: %d%% | 満タンまで %d%%', icon = 'fas fa-fill-drip' }
    }
}

Strings.Alert = {
    pickup = {
        header = '**アクションの確認**',
        content = '本当にテーブルを片付けますか？ このテーブルで行われた進捗は破棄され、失われます！',
        centered = true,
        cancel = true
    },
    confirmRaid = {
        header = '**ガサ入れ確認**',
        content = '市民の私有地に侵入しようとしています。続行してもよろしいですか？',
        centered = true,
        cancel = true
    },
    confirmRaidStash = {
        header = '**ガサ入れ確認**',
        content = 'この保管庫への侵入を開始しようとしています。続行してもよろしいですか？',
        centered = true,
        cancel = true
    },
    mission = {
        require = {
            header = '**ジェームズ**',
            content = '誰だ.. おお、お前か。来るって聞いてたぞ。これを渡す前に x%s %s が必要なんだ.. 持ってるか？',
            centered = true,
            labels = { confirm = 'はい', cancel = 'いいえ' }
        },
        notRequire = {
            hasTable = {
                header = '**ジェームズ**',
                content = 'もう渡しただろ！ また必要になったら俺がここにいるが.. まずは持ってるものを使え。',
                centered = true,
                cancel = false,
                labels = { confirm = 'ありがとう' }
            },
            noTable = {
                header = '**ジェームズ**',
                content = '誰だ.. おお、お前か。来るって聞いてたぞ。ほら、欲しがってたブツだ..',
                centered = true,
                cancel = false,
                labels = { confirm = 'ありがとう' }
            }
        }
    },
    supplies = {
        start = {
            require = {
                header = '**ウィリアム**',
                content = 'この辺りにお前の必要なものを持ってるコネがあるが.. この情報はタダじゃない。俺のために x%s %s を持ってきたか？',
                centered = true,
                cancel = true,
                labels = { confirm = 'はい', cancel = 'いいえ' }
            },
            notRequire = {
                header = '**ウィリアム**',
                content = 'この辺りにお前の必要なものを持ってるコネがある.. どこで見つかるか教えてやろう！',
                centered = true,
                cancel = false,
                labels = { confirm = 'ありがとう' }
            },
        },
        continue = {
            header = '**補給任務**',
            content = '補給任務を続けますか？',
            centered = true,
            cancel = true,
            labels = { confirm = 'はい', cancel = 'いいえ' }
        }
    },
    power = {
        on = {
            header = '**電源オンの確認**',
            content = '現在の材料と温度の設定で続行してもよろしいですか？',
            centered = true,
            cancel = true,
            labels = { confirm = 'はい', cancel = 'いいえ' }
        },
        off = {
            header = '**電源オフの確認**',
            content = '現在の生産工程で行われたすべての進捗を即座に失います.. 続行してもよろしいですか？',
            centered = true,
            cancel = true,
            labels = { confirm = 'はい', cancel = 'いいえ' }
        }
    }
}

Strings.Dispatch = {
    toxic_smell = {
        title = '不審なエリア',
        code = '10-87',
        message = '%s 付近のエリアで強い毒臭がするとの匿名通報がありました',
        blip = {
            sprite = 310,
            scale = 1.0,
            colour = 1,
            radius = 100,
        }
    },
    power_surge = {
        title = '電力サージ',
        code = '10-25',
        message = '市民から %s 付近のエリアで異常な電力サージが報告されました',
        blip = {
            sprite = 354,
            scale = 1.0,
            colour = 5,
            radius = 100
        }
    }
}

Strings.Logs = {
    table_received = {
        title = 'テーブル受領',
        message = '%s (ID: %s) が新しいテーブルを受け取り/購入しました'
    },
    table_placed = {
        title = 'テーブル設置',
        message = '%s (ID: %s) がテーブル (ID: %s) を %s に設置しました',
    },
    table_removed = {
        title = 'テーブル撤去',
        message = '%s (ID: %s) がテーブル (ID: %s) を片付けました',
    },
    table_batch = {
        title = 'バッチ完了 (テーブル)',
        message = '%s (ID: %s) が x%s %s (純度: %s) のメス (ID: %s) を製造しました',
    },
    supply_run_completed = {
        title = '補給任務完了',
        message = '%s (ID: %s) が補給任務を完了し、x1 %s を受け取りました'
    },
    supply_crate_opened = {
        title = '補給物資開封',
        message = '%s (ID: %s) が補給物資を開封し、x%s %s を受け取りました'
    },
    warehouse_buy = {
        title = '倉庫購入',
        message = '%s (ID: %s) が倉庫 (ID: %s) を $%s で購入しました'
    },
    warehouse_upgrade = {
        title = '倉庫アップグレード',
        message = '倉庫 (ID: %s) の %s から "%s" へのアップグレードが完了しました'
    },
    warehouse_door = {
        title = '倉庫ドアステータス',
        message = '%s (ID: %s) が倉庫 (ID: %s) のドアを %s しました',
        locked = 'ロック',
        unlocked = 'ロック解除'
    },
    warehouse_transfer = {
        title = '倉庫譲渡',
        message = '%s (ID: %s) が倉庫 (ID: %s) の所有権を %s (ID: %s) に譲渡しました'
    },
    warehouse_sale = {
        title = '倉庫売却',
        message = '%s (ID: %s) が倉庫 (ID: %s) を州に $%s で売却しました'
    },
    warehouse_batch = {
        title = 'バッチ完了 (倉庫)',
        message = '%s (ID: %s) が x%s %s (純度: %s) のメス (ID: %s) を製造しました',
    },
    raid_warehouse = {
        title = '倉庫ガサ入れ',
        message = '法執行機関 %s (ID: %s) が倉庫 (ID: %s) に侵入しました'
    },
    raid_stash = {
        title = '保管庫ガサ入れ',
        message = '法執行機関 %s (ID: %s) が倉庫 (ID: %s) 内の保管庫に侵入しました'
    }
}