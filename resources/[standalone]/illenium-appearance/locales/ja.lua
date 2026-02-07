Locales["ja"] = {
    UI = {
        modal = {
            save = {
                title = "カスタマイズを保存",
                description = "保存しないと現在の見た目は失われます"
            },
            exit = {
                title = "カスタマイズを終了",
                description = "変更内容は保存されません"
            },
            accept = "はい",
            decline = "いいえ"
        },
        ped = {
            title = "ペド (キャラクター)",
            model = "モデル"
        },
        headBlend = {
            title = "遺伝",
            shape = {
                title = "顔立ち",
                firstOption = "父",
                secondOption = "母",
                mix = "ミックス"
            },
            skin = {
                title = "肌",
                firstOption = "父",
                secondOption = "母",
                mix = "ミックス"
            },
            race = {
                title = "人種",
                shape = "形状",
                skin = "肌色",
                mix = "ミックス"
            }
        },
        faceFeatures = {
            title = "顔の特徴",
            nose = {
                title = "鼻",
                width = "幅",
                height = "高さ",
                size = "サイズ",
                boneHeight = "骨の高さ",
                boneTwist = "骨のゆがみ",
                peakHeight = "先端の高さ"
            },
            eyebrows = {
                title = "眉",
                height = "高さ",
                depth = "深さ"
            },
            cheeks = {
                title = "頬",
                boneHeight = "骨の高さ",
                boneWidth = "骨の幅",
                width = "幅"
            },
            eyesAndMouth = {
                title = "目と口",
                eyesOpening = "目の開き",
                lipsThickness = "唇の厚さ"
            },
            jaw = {
                title = "顎 (あご)",
                width = "幅",
                size = "サイズ"
            },
            chin = {
                title = "顎先",
                lowering = "高さ",
                length = "長さ",
                size = "サイズ",
                hole = "くぼみ"
            },
            neck = {
                title = "首",
                thickness = "太さ"
            }
        },
        headOverlays = {
            title = "外見",
            hair = {
                title = "髪型",
                style = "スタイル",
                color = "色",
                highlight = "ハイライト",
                texture = "質感",
                fade = "フェード"
            },
            opacity = "不透明度",
            style = "スタイル",
            color = "色",
            secondColor = "サブカラー",
            blemishes = "シミ・傷",
            beard = "髭",
            eyebrows = "眉毛",
            ageing = "加齢",
            makeUp = "メイク",
            blush = "チーク",
            complexion = "肌質",
            sunDamage = "日焼け",
            lipstick = "口紅",
            moleAndFreckles = "ほくろ・そばかす",
            chestHair = "胸毛",
            bodyBlemishes = "体の傷",
            eyeColor = "目の色"
        },
        components = {
            title = "服装",
            drawable = "モデル",
            texture = "テクスチャ",
            mask = "マスク",
            upperBody = "腕 / 手",
            lowerBody = "脚 / ズボン",
            bags = "バッグ / パラシュート",
            shoes = "靴",
            scarfAndChains = "スカーフ / チェーン",
            shirt = "シャツ / インナー",
            bodyArmor = "ボディーアーマー",
            decals = "デカール / ステッカー",
            jackets = "ジャケット / アウター",
            head = "頭 (インナー)"
        },
        props = {
            title = "装飾品",
            drawable = "モデル",
            texture = "テクスチャ",
            hats = "帽子 / ヘルメット",
            glasses = "メガネ",
            ear = "耳飾り",
            watches = "腕時計",
            bracelets = "ブレスレット"
        },
        tattoos = {
            title = "タトゥー",
            items = {
                ZONE_TORSO = "胴体",
                ZONE_HEAD = "頭",
                ZONE_LEFT_ARM = "左腕",
                ZONE_RIGHT_ARM = "右腕",
                ZONE_LEFT_LEG = "左脚",
                ZONE_RIGHT_LEG = "右脚"
            },
            apply = "適用",
            delete = "削除",
            deleteAll = "すべてのタトゥーを削除",
            opacity = "不透明度"
        }
    },
    outfitManagement = {
        title = "服装管理",
        jobText = "職業用の服装を管理",
        gangText = "ギャング用の服装を管理"
    },
    cancelled = {
        title = "カスタマイズをキャンセル",
        description = "変更は保存されませんでした"
    },
    outfits = {
        import = {
            title = "服装コードを入力",
            menuTitle = "服装をインポート",
            description = "共有コードから服装をインポートします",
            name = {
                label = "服装の名前",
                placeholder = "素敵な服",
                default = "インポートされた服"
            },
            code = {
                label = "服装コード"
            },
            success = {
                title = "インポート成功",
                description = "服装メニューから着替えることができます"
            },
            failure = {
                title = "インポート失敗",
                description = "無効な服装コードです"
            }
        },
        generate = {
            title = "服装コードを生成",
            description = "共有用の服装コードを生成します",
            failure = {
                title = "エラーが発生しました",
                description = "コード生成に失敗しました"
            },
            success = {
                title = "コード生成完了",
                description = "あなたの服装コードです"
            }
        },
        save = {
            menuTitle = "現在の服装を保存",
            menuDescription = "現在の服装を %s の服として保存します",
            description = "現在の服装を保存します",
            title = "服装に名前を付ける",
            managementTitle = "管理用服装の詳細",
            name = {
                label = "服装の名前",
                placeholder = "とてもクールな服"
            },
            gender = {
                label = "性別",
                male = "男性",
                female = "女性"
            },
            rank = {
                label = "最低ランク"
            },
            failure = {
                title = "保存失敗",
                description = "同じ名前の服装がすでに存在します"
            },
            success = {
                title = "成功",
                description = "服装 %s を保存しました"
            }
        },
        update = {
            title = "服装を更新",
            description = "現在の服装を既存の服装に上書き保存します",
            failure = {
                title = "更新失敗",
                description = "その服装は存在しません"
            },
            success = {
                title = "成功",
                description = "服装 %s を更新しました"
            }
        },
        change = {
            title = "着替える",
            description = "保存された %s の服から選択します",
            pDescription = "保存された服から選択します",
            failure = {
                title = "エラーが発生しました",
                description = "着替えようとした服装には基本データがありません",
            }
        },
        delete = {
            title = "服装を削除",
            description = "保存された %s の服を削除します",
            mDescription = "保存された服を削除します",
            item = {
                title = '"%s" を削除',
                description = "モデル: %s%s"
            },
            success = {
                title = "成功",
                description = "服装を削除しました"
            }
        },
        manage = {
            title = "👔 | %s の服を管理"
        }
    },
    jobOutfits = {
        title = "仕事着",
        description = "仕事着を選択してください"
    },
    menu = {
        returnTitle = "戻る",
        title = "更衣室",
        outfitsTitle = "プレイヤーの服装",
        clothingShopTitle = "服屋",
        barberShopTitle = "理容室",
        tattooShopTitle = "タトゥーショップ",
        surgeonShopTitle = "外科医"
    },
    clothing = {
        title = "服を買う - ¥%d",
        titleNoPrice = "服を着替える",
        options = {
            title = "👔 | 服屋のオプション",
            description = "豊富なアイテムから選択してください"
        },
        outfits = {
            title = "👔 | 服装オプション",
            civilian = {
                title = "私服",
                description = "私服に着替えます"
            }
        }
    },
    commands = {
        reloadskin = {
            title = "キャラクターの再読み込み",
            failure = {
                title = "エラー",
                description = "現在スキンをリロードできません"
            }
        },
        clearstuckprops = {
            title = "エンティティに付着したすべてのプロップを削除",
            failure = {
                title = "エラー",
                description = "現在プロップを削除できません"
            }
        },
        pedmenu = {
            title = "服装メニューを開く / 付与する",
            failure = {
                title = "エラー",
                description = "プレイヤーがオンラインではありません"
            }
        },
        joboutfits = {
            title = "仕事着メニューを開く"
        },
        gangoutfits = {
            title = "ギャング衣装メニューを開く"
        },
        bossmanagedoutfits = {
            title = "ボス管理の衣装メニューを開く"
        }
    },
    textUI = {
        clothing = "服屋 - 価格: ¥%d",
        barber = "理容室 - 価格: ¥%d",
        tattoo = "タトゥーショップ - 価格: ¥%d",
        surgeon = "外科医 - 価格: ¥%d",
        clothingRoom = "更衣室",
        playerOutfitRoom = "衣装"
    },
    migrate = {
        success = {
            title = "成功",
            description = "移行が完了しました。%s 個のスキンが移行されました",
            descriptionSingle = "移行されたスキン"
        },
        skip = {
            title = "情報",
            description = "スキンをスキップしました"
        },
        typeError = {
            title = "エラー",
            description = "無効なタイプです"
        }
    },
    purchase = {
        tattoo = {
            success = {
                title = "成功",
                description = "%s のタトゥーを ¥%s で購入しました"
            },
            failure = {
                title = "タトゥーの適用に失敗",
                description = "お金が足りません！"
            }
        },
        store = {
            success = {
                title = "成功",
                description = "¥%s を %s に支払いました！"
            },
            failure = {
                title = "不正行為！",
                description = "お金が足りません！システムを悪用しようとしました！"
            }
        }
    }
}