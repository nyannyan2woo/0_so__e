return {
    ['testburger'] = {
        label = 'テストバーガー',
        weight = 220,
        degrade = 60,
        description = '満腹度 +20%',
        client = {
            image = 'burger_chicken.png',
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            export = 'ox_inventory_examples.testburger'
        },
        server = {
            export = 'ox_inventory_examples.testburger',
            test = 'なんて美味しいバーガーなんだ、でしょ?'
        },
        buttons = {
            {
                label = '舐める',
                action = function(slot)
                    print('バーガーを舐めました')
                end
            },
            {
                label = '絞る',
                action = function(slot)
                    print('バーガーを絞りました :(')
                end
            },
            {
                label = 'ビーガンバーガーを何と呼ぶ?',
                group = 'ハンバーガージョーク',
                action = function(slot)
                    print('ミステーキ(間違い)。')
                end
            },
            {
                label = 'カエルはハンバーガーと一緒に何を食べるのが好き?',
                group = 'ハンバーガージョーク',
                action = function(slot)
                    print('フレンチフライ(ハエ)。')
                end
            },
            {
                label = 'バーガーとポテトはなぜ走っていた?',
                group = 'ハンバーガージョーク',
                action = function(slot)
                    print('ファストフードだから。')
                end
            }
        },
        consume = 0.3
    },

    ['bandage'] = {
        label = '包帯',
        description = '傷の手当てに使用する',
        weight = 115,
    },

    ['burger'] = {
        label = 'バーガー',
        weight = 220,
        description = '満腹度 +20%',
        client = {
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = '美味しいバーガーを食べました'
        },
    },

    ['sprunk'] = {
        label = 'スプランク',
        weight = 350,
        description = '水分 +20%',
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'スプランクで喉の渇きを癒しました'
        }
    },

    ['parachute'] = {
        label = 'パラシュート',
        description = '高所からの落下時に使用する',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        label = 'ゴミ',
        description = '役に立たないゴミ',
    },

    ['paperbag'] = {
        label = '紙袋',
        description = 'アイテムを入れるための袋',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'パンティ',
        weight = 10,
        consume = 0,
        description = '水分 -10% | ストレス -2.5%',
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'ロックピック',
        description = '施錠された鍵を開けるための道具',
        weight = 160,
    },

    ['phone'] = {
        label = '携帯電話',
        description = '連絡を取るための携帯電話',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

    ['mustard'] = {
        label = 'マスタード',
        weight = 500,
        description = '満腹度 +2.5% | 水分 +2.5%',
        client = {
            status = { hunger = 25000, thirst = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
            usetime = 2500,
            notification = 'マスタードを...飲みました'
        }
    },

    ['water'] = {
        label = '水',
        weight = 500,
        description = '水分 +20%',
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = '爽やかな水を飲みました'
        }
    },

    ['armour'] = {
        label = '防弾ベスト',
        description = '身を守るための防弾ベスト',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = '衣服',
        description = '着替え用の服',
        consume = 0,
    },

    ['money'] = {
        label = 'お金',
        description = '現金',
    },

    ['black_money'] = {
        label = '裏金',
        description = '出所不明のお金',
    },

    ['id_card'] = {
        label = '身分証明書',
        description = '身分を証明するカード',
    },

    ['driver_license'] = {
        label = '運転免許証',
        description = '車両を運転するための許可証',
    },

    ['weaponlicense'] = {
        label = '武器ライセンス',
        description = '武器を所持するための許可証',
    },

    ['lawyerpass'] = {
        label = '弁護士証',
        description = '弁護士であることを証明する',
    },

    ['radio'] = {
        label = '無線機',
        description = '長距離通信用無線機',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use'
        }
    },

    ['jammer'] = {
        label = '無線妨害機',
        description = '無線信号を妨害する装置',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },

    ['radiocell'] = {
        label = '単4電池',
        description = '無線機用の予備バッテリー',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge'
        }
    },

    ['advancedlockpick'] = {
        label = '高度なロックピック',
        description = 'より高性能なロックピック',
        weight = 500,
    },

    ['screwdriverset'] = {
        label = 'ドライバーセット',
        description = '様々な作業に使う工具',
        weight = 500,
    },

    ['electronickit'] = {
        label = '電子工具キット',
        description = '電子機器の修理やハッキングに使う',
        weight = 500,
    },

    ['cleaningkit'] = {
        label = 'クリーニングキット',
        description = '銃器や車両の清掃に使う',
        weight = 500,
    },

    ['repairkit'] = {
        label = '修理キット',
        description = '車両の応急修理キット',
        weight = 2500,
    },

    ['advancedrepairkit'] = {
        label = '高度な修理キット',
        description = '高度な車両修理キット',
        weight = 4000,
    },

    ['diamond_ring'] = {
        label = 'ダイヤモンド',
        description = '高価な装飾品',
        weight = 1500,
    },

    ['rolex'] = {
        label = '金の時計',
        description = '高価な装飾品',
        weight = 1500,
    },

    ['goldbar'] = {
        label = '金の延べ棒',
        description = '高価な延べ棒',
        weight = 1500,
    },

    ['goldchain'] = {
        label = '金のチェーン',
        description = '高価な装飾品',
        weight = 1500,
    },

    ['crack_baggy'] = {
        label = 'クラックの袋',
        description = '違法な薬物',
        weight = 100,
    },

    ['cokebaggy'] = {
        label = 'コカインの袋',
        description = '違法な薬物',
        weight = 100,
    },

    ['coke_brick'] = {
        label = 'コカインの塊',
        description = '大量の違法な薬物',
        weight = 2000,
    },

    ['coke_small_brick'] = {
        label = 'コカインのパッケージ',
        description = '梱包された違法な薬物',
        weight = 1000,
    },

    ['xtcbaggy'] = {
        label = 'エクスタシーの袋',
        description = '違法な薬物',
        weight = 100,
    },

    ['meth'] = {
        label = 'メタンフェタミン',
        description = '違法な薬物',
        weight = 100,
    },

    ['oxy'] = {
        label = 'オキシコドン',
        description = '強力な鎮痛剤だが乱用されることがある',
        weight = 100,
    },

    ['weed_ak47'] = {
        label = 'AK47 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_ak47_seed'] = {
        label = 'AK47の種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_skunk'] = {
        label = 'スカンク 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_skunk_seed'] = {
        label = 'スカンクの種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_amnesia'] = {
        label = 'アムネシア 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_amnesia_seed'] = {
        label = 'アムネシアの種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_og-kush'] = {
        label = 'OGクッシュ 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_og-kush_seed'] = {
        label = 'OGクッシュの種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_white-widow'] = {
        label = 'ホワイトウィドウ 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_white-widow_seed'] = {
        label = 'ホワイトウィドウの種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_purple-haze'] = {
        label = 'パープルヘイズ 2g',
        description = '乾燥大麻',
        weight = 200,
    },

    ['weed_purple-haze_seed'] = {
        label = 'パープルヘイズの種',
        description = '大麻の種',
        weight = 1,
    },

    ['weed_brick'] = {
        label = '大麻の塊',
        description = '圧縮された大量の大麻',
        weight = 2000,
    },

    ['weed_nutrition'] = {
        label = '植物肥料',
        description = '植物の成長を促進する',
        weight = 2000,
    },

    ['joint'] = {
        label = 'ジョイント',
        description = '喫煙用大麻',
        weight = 200,
    },

    ['rolling_paper'] = {
        label = '巻き紙',
        description = 'タバコや大麻を巻くための紙',
        weight = 0,
    },

    ['empty_weed_bag'] = {
        label = '空の大麻袋',
        description = '大麻を小分けにするための袋',
        weight = 0,
    },

    ['firstaid'] = {
        label = '応急処置キット',
        description = '怪我の治療に使う',
        weight = 2500,
    },

    ['ifaks'] = {
        label = '個人用応急処置キット',
        description = '個人用医療キット',
        weight = 2500,
    },

    ['painkillers'] = {
        label = '鎮痛剤',
        description = '軽度の痛みを和らげる',
        weight = 400,
    },

    ['firework1'] = {
        label = '2ブラザーズ',
        description = '花火',
        weight = 1000,
    },

    ['firework2'] = {
        label = 'ポペラーズ',
        description = '花火',
        weight = 1000,
    },

    ['firework3'] = {
        label = 'ワイプアウト',
        description = '花火',
        weight = 1000,
    },

    ['firework4'] = {
        label = 'ウィーピングウィロー',
        description = '花火',
        weight = 1000,
    },

    ['steel'] = {
        label = '鋼鉄',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['rubber'] = {
        label = 'ゴム',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['metalscrap'] = {
        label = '金属くず',
        description = 'リサイクル可能な金属',
        weight = 100,
    },

    ['iron'] = {
        label = '鉄',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['copper'] = {
        label = '銅',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['aluminum'] = {
        label = 'アルミニウム',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['plastic'] = {
        label = 'プラスチック',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['glass'] = {
        label = 'ガラス',
        description = 'クラフト用素材',
        weight = 100,
    },

    ['gatecrack'] = {
        label = 'ゲートクラック',
        description = '電子ロックを解除するツール',
        weight = 1000,
    },

    ['cryptostick'] = {
        label = '暗号スティック',
        description = '暗号データが入ったスティック',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'トロイの木馬USB',
        description = 'ウイルスが仕込まれたUSB',
        weight = 100,
    },

    ['toaster'] = {
        label = 'トースター',
        description = 'パンを焼く機械. 家電製品',
        weight = 5000,
    },

    ['small_tv'] = {
        label = '小型テレビ',
        description = '小さなテレビ. 家電製品',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'セキュリティカードA',
        description = '高度なセキュリティエリアへのアクセスキー',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'セキュリティカードB',
        description = '高度なセキュリティエリアへのアクセスキー',
        weight = 100,
    },

    ['drill'] = {
        label = 'ドリル',
        description = '金庫破りなどに使う強力なドリル',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'テルミット',
        description = '高熱で金属を溶かす化学物質',
        weight = 1000,
    },

    ['diving_gear'] = {
        label = 'ダイビングギア',
        description = '水中活動用の装備',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'ダイビングチューブ',
        description = '酸素ボンベ',
        weight = 3000,
    },

    ['antipatharia_coral'] = {
        label = 'アンティパタリア',
        description = '希少なサンゴ',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'デンドログラ',
        description = '希少なサンゴ',
        weight = 1000,
    },

    ['jerry_can'] = {
        label = 'ジェリカン',
        description = '燃料を持ち運ぶための容器',
        weight = 3000,
    },

    ['nitrous'] = {
        label = 'ニトロ',
        description = '車両の加速をブーストする',
        weight = 1000,
    },

    ['wine'] = {
        label = 'ワイン',
        description = 'アルコール飲料',
        weight = 500,
    },

    ['grape'] = {
        label = 'ブドウ',
        description = '新鮮な果物',
        weight = 10,
    },

    ['grapejuice'] = {
        label = 'グレープジュース',
        description = 'ブドウのジュース',
        weight = 200,
    },

    ['coffee'] = {
        label = 'コーヒー',
        description = '温かいコーヒー',
        weight = 200,
    },

    ['vodka'] = {
        label = 'ウォッカ',
        description = '強いアルコール飲料',
        weight = 500,
    },

    ['whiskey'] = {
        label = 'ウイスキー',
        description = 'アルコール飲料',
        weight = 200,
    },

    ['beer'] = {
        label = 'ビール',
        description = 'アルコール飲料',
        weight = 200,
    },

    ['sandwich'] = {
        label = 'サンドイッチ',
        description = '軽食',
        weight = 200,
    },

    ['walking_stick'] = {
        label = '杖',
        description = '歩行補助具',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'ライター',
        description = '火をつけるための道具',
        weight = 200,
    },

    ['binoculars'] = {
        label = '双眼鏡',
        description = '遠くを見るための道具',
        weight = 800,
    },

    ['stickynote'] = {
        label = '付箋',
        description = 'メモを残すことができる',
        weight = 0,
    },

    ['empty_evidence_bag'] = {
        label = '空の証拠袋',
        weight = 200,
    },

    ['filled_evidence_bag'] = {
        label = '証拠の入った袋',
        weight = 200,
    },

    ['harness'] = {
        label = 'ハーネス',
        weight = 200,
    },

    ['handcuffs'] = {
        label = '手錠',
        weight = 200,
    },
    -- ls-mining_start
    ['ls_pickaxe'] = {
		label = 'つるはし',
		description = '採掘用のつるはし',
		weight = 100
	},
	['ls_copper_pickaxe'] = {
		label = '銅のつるはし',
		description = '採掘用のつるはし',
		weight = 100
	},

	['ls_iron_pickaxe'] = {
		label = '鉄のつるはし',
		description = '採掘用のつるはし',
		weight = 100
	},

	['ls_silver_pickaxe'] = {
		label = '銀のつるはし',
		description = '採掘用のつるはし',
		weight = 100
	},

	['ls_gold_pickaxe'] = {
		label = '金のつるはし',
		description = '採掘用のつるはし',
		weight = 100
	},

	['ls_copper_ore'] = {
		label = '銅鉱石',
		description = '採掘された鉱石',
		weight = 100
	},

	['ls_coal_ore'] = {
		label = '石炭',
		description = '採掘された石炭',
		weight = 100
	},

	['ls_iron_ore'] = {
		label = '鉄鉱石',
		description = '採掘された鉱石',
		weight = 100
	},

	['ls_silver_ore'] = {
		label = '銀鉱石',
		description = '採掘された鉱石',
		weight = 100
	},

	['ls_gold_ore'] = {
		label = '金鉱石',
		description = '採掘された鉱石',
		weight = 100
	},

	['ls_copper_ingot'] = {
		label = '銅のインゴット',
		description = '精錬されたインゴット',
		weight = 500
	},

	['ls_iron_ingot'] = {
		label = '鉄のインゴット',
		description = '精錬されたインゴット',
		weight = 500
	},

	['ls_silver_ingot'] = {
		label = '銀のインゴット',
		description = '精錬されたインゴット',
		weight = 500
	},

	['ls_gold_ingot'] = {
		label = '金のインゴット',
		description = '精錬されたインゴット',
		weight = 500
	},
    -- ls-mining_end
    -- MrNewbNameChanger_start
    ["namechangevoucher"] = {
        label = "改名引換券",
        description = "名前を変更するための引換券",
        weight = 100,
        stack = false,
        close = true,
    },

    ["blankmarriagecertificate"] = {
        label = "白紙の結婚証明書",
        description = "記入前の結婚証明書",
        weight = 100,
        stack = false,
        close = true,
    },

    ["filledcertificate"] = {
        label = "記入済み証明書",
        description = "記入済みの証明書",
        weight = 100,
        stack = false,
        close = true,
    },
    -- MrNewbNameChanger_end
    -- projectx-masks_start
    ['gasmask'] = {
        label = 'ガスマスク',
        weight = 450,
        stack = false,
        close = true,
        description = "Phewww..",
        client = {
        event = 'projectx-masks:client:UseGasMask',
        }
    },

    ['nightvision'] = {
        label = '暗視ゴーグル',
        weight = 450,
        stack = false,
        close = true,
        description = "Phewww..",
        client = {
        event = 'projectx-masks:client:UseNightVision',
        }
    },
    -- projectx-masks_end
    -- fitbit_start
    ['fitbit'] = {
        label = 'fitbit',
        weight = 1,
        stack = true,
        close = true,
        description = 'fitbit'
    },
    -- fitbit_end
    -- mt-clothingbag_start
    ['clothing_bag'] = {
        label = '衣類バッグ',
        weight = 100,
        stack = true,
        close = true,
        description = nil
    },
    -- mt-clothingbag_end
    -- wasabi-fishing_start
    ['tuna'] = {
		label = 'マグロ',
		description = '新鮮な魚',
		weight = 650,
		stack = true,
		close = false,
	},
	
	['salmon'] = {
		label = 'サーモン',
		description = '新鮮な魚',
		weight = 350,
		stack = true,
		close = false,
	},

	['trout'] = {
		label = 'トラウト',
		description = '新鮮な魚',
		weight = 250,
		stack = true,
		close = false,
	},

	['anchovy'] = {
		label = 'アンチョビ',
		description = '新鮮な魚',
		weight = 50,
		stack = true,
		close = false,
	},

	['fishbait'] = {
		label = '釣り餌',
		description = '魚を釣るための餌',
		weight = 50,
		stack = true,
		close = false,
	},

	['fishingrod'] = {
		label = '釣り竿',
		description = '魚を釣るための竿',
		weight = 800,
		stack = true,
		close = true,
	},
    -- wasabi-fishing_end
    -- mt-restaurants_start
    ["restaurant_food"] = {
        label = "レストランの料理",
        description = "調理された料理",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'mt-restaurants.useFoodItem'
        }
    },
    ["restaurant_box"] = {
        label = "レストランボックス",
        description = "テイクアウト用の箱",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'mt-restaurants.useBoxItem'
        }
    },
    ["restaurant_menu"] = {
        label = "レストランメニュー",
        description = "メニュー",
        weight = 0,
        stack = true,
        close = true,
        client = {
            export = 'mt-restaurants.openMenu'
        }
    },
    ['meat'] = {
        label = '肉',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['fish'] = {
        label = '魚',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['onion'] = {
        label = '玉ねぎ',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['carrot'] = {
        label = 'にんじん',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['lettuce'] = {
        label = 'レタス',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['cucumber'] = {
        label = 'きゅうり',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['potato'] = {
        label = 'じゃがいも',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['tomato'] = {
        label = 'トマト',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['coffee_beans'] = {
        label = 'コーヒー豆',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['wheat'] = {
        label = '小麦',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['corn'] = {
        label = 'とうもろこし',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['strawberry'] = {
        label = 'いちご',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['watermelon'] = {
        label = 'スイカ',
        weight = 5,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['soya'] = {
        label = '大豆',
        weight = 8,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['pineapple'] = {
        label = 'パイナップル',
        weight = 10,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },

    ['apple'] = {
        label = 'りんご',
        weight = 12,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['pear'] = {
        label = '梨',
        weight = 12,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['lemon'] = {
        label = 'レモン',
        weight = 12,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },	
    ['banana'] = {
        label = 'バナナ',
        weight = 17,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['orange'] = {
        label = 'オレンジ',
        weight = 15,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['peach'] = {
        label = '桃',
        weight = 13,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },
    ['mango'] = {
        label = 'マンゴー',
        weight = 13,
        stack = true,
        close = true,
        description = '料理に使用する食材',
    },

    ['cutted_meat'] = {
        label = 'カット肉',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_fish'] = {
        label = 'カット魚',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_onion'] = {
        label = 'カット玉ねぎ',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_carrot'] = {
        label = 'カットにんじん',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_lettuce'] = {
        label = 'カットレタス',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_cucumber'] = {
        label = 'カットきゅうり',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_potato'] = {
        label = 'カットじゃがいも',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_tomato'] = {
        label = 'カットトマト',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_coffee'] = {
        label = 'コーヒー粉',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_wheat'] = {
        label = '小麦粉',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_corn'] = {
        label = 'コーンフラワー',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_strawberry'] = {
        label = 'カットいちご',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_watermelon'] = {
        label = 'カットスイカ',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_soya'] = {
        label = 'カット豆腐',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_pineapple'] = {
        label = 'カットパイナップル',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_apple'] = {
        label = 'カットりんご',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_pear'] = {
        label = 'カット梨',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_lemon'] = {
        label = 'カットレモン',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_banana'] = {
        label = 'カットバナナ',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_peach'] = {
        label = 'カット桃',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_mango'] = {
        label = 'カットマンゴー',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    ['cutted_orange'] = {
        label = 'カットオレンジ',
        weight = 20,
        stack = true,
        close = true,
        description = '調理用にカットされた食材',
    },
    -- mt-restaurants_end
    -- lation_autoparts_start
    ['ls_auto_parts'] = {
        label = '自動車部品',
        description = '自動車のリサイクルに使用する',
        weight = 5,
    },

    ['ls_torch'] = {
        label = 'トーチ',
        description = '自動車のリサイクルに使用する',
        weight = 275,
    },

    ['ls_lug_wrench'] = {
        label = 'ラグレンチ',
        description = '自動車のリサイクルに使用する',
        weight = 225,
    },

    ['ls_vehicle_finder'] = {
        label = '車両ファインダー',
        description = '自動車のリサイクルに使用する',
        weight = 175,
    },
    -- lation_autoparts_end
    -- lation_coke_start
    ['ls_coke_table'] = {
    label = 'コークテーブル',
    description = 'コカイン製造テーブル',
    weight = 1000,
    },

    ['ls_coca_seed'] = {
        label = 'コカの種',
        description = 'コカの種',
        weight = 5,
    },

    ['ls_coca_leaf'] = {
        label = 'コカの葉',
        description = 'コカの葉',
        weight = 5,
    },

    ['ls_coca_ground'] = {
        label = '粉砕されたコカ',
        description = 'コカインの原料',
        weight = 20,
    },

    ['ls_coca_base_unf'] = {
        label = 'コカベース(未完成)',
        description = 'コカインの原料',
        weight = 40,
    },

    ['ls_coca_base'] = {
        label = 'コカベース',
        description = 'コカインの原料',
        weight = 50,
    },

    ['ls_cocaine_brick'] = {
        label = 'コカインブリック',
        description = '固められたコカイン',
        weight = 100,
    },

    ['ls_crack_brick'] = {
        label = 'クラックブリック',
        description = '固められたクラック',
        weight = 100,
    },

    ['ls_baking_soda'] = {
        label = '重曹',
        description = '製造に使用する粉末',
        weight = 25,
    },

    ['ls_gasoline'] = {
        label = 'ガソリン',
        description = '可燃性の液体',
        weight = 1000,
        stack = false,
    },

    ['ls_shears'] = {
        label = '剪定ばさみ',
        description = '植物の剪定に使う',
        weight = 10,
    },

    ['ls_watering_can'] = {
        label = 'じょうろ',
        description = '植物の水やりに使う',
        weight = 3250,
        stack = false,
    },

    ['ls_fertilizer'] = {
        label = '肥料',
        description = '植物の肥料',
        weight = 1750,
        stack = false,
    },

    ['ls_plant_pot'] = {
        label = '植木鉢',
        description = '植物を植えるための鉢',
        weight = 25,
    },

    ['ls_cement'] = {
        label = 'セメント',
        weight = 2000,
        stack = false,
    },

    ['ls_empty_baggy'] = {
        label = '空の小袋',
        weight = 5,
    },

    ['ls_cocaine_bag'] = {
        label = 'コカイン',
        weight = 10,
    },

    ['ls_crack_bag'] = {
        label = 'クラック',
        weight = 10,
    },
    -- lation_coke_end
    -- lation_detecting_start
	['blue_metaldetector'] = {
		label = '初心者のビーコン',
		description = '金属探知機',
		weight = 475
	},

	['green_metaldetector'] = {
		label = '輝きのロケーター',
		description = '金属探知機',
		weight = 475
	},

	['red_metaldetector'] = {
		label = '財宝トラッカー',
		description = '金属探知機',
		weight = 475
	},

	['orange_metaldetector'] = {
		label = 'ゴールドシーカーの聖杯',
		description = '金属探知機',
		weight = 475
	},

	['black_metaldetector'] = {
		label = '考古学のエース',
		description = '金属探知機',
		weight = 475
	},

	['md_shovel'] = {
		label = 'シャベル',
		description = '穴を掘る道具',
		weight = 55
	},

	['md_bottlecap'] = {
		label = 'ボトルのキャップ',
		description = '金属探知機で見つけたがらくた',
		weight = 25
	},

	['md_brokenjunk'] = {
		label = '壊れたジャンク',
		description = '金属探知機で見つけたがらくた',
		weight = 25
	},

	['md_crushedcan'] = {
		label = '潰れた缶',
		description = '金属探知機で見つけたがらくた',
		weight = 25
	},

	['md_lighter'] = {
		label = 'ライター',
		weight = 25
	},

	['md_metalcan'] = {
		label = '金属の缶',
		weight = 25
	},

	['md_nails'] = {
		label = '釘',
		weight = 25
	},

	['md_needle'] = {
		label = '針',
		weight = 25
	},

	['md_nickle'] = {
		label = '5セント硬貨',
		weight = 25
	},

	['md_nut'] = {
		label = 'ナット',
		weight = 25
	},

	['md_oldshotgunshell'] = {
		label = '古いショットガンシェル',
		weight = 25
	},

	['md_paperclip'] = {
		label = 'ペーパークリップ',
		weight = 25
	},

	['md_pulltab'] = {
		label = 'プルタブ',
		weight = 25
	},

	['md_quarter'] = {
		label = '25セント硬貨',
		weight = 25
	},

	['md_rustyball'] = {
		label = '錆びたボール',
		weight = 25
	},

	['md_rustyironball'] = {
		label = '錆びた鉄球',
		weight = 25
	},

	['md_rustyjunk'] = {
		label = '錆びたジャンク',
		weight = 25
	},

	['md_rustynails'] = {
		label = '錆びた釘',
		weight = 25
	},

	['md_rustypliers'] = {
		label = '錆びたペンチ',
		weight = 25
	},

	['md_rustyring'] = {
		label = '錆びた指輪',
		weight = 25
	},

	['md_rustyscissors'] = {
		label = '錆びたハサミ',
		weight = 25
	},

	['md_rustyscrewdriver'] = {
		label = '錆びたドライバー',
		weight = 25
	},

	['md_rustyspring'] = {
		label = '錆びたバネ',
		weight = 25
	},

	['md_screw'] = {
		label = 'ネジ',
		weight = 25
	},

	['md_wheatpenny'] = {
		label = '麦穂の1セント硬貨',
		weight = 25
	},

	['md_ancientcoin'] = {
		label = '古代のコイン',
		description = '金属探知機で見つけた宝物',
		weight = 25
	},

	['md_blackwatch'] = {
		label = '腕時計',
		weight = 25
	},

	['md_coppernugget'] = {
		label = '銅塊',
		weight = 25
	},

	['md_diamondearings'] = {
		label = 'ダイヤモンドのイヤリング',
		weight = 25
	},

	['md_diamondnecklace'] = {
		label = 'ダイヤモンドのネックレス',
		weight = 25
	},

	['md_diamondring'] = {
		label = 'ダイヤモンドの指輪',
		weight = 25
	},

	['md_earpod'] = {
		label = 'イヤホン',
		weight = 25
	},

	['md_golddollar'] = {
		label = '金貨ドル',
		weight = 25
	},

	['md_goldearings'] = {
		label = '金のイヤリング',
		weight = 25
	},

	['md_goldnecklace'] = {
		label = '金のネックレス',
		weight = 25
	},

	['md_goldnugget'] = {
		label = '金塊',
		weight = 25
	},

	['md_goldounce'] = {
		label = '1オンスの金延べ棒',
		weight = 25
	},

	['md_goldring'] = {
		label = '金の指輪',
		weight = 25
	},

	['md_halfdollar'] = {
		label = '50セント硬貨',
		weight = 25
	},

	['md_ironnugget'] = {
		label = '鉄塊',
		weight = 25
	},

	['md_platinumnugget'] = {
		label = 'プラチナ塊',
		weight = 25
	},

	['md_presidentialwatch'] = {
		label = 'プレジデンシャルウォッチ',
		weight = 25
	},

	['md_relicrevolver'] = {
		label = '遺物のリボルバー',
		weight = 25
	},

	['md_silverdime'] = {
		label = '銀の10セント硬貨',
		description = '金属探知機で見つけた宝物',
		weight = 25
	},

	['md_silverearings'] = {
		label = '銀のイヤリング',
		weight = 25
	},

	['md_silverounce'] = {
		label = '1オンスの銀延べ棒',
		weight = 25
	},

	['md_silverring'] = {
		label = '銀の指輪',
		weight = 25
	},
    -- lation_detecting_end
    -- lation_diving_start
    ['ls_scuba_gear_1'] = {
        label = 'スキューバギア',
        description = 'レベル1',
        weight = 4000,
        stack = false,
        close = true
    },

    ['ls_scuba_gear_2'] = {
        label = 'スキューバギア',
        description = 'レベル2',
        weight = 4000,
        stack = false,
        close = true
    },

    ['ls_scuba_gear_3'] = {
        label = 'スキューバギア',
        description = 'レベル3',
        weight = 4000,
        stack = false,
        close = true
    },

    ['ls_scuba_gear_4'] = {
        label = 'スキューバギア',
        description = 'レベル4',
        weight = 4000,
        stack = false,
        close = true
    },

    ['ls_scuba_gear_5'] = {
        label = 'スキューバギア',
        description = 'レベル5',
        weight = 4000,
        stack = false,
        close = true
    },

    ['ls_oxygen_tank'] = {
        label = '酸素ボンベ',
        description = '酸素ボンベ',
        weight = 2000,
        stack = false,
        close = true
    },

    ['ls_diving_crate'] = {
        label = '木箱',
        description = 'アイテムが入った箱',
        weight = 1000
    },

    ['ls_old_boot'] = {
        label = '古いブーツ',
        description = 'ダイビングで見つけたがらくた',
        weight = 25
    },

    ['ls_wood_plank'] = {
        label = '木の板',
        weight = 25
    },

    ['ls_rusted_padlock'] = {
        label = '錆びた南京錠',
        weight = 25
    },

    ['ls_rusted_key'] = {
        label = '錆びた鍵',
        description = 'ダイビングで見つけたがらくた',
        weight = 25
    },

    ['ls_rusted_gear'] = {
        label = '錆びた歯車',
        weight = 25
    },

    ['ls_seashell'] = {
        label = '貝殻',
        description = 'ダイビングで見つけたアイテム',
        weight = 25
    },

    ['ls_seaweed'] = {
        label = '海藻',
        weight = 25
    },

    ['ls_rusted_muffler'] = {
        label = '錆びたマフラー',
        weight = 25
    },

    ['ls_broken_cd'] = {
        label = '壊れたCD',
        weight = 25
    },

    ['ls_diving_goggles'] = {
        label = 'ダイビングゴーグル',
        weight = 25
    },

    ['ls_fishing_net'] = {
        label = '漁網',
        weight = 25
    },

    ['ls_old_camera'] = {
        label = '古いカメラ',
        weight = 25
    },

    ['ls_military_helmet'] = {
        label = '軍用ヘルメット',
        weight = 25
    },

    ['ls_old_compass'] = {
        label = '古いコンパス',
        weight = 25
    },

    ['ls_old_watch'] = {
        label = '古い時計',
        weight = 25
    },

    ['ls_conch_shell'] = {
        label = 'ホラ貝',
        description = 'ダイビングで見つけたアイテム',
        weight = 25
    },

    ['ls_bottle_of_rum'] = {
        label = 'ラム酒のボトル',
        weight = 25
    },

    ['ls_treasure_map'] = {
        label = '宝の地図',
        description = '宝の場所を示す地図',
        weight = 25
    },

    ['ls_silver_bracelet'] = {
        label = '銀のブレスレット',
        weight = 25
    },

    ['ls_ancient_artifact'] = {
        label = '古代の遺物',
        description = '古代の貴重な遺物',
        weight = 25
    },
    -- ls_diving_end
    -- lation_laundering_start
	['warehouse_key'] = {
		label = '倉庫の鍵',
		description = '倉庫の鍵',
		weight = 25,
	},

	['uncounted_money'] = {
		label = '未計算のお金',
		description = '洗浄が必要なお金',
	},
	-- lation_laundering_end
    -- lation_meth_start
	['ls_meth_table'] = {
		label = '覚醒剤テーブル',
		description = '覚醒剤製造テーブル',
		weight = 1000,
		stack = false
	},

	['ls_gas_mask'] = {
		label = 'ガスマスク',
		weight = 150,
		stack = false
	},

	['ls_pseudoephedrine'] = {
		label = 'プソイドエフェドリン錠',
		description = '覚醒剤の原料',
		weight = 50
	},

	['ls_crushed_pseudoephedrine'] = {
		label = '粉砕されたプソイドエフェドリン',
		weight = 25
	},

	['ls_ammonia'] = {
		label = 'アンモニア',
		description = '覚醒剤の原料',
		weight = 250,
		stack = false
	},

	['ls_iodine'] = {
		label = 'ヨウ素',
		description = '覚醒剤の原料',
		weight = 250,
		stack = false
	},

	['ls_acetone'] = {
		label = 'アセトン',
		description = '覚醒剤の原料',
		weight = 250,
		stack = false
	},

	['ls_liquid_meth'] = {
		label = '液体覚醒剤',
		description = '製造中の覚醒剤',
		weight = 225
	},

	['ls_hydrochloric_acid'] = {
		label = '塩酸',
		description = '覚醒剤の原料',
		weight = 250
	},

	['ls_meth'] = {
		label = '覚醒剤',
		description = '違法な薬物',
		weight = 50
	},

	['ls_supply_crate'] = {
		label = '供給品',
		weight = 1000
	},

	['ls_meth_tray'] = {
		label = '覚醒剤トレイ',
		weight = 50
	},

	['ls_meth_box'] = {
		label = '覚醒剤ボックス',
		weight = 50
	},
	-- lation_meth_end
    -- lation_weed_start
    ['ls_plain_jane_seed'] = {
        label = 'プレーン・ジェーンの種',
        description = '大麻の種',
        weight = 5,
    },

    ['ls_plain_jane_bud'] = {
        label = 'プレーン・ジェーンのバッド',
        description = '乾燥大麻',
        weight = 5,
    },

    ['ls_plain_jane_bag'] = {
        label = 'プレーン・ジェーンのバッグ',
        description = '大麻のバッグ',
        weight = 10,
    },

    ['ls_plain_jane_joint'] = {
        label = 'プレーン・ジェーンのジョイント',
        description = 'ジョイント',
        weight = 10,
    },

    ['ls_banana_kush_seed'] = {
        label = 'バナナ・クッシュの種',
        description = '大麻の種',
        weight = 5,
    },

    ['ls_banana_kush_bud'] = {
        label = 'バナナ・クッシュのバッド',
        description = '乾燥大麻',
        weight = 5,
    },

    ['ls_banana_kush_bag'] = {
        label = 'バナナ・クッシュのバッグ',
        description = '大麻のバッグ',
        weight = 10,
    },

    ['ls_banana_kush_joint'] = {
        label = 'バナナ・クッシュのジョイント',
        description = 'ジョイント',
        weight = 10,
    },

    ['ls_blue_dream_seed'] = {
        label = 'ブルー・ドリームの種',
        weight = 5,
    },

    ['ls_blue_dream_bud'] = {
        label = 'ブルー・ドリームのバッド',
        weight = 5,
    },

    ['ls_blue_dream_bag'] = {
        label = 'ブルー・ドリームのバッグ',
        weight = 10,
    },

    ['ls_blue_dream_joint'] = {
        label = 'ブルー・ドリームのジョイント',
        weight = 10,
    },

    ['ls_purple_haze_seed'] = {
        label = 'パープル・ヘイズの種',
        weight = 5,
    },

    ['ls_purple_haze_bud'] = {
        label = 'パープル・ヘイズのバッド',
        weight = 5,
    },

    ['ls_purple_haze_bag'] = {
        label = 'パープル・ヘイズのバッグ',
        weight = 10,
    },

    ['ls_purple_haze_joint'] = {
        label = 'パープル・ヘイズのジョイント',
        weight = 10,
    },

    ['ls_orange_crush_seed'] = {
        label = 'オレンジ・クラッシュの種',
        weight = 5,
    },

    ['ls_orange_crush_bud'] = {
        label = 'オレンジ・クラッシュのバッド',
        weight = 5,
    },

    ['ls_orange_crush_bag'] = {
        label = 'オレンジ・クラッシュのバッグ',
        weight = 10,
    },

    ['ls_orange_crush_joint'] = {
        label = 'オレンジ・クラッシュのジョイント',
        weight = 10,
    },

    ['ls_cosmic_kush_seed'] = {
        label = 'コズミック・クッシュの種',
        weight = 5,
    },

    ['ls_cosmic_kush_bud'] = {
        label = 'コズミック・クッシュのバッド',
        weight = 5,
    },

    ['ls_cosmic_kush_bag'] = {
        label = 'コズミック・クッシュのバッグ',
        weight = 10,
    },

    ['ls_cosmic_kush_joint'] = {
        label = 'コズミック・クッシュのジョイント',
        weight = 10,
    },

    ['ls_rolling_paper'] = {
        label = '巻紙',
        description = 'タバコや大麻を巻くための紙',
        weight = 5,
    },

    ['ls_empty_baggy'] = {
        label = '空の小袋',
        weight = 5,
    },

    ['ls_access_card'] = {
        label = 'アクセスカード',
        description = 'アクセスカード',
        weight = 15,
    },

    ['ls_watering_can'] = {
        label = 'じょうろ',
        description = '植物の水やりに使う',
        weight = 3250,
        stack = false,
    },

    ['ls_fertilizer'] = {
        label = '肥料',
        description = '植物の肥料',
        weight = 1750,
        stack = false,
    },

    ['ls_plant_pot'] = {
        label = '植木鉢',
        description = '植物を植えるための鉢',
        weight = 25,
    },

    ['ls_shovel'] = {
        label = 'シャベル',
        description = '穴を掘る道具',
        weight = 75,
    },

    ['ls_shears'] = {
        label = '剪定ばさみ',
        description = '植物の剪定に使う',
        weight = 10,
    },

    ['ls_weed_table'] = {
        label = 'ウィードテーブル',
        description = '大麻加工テーブル',
        weight = 1000,
        stack = false
    },
    -- lation_weed_end
    -- bahamas
    ['juice_pineapple'] = {
        label = 'パイナップルジュース',
        weight = 1,
        stack = true,
        close = true,
        description = 'パイナップルジュース'
    },
    ['strawberry_juice'] = {
        label = 'ストロベリージュース',
        weight = 1,
        stack = true,
        close = true,
        description = 'ストロベリージュース'
    },
}