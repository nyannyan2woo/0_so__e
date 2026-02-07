return {
	General = {
		name = 'コンビニエンスストア',
		blip = {
			id = 59, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'burger', price = 100 },
			{ name = 'water', price = 100 },
			-- { name = 'cola', price = 100 },
		},
		locations = {
			-- vec3(25.7, -1347.3, 29.49),
			-- vec3(-3038.71, 585.9, 7.9),
			-- vec3(-3241.47, 1001.14, 12.83),
			-- vec3(1728.66, 6414.16, 35.03),
			-- vec3(1697.99, 4924.4, 42.06),
			-- vec3(1961.48, 3739.96, 32.34),
			-- vec3(547.79, 2671.79, 42.15),
			-- vec3(2679.25, 3280.12, 55.24),
			-- vec3(2557.94, 382.05, 108.62),
			-- vec3(373.55, 325.56, 103.56),
		},
		targets = {
			-- { loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			-- { loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			-- { loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			-- { loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			-- { loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			-- { loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			-- { loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			-- { loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			-- { loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			-- { loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	Liquor = {
		name = '酒屋',
		blip = {
			id = 93, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'water', price = 100 },
			-- { name = 'cola', price = 100 },
			{ name = 'burger', price = 150 },
		},
		locations = {
			-- vec3(1135.808, -982.281, 46.415),
			-- vec3(-1222.915, -906.983, 12.326),
			-- vec3(-1487.553, -379.107, 40.163),
			-- vec3(-2968.243, 390.910, 15.043),
			-- vec3(1166.024, 2708.930, 38.157),
			-- vec3(1392.562, 3604.684, 34.980),
			-- vec3(-1393.409, -606.624, 30.319)
		},
		targets = {
			-- { loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			-- { loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			-- { loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			-- { loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			-- { loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			-- { loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	YouTool = {
		name = 'ホームセンター',
		blip = {
			id = 402, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'lockpick', price = 100 }
		},
		locations = {
			-- vec3(2748.0, 3473.0, 55.67),
			-- vec3(342.99, -1298.26, 32.51)
		},
		targets = {
			-- { loc = vec3(2746.8, 3473.13, 55.67), length = 0.6, width = 3.0, heading = 65.0, minZ = 55.0, maxZ = 56.8, distance = 3.0 }
		}
	},

	IngredientsShop = {
		name = 'スーパーマーケット',
		blip = {
			id = 52, colour = 2, scale = 0.8
		},
		inventory = {
			{ name = 'meat', price = 500 },        -- 肉(100g程度)
			{ name = 'fish', price = 300 },        -- 魚(切り身1枚)
			{ name = 'onion', price = 80 },        -- 玉ねぎ(1個)
			{ name = 'carrot', price = 100 },      -- にんじん(1本)
			{ name = 'lettuce', price = 150 },     -- レタス(1玉)
			{ name = 'cucumber', price = 80 },     -- きゅうり(1本)
			{ name = 'potato', price = 50 },       -- じゃがいも(1個)
			{ name = 'tomato', price = 100 },      -- トマト(1個)
			{ name = 'wheat', price = 200 },       -- 小麦(パック)
			{ name = 'strawberry', price = 400 },  -- いちご(パック)
			{ name = 'watermelon', price = 800 },  -- スイカ(小玉)
			{ name = 'soya', price = 150 },        -- 大豆(パック)
			{ name = 'pineapple', price = 300 },   -- パイナップル(1個)
			{ name = 'apple', price = 150 },       -- りんご(1個)
			{ name = 'pear', price = 200 },        -- 梨(1個)
			{ name = 'lemon', price = 100 },       -- レモン(1個)
			{ name = 'banana', price = 150 },      -- バナナ(1房)
			{ name = 'orange', price = 120 },      -- オレンジ(1個)
			{ name = 'peach', price = 250 },       -- 桃(1個)
			{ name = 'mango', price = 400 },       -- マンゴー(1個)
			{ name = 'corn', price = 150 },        -- とうもろこし(1本)
			{ name = 'coffee_beans', price = 500 } -- コーヒー豆(パック)
		},
		locations = {
			-- vec3(462.11, -693.73, 27.45)
		},
		targets = {
			-- { loc = vec3(462.11, -693.73, 27.45), length = 0.6, width = 0.5, heading = 80.0, minZ = 27.0, maxZ = 28.0, distance = 2.0 }
		}
	},

	Ammunation = {
		name = '武器屋',
		blip = {
			id = 110, colour = 69, scale = 0.8
		},
		inventory = {
			{ name = 'ammo-9', price = 50, },
			{ name = 'WEAPON_KNIFE', price = 2000 },
			{ name = 'WEAPON_BAT', price = 1000 },
			{ name = 'WEAPON_PISTOL', price = 10000, metadata = { registered = true }, license = 'weapon' }
		},
		locations = {
			-- vec3(-662.180, -934.961, 21.829),
			-- vec3(810.25, -2157.60, 29.62),
			-- vec3(1693.44, 3760.16, 34.71),
			-- vec3(-330.24, 6083.88, 31.45),
			-- vec3(252.63, -50.00, 69.94),
			-- vec3(22.56, -1109.89, 29.80),
			-- vec3(2567.69, 294.38, 108.73),
			-- vec3(-1117.58, 2698.61, 18.55),
			-- vec3(842.44, -1033.42, 28.19)
		},
		targets = {
			-- { loc = vec3(-660.92, -934.10, 21.94), length = 0.6, width = 0.5, heading = 180.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			-- { loc = vec3(808.86, -2158.50, 29.73), length = 0.6, width = 0.5, heading = 360.0, minZ = 29.6, maxZ = 30.0, distance = 2.0 },
			-- { loc = vec3(1693.57, 3761.60, 34.82), length = 0.6, width = 0.5, heading = 227.39, minZ = 34.7, maxZ = 35.1, distance = 2.0 },
			-- { loc = vec3(-330.29, 6085.54, 31.57), length = 0.6, width = 0.5, heading = 225.0, minZ = 31.4, maxZ = 31.8, distance = 2.0 },
			-- { loc = vec3(252.85, -51.62, 70.0), length = 0.6, width = 0.5, heading = 70.0, minZ = 69.9, maxZ = 70.3, distance = 2.0 },
			-- { loc = vec3(23.68, -1106.46, 29.91), length = 0.6, width = 0.5, heading = 160.0, minZ = 29.8, maxZ = 30.2, distance = 2.0 },
			-- { loc = vec3(2566.59, 293.13, 108.85), length = 0.6, width = 0.5, heading = 360.0, minZ = 108.7, maxZ = 109.1, distance = 2.0 },
			-- { loc = vec3(-1117.61, 2700.26, 18.67), length = 0.6, width = 0.5, heading = 221.82, minZ = 18.5, maxZ = 18.9, distance = 2.0 },
			-- { loc = vec3(841.05, -1034.76, 28.31), length = 0.6, width = 0.5, heading = 360.0, minZ = 28.2, maxZ = 28.6, distance = 2.0 }
		}
	},

	PoliceArmoury = {
		name = '警察武器庫',
		groups = shared.police,
		blip = {
			id = 110, colour = 84, scale = 0.8
		},
		inventory = {
			{ name = 'ammo-9', price = 50, },
			{ name = 'ammo-rifle', price = 50, },
			{ name = 'WEAPON_FLASHLIGHT', price = 2000 },
			{ name = 'WEAPON_NIGHTSTICK', price = 1000 },
			{ name = 'WEAPON_PISTOL', price = 5000, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
			{ name = 'WEAPON_CARBINERIFLE', price = 10000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
			{ name = 'WEAPON_STUNGUN', price = 5000, metadata = { registered = true, serial = 'POL'} }
		},
		locations = {
			-- vec3(451.51, -979.44, 30.68)
		},
		targets = {
			-- { loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
		}
	},

	Medicine = {
		name = '医薬品棚',
		groups = {
			['ambulance'] = 0
		},
		blip = {
			id = 403, colour = 69, scale = 0.8
		},
		inventory = {
			-- { name = 'medikit', price = 260 },
			{ name = 'bandage', price = 50 }
		},
		locations = {
			-- vec3(306.3687, -601.5139, 43.28406)
		},
		targets = {

		}
	},

	BlackMarketArms = {
		name = 'ブラックマーケット',
		inventory = {
			{ name = 'WEAPON_DAGGER', price = 50000, metadata = { registered = false	}, currency = 'black_money' },
			{ name = 'WEAPON_CERAMICPISTOL', price = 500000, metadata = { registered = false }, currency = 'black_money' },
			{ name = 'at_suppressor_light', price = 500000, currency = 'black_money' },
			{ name = 'ammo-rifle', price = 10000, currency = 'black_money' },
			{ name = 'ammo-rifle2', price = 10000, currency = 'black_money' }
		},
		locations = {
			-- vec3(309.09, -913.75, 56.46)
		},
		targets = {

		}
	},

	VendingMachineDrinks = {
		name = '自動販売機',
		inventory = {
			{ name = 'water', price = 100 },
			-- { name = 'cola', price = 100 },
		},
		model = {
			-- `prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`
		}
	},

	AmbulanceArmory = {
		name = 'Armory',
		groups = { ambulance = 0 },
		inventory = {
			{ name = 'radio', price = 0 },
			{ name = 'bandage', price = 0 },
			{ name = 'painkillers', price = 0 },
			{ name = 'firstaid', price = 0 },
			{ name = 'weapon_flashlight', price = 0 },
			{ name = 'weapon_fireextinguisher', price = 0 },
		},
		locations = {
			-- vec3(309.93, -602.94, 43.29)
		},
		targets = {
			-- { loc = vec3(309.93, -602.94, 43.29), length = 0.6, width = 0.6, heading = 0, minZ = 42.29, maxZ = 44.29, distance = 2.0 }
		}
	}
}