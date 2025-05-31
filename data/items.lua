return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
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
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
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

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
	["engine_oil"] = {
		label = "Engine Oil",
		weight = 1000,
	  },
	  ["tyre_replacement"] = {
		label = "Tyre Replacement",
		weight = 1000,
	  },
	  ["clutch_replacement"] = {
		label = "Clutch Replacement",
		weight = 1000,
	  },
	  ["air_filter"] = {
		label = "Air Filter",
		weight = 100,
	  },
	  ["spark_plug"] = {
		label = "Spark Plug",
		weight = 1000,
	  },
	  ["brakepad_replacement"] = {
		label = "Brakepad Replacement",
		weight = 1000,
	  },
	  ["suspension_parts"] = {
		label = "Suspension Parts",
		weight = 1000,
	  },
	  -- Engine Items
	  ["i4_engine"] = {
		label = "I4 Engine",
		weight = 1000,
	  },
	  ["v6_engine"] = {
		label = "V6 Engine",
		weight = 1000,
	  },
	  ["v8_engine"] = {
		label = "V8 Engine",
		weight = 1000,
	  },
	  ["v12_engine"] = {
		label = "V12 Engine",
		weight = 1000,
	  },
	  ["turbocharger"] = {
		label = "Turbocharger",
		weight = 1000,
	  },
	  -- Electric Engines
	  ["ev_motor"] = {
		label = "EV Motor",
		weight = 1000,
	  },
	  ["ev_battery"] = {
		label = "EV Battery",
		weight = 1000,
	  },
	  ["ev_coolant"] = {
		label = "EV Coolant",
		weight = 1000,
	  },
	  -- Drivetrain Items
	  ["awd_drivetrain"] = {
		label = "AWD Drivetrain",
		weight = 1000,
	  },
	  ["rwd_drivetrain"] = {
		label = "RWD Drivetrain",
		weight = 1000,
	  },
	  ["fwd_drivetrain"] = {
		label = "FWD Drivetrain",
		weight = 1000,
	  },
	  -- Tuning Items
	  ["slick_tyres"] = {
		label = "Slick Tyres",
		weight = 1000,
	  },
	  ["semi_slick_tyres"] = {
		label = "Semi Slick Tyres",
		weight = 1000,
	  },
	  ["offroad_tyres"] = {
		label = "Offroad Tyres",
		weight = 1000,
	  },
	  ["drift_tuning_kit"] = {
		label = "Drift Tuning Kit",
		weight = 1000,
	  },
	  ["ceramic_brakes"] = {
		label = "Ceramic Brakes",
		weight = 1000,
	  },
	  -- Cosmetic Items
	  ["lighting_controller"] = {
		label = "Lighting Controller",
		weight = 100,
		client = {
		  event = "jg-mechanic:client:show-lighting-controller",
		}
	  },
	  ["stancing_kit"] = {
		label = "Stancer Kit",
		weight = 100,
		client = {
		  event = "jg-mechanic:client:show-stancer-kit",
		}
	  },
	  ["cosmetic_part"] = {
		label = "Cosmetic Parts",
		weight = 100,
	  },
	  ["respray_kit"] = {
		label = "Respray Kit",
		weight = 1000,
	  },
	  ["vehicle_wheels"] = {
		label = "Vehicle Wheels Set",
		weight = 1000,
	  },
	  ["tyre_smoke_kit"] = {
		label = "Tyre Smoke Kit",
		weight = 1000,
	  },
	  ["bulletproof_tyres"] = {
		label = "Bulletproof Tyres",
		weight = 1000,
	  },
	  ["extras_kit"] = {
		label = "Extras Kit",
		weight = 1000,
	  },
	  -- Nitrous & Cleaning Items
	  ["nitrous_bottle"] = {
		label = "Nitrous Bottle",
		weight = 1000,
		client = {
		  event = "jg-mechanic:client:use-nitrous-bottle",
		}
	  },
	  ["empty_nitrous_bottle"] = {
		label = "Empty Nitrous Bottle",
		weight = 1000,
	  },
	  ["nitrous_install_kit"] = {
		label = "Nitrous Install Kit",
		weight = 1000,
	  },
	  ["cleaning_kit"] = {
		label = "Cleaning Kit",
		weight = 1000,
		client = {
		  event = "jg-mechanic:client:clean-vehicle",
		}
	  },
	  ["repair_kit"] = {
		label = "Repair Kit",
		weight = 1000,
		client = {
		  event = "jg-mechanic:client:repair-vehicle",
		}
	  },
	  ["duct_tape"] = {
		label = "Duct Tape",
		weight = 1000,
		client = {
		  event = "jg-mechanic:client:use-duct-tape",
		}
	  },
	  -- Performance Item
	  ["performance_part"] = {
		label = "Performance Parts",
		weight = 1000,
	  },
	  -- Mechanic Tablet Item
	  ["mechanic_tablet"] = {
		label = "Mechanic Tablet",
		weight = 1000,
		client = {
		  event = "jg-mechanic:client:use-tablet",
		}
	  },
	  -- Gearbox
	  ["manual_gearbox"] = {
		label = "Manual Gearbox",
		weight = 1000,
	  },

	  ['hack_usb'] = {
		label = 'Hack USB',
		weight = 160,
	},
	['drill'] = {
		label = 'Drill',
		weight = 160,
	},
	['thermite_bomb'] = {
		label = 'Thermite Bomb',
		weight = 160,
	},
	['bag'] = {
		label = 'Bag',
		weight = 160,
	},
	['medbag'] = {
		label = 'Medical Bag',
		weight = 2500,
		stack = true,
		close = true,
		description = 'A bag of medic tools',
		client = { image = 'medbag.png' }
	},
	
	['tweezers'] = {
		label = 'Tweezers',
		weight = 50,
		stack = true,
		close = true,
		description = 'For picking out bullets',
		client = { image = 'tweezers.png' }
	},
	
	['suturekit'] = {
		label = 'Suture Kit',
		weight = 60,
		stack = true,
		close = true,
		description = 'For stitching your patients',
		client = { image = 'suturekit.png' }
	},
	
	['icepack'] = {
		label = 'Ice Pack',
		weight = 110,
		stack = true,
		close = true,
		description = 'To help reduce swelling',
		client = { image = 'icepack.png' }
	},
	
	['burncream'] = {
		label = 'Burn Cream',
		weight = 125,
		stack = true,
		close = true,
		description = 'To help with burns',
		client = { image = 'burncream.png' }
	},
	
	['defib'] = {
		label = 'Defibrillator',
		weight = 1120,
		stack = true,
		close = true,
		description = 'Used to revive patients',
		client = { image = 'defib.png' }
	},
	
	['sedative'] = {
		label = 'Sedative',
		weight = 20,
		stack = true,
		close = true,
		description = 'If needed, this will sedate patient',
		client = { image = 'sedative.png' }
	},
	
	['morphine30'] = {
		label = 'Morphine 30MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'morphine30.png' }
	},
	
	['morphine15'] = {
		label = 'Morphine 15MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'morphine15.png' }
	},
	
	['perc30'] = {
		label = 'Percocet 30MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'perc30.png' }
	},
	
	['perc10'] = {
		label = 'Percocet 10MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'perc10.png' }
	},
	
	['perc5'] = {
		label = 'Percocet 5MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'perc5.png' }
	},
	
	['vic10'] = {
		label = 'Vicodin 10MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'vic10.png' }
	},
	
	['vic5'] = {
		label = 'Vicodin 5MG',
		weight = 2,
		stack = true,
		close = true,
		description = 'A controlled substance to control pain',
		client = { image = 'vic5.png' }
	},
	
	['medikit'] = {
		label = 'Medical Kit',
		weight = 110,
		stack = true,
		close = true,
		description = 'A first aid kit for healing injured people.',
		client = { image = 'medikit.png' }
	},
	['blue_metaldetector'] = {
		label = 'Beginner\'s Beacon',
		weight = 475
	},
	
	['green_metaldetector'] = {
		label = 'Lustrous Locator',
		weight = 475
	},
	
	['red_metaldetector'] = {
		label = 'Treasure Trove Tracker',
		weight = 475
	},
	
	['orange_metaldetector'] = {
		label = 'Goldseeker\'s Grail',
		weight = 475
	},
	
	['black_metaldetector'] = {
		label = 'Archaeo Ace',
		weight = 475
	},
	
	['md_shovel'] = {
		label = 'Shovel',
		weight = 55
	},
	
	['md_bottlecap'] = {
		label = 'Bottle Cap',
		weight = 25
	},
	
	['md_brokenjunk'] = {
		label = 'Broken Junk',
		weight = 25
	},
	
	['md_crushedcan'] = {
		label = 'Crushed Can',
		weight = 25
	},
	
	['md_lighter'] = {
		label = 'Lighter',
		weight = 25
	},
	
	['md_metalcan'] = {
		label = 'Metal Can',
		weight = 25
	},
	
	['md_nails'] = {
		label = 'Nails',
		weight = 25
	},
	
	['md_needle'] = {
		label = 'Needle',
		weight = 25
	},
	
	['md_nickle'] = {
		label = 'Nickle',
		weight = 25
	},
	
	['md_nut'] = {
		label = 'Nut',
		weight = 25
	},
	
	['md_oldshotgunshell'] = {
		label = 'Old Shotgun Shell',
		weight = 25
	},
	
	['md_paperclip'] = {
		label = 'Paper Clip',
		weight = 25
	},
	
	['md_pulltab'] = {
		label = 'Pull Tab',
		weight = 25
	},
	
	['md_quarter'] = {
		label = 'Quarter',
		weight = 25
	},
	
	['md_rustyball'] = {
		label = 'Rusty Ball',
		weight = 25
	},
	
	['md_rustyironball'] = {
		label = 'Rusty Iron Ball',
		weight = 25
	},
	
	['md_rustyjunk'] = {
		label = 'Rusty Junk',
		weight = 25
	},
	
	['md_rustynails'] = {
		label = 'Rusty Nails',
		weight = 25
	},
	
	['md_rustypliers'] = {
		label = 'Rusty Pliers',
		weight = 25
	},
	
	['md_rustyring'] = {
		label = 'Rusty Ring',
		weight = 25
	},
	
	['md_rustyscissors'] = {
		label = 'Rusty Scissors',
		weight = 25
	},
	
	['md_rustyscrewdriver'] = {
		label = 'Rusty Screwdriver',
		weight = 25
	},
	
	['md_rustyspring'] = {
		label = 'Rusty Spring',
		weight = 25
	},
	
	['md_screw'] = {
		label = 'Screw',
		weight = 25
	},
	
	['md_wheatpenny'] = {
		label = 'Wheat Penny',
		weight = 25
	},
	
	['md_ancientcoin'] = {
		label = 'Ancient Coin',
		weight = 25
	},
	
	['md_blackwatch'] = {
		label = 'Watch',
		weight = 25
	},
	
	['md_coppernugget'] = {
		label = 'Copper Nugget',
		weight = 25
	},
	
	['md_diamondearings'] = {
		label = 'Diamond Earings',
		weight = 25
	},
	
	['md_diamondnecklace'] = {
		label = 'Diamond Necklace',
		weight = 25
	},
	
	['md_diamondring'] = {
		label = 'Diamond Ring',
		weight = 25
	},
	
	['md_earpod'] = {
		label = 'Ear Pod',
		weight = 25
	},
	
	['md_golddollar'] = {
		label = 'Gold Dollar',
		weight = 25
	},
	
	['md_goldearings'] = {
		label = 'Gold Earings',
		weight = 25
	},
	
	['md_goldnecklace'] = {
		label = 'Gold Necklace',
		weight = 25
	},
	
	['md_goldnugget'] = {
		label = 'Gold Nugget',
		weight = 25
	},
	
	['md_goldounce'] = {
		label = '1oz Gold Bar',
		weight = 25
	},
	
	['md_goldring'] = {
		label = 'Gold Ring',
		weight = 25
	},
	
	['md_halfdollar'] = {
		label = 'Half Dollar',
		weight = 25
	},
	
	['md_ironnugget'] = {
		label = 'Iron Nugget',
		weight = 25
	},
	
	['md_platinumnugget'] = {
		label = 'Platinum Nugget',
		weight = 25
	},
	
	['md_presidentialwatch'] = {
		label = 'Presidential Watch',
		weight = 25
	},
	
	['md_relicrevolver'] = {
		label = 'Relic Revolver',
		weight = 25
	},
	
	['md_silverdime'] = {
		label = 'Silver Dime',
		weight = 25
	},
	
	['md_silverearings'] = {
		label = 'Silver Earings',
		weight = 25
	},
	
	['md_silverounce'] = {
		label = '1oz Silver Bar',
		weight = 25
	},
	
	['md_silverring'] = {
		label = 'Silver Ring',
		weight = 25
	},

	['ls_plain_jane_seed'] = {
		label = 'Plain Jane Seed',
		weight = 5,
	},
	
	['ls_plain_jane_bud'] = {
		label = 'Plain Jane Bud',
		weight = 5,
	},
	
	['ls_plain_jane_bag'] = {
		label = 'Plain Jane Bag',
		weight = 10,
	},
	
	['ls_plain_jane_joint'] = {
		label = 'Plain Jane Joint',
		weight = 10,
	},
	
	['ls_banana_kush_seed'] = {
		label = 'Banana Kush Seed',
		weight = 5,
	},
	
	['ls_banana_kush_bud'] = {
		label = 'Banana Kush Bud',
		weight = 5,
	},
	
	['ls_banana_kush_bag'] = {
		label = 'Banana Kush Bag',
		weight = 10,
	},
	
	['ls_banana_kush_joint'] = {
		label = 'Banana Kush Joint',
		weight = 10,
	},
	
	['ls_blue_dream_seed'] = {
		label = 'Blue Dream Seed',
		weight = 5,
	},
	
	['ls_blue_dream_bud'] = {
		label = 'Blue Dream Bud',
		weight = 5,
	},
	
	['ls_blue_dream_bag'] = {
		label = 'Blue Dream Bag',
		weight = 10,
	},
	
	['ls_blue_dream_joint'] = {
		label = 'Blue Dream Joint',
		weight = 10,
	},
	
	['ls_purple_haze_seed'] = {
		label = 'Purple Haze Seed',
		weight = 5,
	},
	
	['ls_purple_haze_bud'] = {
		label = 'Purple Haze Bud',
		weight = 5,
	},
	
	['ls_purple_haze_bag'] = {
		label = 'Purple Haze Bag',
		weight = 10,
	},
	
	['ls_purple_haze_joint'] = {
		label = 'Purple Haze Joint',
		weight = 10,
	},
	
	['ls_orange_crush_seed'] = {
		label = 'Orange Crush Seed',
		weight = 5,
	},
	
	['ls_orange_crush_bud'] = {
		label = 'Orange Crush Bud',
		weight = 5,
	},
	
	['ls_orange_crush_bag'] = {
		label = 'Orange Crush Bag',
		weight = 10,
	},
	
	['ls_orange_crush_joint'] = {
		label = 'Orange Crush Joint',
		weight = 10,
	},
	
	['ls_cosmic_kush_seed'] = {
		label = 'Cosmic Kush Seed',
		weight = 5,
	},
	
	['ls_cosmic_kush_bud'] = {
		label = 'Cosmic Kush Bud',
		weight = 5,
	},
	
	['ls_cosmic_kush_bag'] = {
		label = 'Cosmic Kush Bag',
		weight = 10,
	},
	
	['ls_cosmic_kush_joint'] = {
		label = 'Cosmic Kush Joint',
		weight = 10,
	},
	
	['ls_rolling_paper'] = {
		label = 'Rolling Paper',
		weight = 5,
	},
	
	['ls_empty_baggy'] = {
		label = 'Empty Baggy',
		weight = 5,
	},
	
	['ls_access_card'] = {
		label = 'Access Card',
		weight = 15,
	},
	
	['ls_watering_can'] = {
		label = 'Watering Can',
		weight = 3250,
		stack = false,
	},
	
	['ls_fertilizer'] = {
		label = 'Fertilizer',
		weight = 1750,
		stack = false,
	},
	
	['ls_plant_pot'] = {
		label = 'Plant Pot',
		weight = 25,
	},
	
	['ls_shovel'] = {
		label = 'Shovel',
		weight = 75,
	},
	
	['ls_shears'] = {
		label = 'Shears',
		weight = 10,
	},
	
	['ls_weed_table'] = {
		label = 'Weed Table',
		weight = 1000,
		stack = false
	},

	['casino_beer'] = {
		label = 'Casino Beer',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Beer',
		client = { image = 'casino_beer.png' }
	},
	
	['casino_burger'] = {
		label = 'Casino Burger',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Burger',
		client = { image = 'casino_burger.png' }
	},
	
	['casino_chips'] = {
		label = 'Casino Chips',
		weight = 0,
		stack = true,
		close = false,
		description = 'Casino Chips',
		client = { image = 'casino_chips.png' }
	},
	
	['casino_coffee'] = {
		label = 'Casino Coffee',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Coffee',
		client = { image = 'casino_coffee.png' }
	},
	
	['casino_coke'] = {
		label = 'Casino Kofola',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Kofola',
		client = { image = 'casino_coke.png' }
	},
	
	['casino_donut'] = {
		label = 'Casino Donut',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Donut',
		client = { image = 'casino_donut.png' }
	},
	
	['casino_ego_chaser'] = {
		label = 'Casino Ego Chaser',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Ego Chaser',
		client = { image = 'casino_ego_chaser.png' }
	},
	
	['casino_luckypotion'] = {
		label = 'Casino Lucky Potion',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Lucky Potion',
		client = { image = 'casino_luckypotion.png' }
	},
	
	['casino_psqs'] = {
		label = 'Casino Ps & Qs',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Ps & Qs',
		client = { image = 'casino_psqs.png' }
	},
	
	['casino_sandwitch'] = {
		label = 'Casino Sandwitch',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Sandwitch',
		client = { image = 'casino_sandwitch.png' }
	},
	
	['casino_sprite'] = {
		label = 'Casino Sprite',
		weight = 0,
		stack = false,
		close = false,
		description = 'Casino Sprite',
		client = { image = 'casino_sprite.png' }
	},	

	['bobby_pin'] = {
		label = 'Bobby Pin',
		weight = 2500,
		stack = true,
		close = true,
		description = 'Can be used as a makeshift tool for picking locks',
		client = { image = 'bobby_pin.png' }
	},
	
	['tracking_bracelet'] = {
		label = 'Tracking Bracelet',
		weight = 2500,
		stack = true,
		close = true,
		description = 'Can be used for tracking a suspect',
		client = { image = 'tracking_bracelet.png' }
	},
	

	['ls_auto_parts'] = {
		label = 'Auto Parts',
		weight = 5,
	},
	
	['ls_torch'] = {
		label = 'Torch',
		weight = 275,
	},
	
	['ls_lug_wrench'] = {
		label = 'Lug Wrench',
		weight = 225,
	},
	
	['ls_vehicle_finder'] = {
		label = 'Vehicle Finder',
		weight = 175,
	},

	['debitcard_personal'] = {
		label = 'Personal Debit Card',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			export = "tgg-banking.UseCardOnAtm"
		}
	},
	['debitcard_shared'] = {
		label = 'Shared Debit Card',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			export = "tgg-banking.UseCardOnAtm"
		}
	},
	['debitcard_business'] = {
		label = 'Business Debit Card',
		stack = false,
		weight = 10,
		consume = 0,
		client = {
			export = "tgg-banking.UseCardOnAtm"
		}
	},
	


	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},

	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["attachment_bench"] = {
		label = "Attachment Workbench",
		weight = 15000,
		stack = false,
		close = false,
		description = "A workbench for crafting attachments.",
		client = {
			image = "attworkbench.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},

	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},

	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},

	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},

	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},

	["uncounted_money"] = {
		label = "Uncounted Money",
		weight = 1,
		stack = true,
		close = true,
		client = {
			image = "uncounted_money.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},

	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},

	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},

	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["item_bench"] = {
		label = "Workbench",
		weight = 15000,
		stack = false,
		close = false,
		description = "A workbench to craft items.",
		client = {
			image = "workbench.png",
		}
	},

	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},

	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},

	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},

	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},

	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},

	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},

	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},

	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},

	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},

	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},

	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},

	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},

	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},

	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},

	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},

	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},

	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},

	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},

	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["warehouse_key"] = {
		label = "Warehouse Key",
		weight = 20,
		stack = true,
		close = true,
		client = {
			image = "warehouse_key.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},

	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},

	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},

	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},

	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},

	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},

	["tunerchipr"] = {
		label = "Chip Remover",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tunerchipr.png",
		}
	},

	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},

	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},

	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},

	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},

	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},

	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving_tube.png",
		}
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},

	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},

	["tunerchip3"] = {
		label = "Tuner Chip 3",
		weight = 250,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tunerchip3.png",
		}
	},

	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},

	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},

	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},

	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},

	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},

	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},

	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},

	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},

	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},

	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},

	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},

	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},

	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},

	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},

	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},

	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["short_curled_wig"] = {
		label = "Short Curled Wig",
		weight = 250,
		stack = true,
		close = true,
		description = "Short Curled Wig",
		client = {
			image = "short_curled_wig.png",
		}
	},

	["sky_gliders"] = {
		label = "Sky Gliders",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Gliders",
		client = {
			image = "sky_gliders.png",
		}
	},

	["pixelstrawdonut"] = {
		label = "Strawberry Donut",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelstrawdonut.png",
		}
	},

	["pink_diamond"] = {
		label = "Pink Diamond",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pink_diamond.png",
		}
	},

	["casino_keycard"] = {
		label = "Casino Keycard",
		weight = 100,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "casino_keycard.png",
		}
	},

	["gangstashs"] = {
		label = "Small Stash",
		weight = 100,
		stack = false,
		close = true,
		description = "Small Stash",
		client = {
			image = "gangstashs.png",
		}
	},

	["shoe_phone"] = {
		label = "Shoe client phone",
		weight = 5,
		stack = true,
		close = true,
		description = "Shoe client phone",
		client = {
			image = "shoe_phone.png",
		}
	},

	["cutted_orange"] = {
		label = "Cutted Orange",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_orange.png",
		}
	},

	["galaxy_x"] = {
		label = "Galaxy X",
		weight = 5,
		stack = true,
		close = true,
		description = "Galaxy X",
		client = {
			image = "galaxy_x.png",
		}
	},

	["breeze_bangs"] = {
		label = "Breeze Bangs",
		weight = 5,
		stack = true,
		close = true,
		description = "Breeze Bangs",
		client = {
			image = "breeze_bangs.png",
		}
	},

	["blue_keycard"] = {
		label = "Blue Keycard",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "blue_keycard.png",
		}
	},

	["usb_stick"] = {
		label = "USB Stick",
		weight = 5,
		stack = true,
		close = true,
		description = "A computer USB stick",
		client = {
			image = "usb_stick.png",
		}
	},

	["cutted_wheat"] = {
		label = "Flour",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_wheat.png",
		}
	},

	["gasoline"] = {
		label = "gasoline",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "gasoline.png",
		}
	},

	["pixelcoffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixelcoffee.png",
		}
	},

	["pixeljoint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "To chill out",
		client = {
			image = "pixeljoint.png",
		}
	},

	["pink_messenger_bag"] = {
		label = "Pink Messenger Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A pink messenger bag",
		client = {
			image = "pink_messenger_bag.png",
		}
	},

	["work_station"] = {
		label = "Shoe Work Station",
		weight = 5,
		stack = true,
		close = true,
		description = "Shoe Work Station",
		client = {
			image = "work_station.png",
		}
	},

	["pixelsprunk"] = {
		label = "Sprunk",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixelsprunk.png",
		}
	},

	["apple"] = {
		label = "Apple",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "apple.png",
		}
	},

	["tomato"] = {
		label = "Tomato",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tomato.png",
		}
	},

	["diamond_necklace"] = {
		label = "Diamond Necklace",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamond_necklace.png",
		}
	},

	["potato"] = {
		label = "Potato",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "potato.png",
		}
	},

	["cutted_apple"] = {
		label = "Cutted Apple",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_apple.png",
		}
	},

	["cutted_strawberry"] = {
		label = "Cutted Strawberry",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_strawberry.png",
		}
	},

	["can"] = {
		label = "Empty Can",
		weight = 10,
		stack = true,
		close = false,
		description = "An empty can, good for recycling",
		client = {
			image = "can.png",
		}
	},

	["shrooms"] = {
		label = "Shrooms",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "R.png",
		}
	},

	["at_clip_clear"] = {
		label = "Clear Round Mag",
		weight = 1000,
		stack = true,
		close = true,
		description = "Clear Weapon Mag",
		client = {
			image = "at_clip_clear.png",
		}
	},

	["leather_bag"] = {
		label = "Leather Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A durable leather bag",
		client = {
			image = "leather_bag.png",
		}
	},

	["sudafid"] = {
		label = "sudafid",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "gelpills_red.png",
		}
	},

	["pixelmeteoritebar"] = {
		label = "Meteorite",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy snack!",
		client = {
			image = "pixelmeteoritebar.png",
		}
	},

	["doublecup"] = {
		label = "doublecup",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "doublecup.png",
		}
	},

	["bangwigs"] = {
		label = "Bang Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Wigs with bangs!",
		client = {
			image = "bangwigs.png",
		}
	},

	["elegancy_beauty_bag"] = {
		label = "Elegancy Beauty Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "An elegant beauty bag",
		client = {
			image = "elegancy_beauty_bag.png",
		}
	},

	["ducttape"] = {
		label = "ducttape",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "ducttape.png",
		}
	},

	["pixelcigs"] = {
		label = "Redwood Cigarettes",
		weight = 250,
		stack = false,
		close = true,
		description = "Pack of Cigarettes, Made in USA",
		client = {
			image = "pixelcigs.png",
		}
	},

	["lean_tier2"] = {
		label = "Lean Tier2",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["elegance_bag"] = {
		label = "Elegance Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "An elegant handbag",
		client = {
			image = "elegance_bag.png",
		}
	},

	["hack_card"] = {
		label = "Spoofing Card",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "hack_card.png",
		}
	},

	["wigbundle"] = {
		label = "Wig Bundle",
		weight = 250,
		stack = true,
		close = true,
		description = "Bundle of wigs!",
		client = {
			image = "wigbundle.png",
		}
	},

	["chop_lockpick"] = {
		label = "Lockpick",
		weight = 150,
		stack = true,
		close = true,
		client = {
			image = "chop_lockpick.png",
		}
	},

	["cutted_meat"] = {
		label = "Cutted Meat",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_meat.png",
		}
	},

	["40inchwigs"] = {
		label = "40 Inch Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "40 inch long wigs!",
		client = {
			image = "40inchwigs.png",
		}
	},

	["spray"] = {
		label = "Spray Bottle",
		weight = 100,
		stack = false,
		close = true,
		description = "Spray Bottle",
		client = {
			image = "spray.png",
		}
	},

	["orange"] = {
		label = "Orange",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "orange.png",
		}
	},

	["fixkit"] = {
		label = "Fixkit",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["breeze_95s"] = {
		label = "Breeze 95s",
		weight = 5,
		stack = true,
		close = true,
		description = "Breeze 95s",
		client = {
			image = "breeze_95s.png",
		}
	},

	["at_clip_100_pistol"] = {
		label = "100 Round Mag",
		weight = 2000,
		stack = true,
		close = true,
		description = "A 100 Round Mag",
		client = {
			image = "at_clip_100_pistol.png",
		}
	},

	["Baggies"] = {
		label = "Baggies",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "baggyempty.png",
		}
	},

	["recyclablematerial"] = {
		label = "Recycle Box",
		weight = 50,
		stack = true,
		close = false,
		description = "A box of Recyclable Materials",
		client = {
			image = "recyclablematerial.png",
		}
	},

	["cutted_soya"] = {
		label = "Tofu",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_soya.png",
		}
	},

	["small_drill"] = {
		label = "Small Drill",
		weight = 2000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "small_drill.png",
		}
	},

	["tote_bag"] = {
		label = "Tote Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A versatile tote bag",
		client = {
			image = "tote_bag.png",
		}
	},

	["mango"] = {
		label = "Mango",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mango.png",
		}
	},

	["naturalwavewigs"] = {
		label = "Natural Wave Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Natural wave styled wigs!",
		client = {
			image = "naturalwavewigs.png",
		}
	},

	["corn"] = {
		label = "Corn",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "corn.png",
		}
	},

	["cutted_carrot"] = {
		label = "Cutted Carrot",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_carrot.png",
		}
	},

	["ice"] = {
		label = "Ice",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "icedcup.png",
		}
	},

	["breeze_90s"] = {
		label = "Breeze 90s",
		weight = 5,
		stack = true,
		close = true,
		description = "Breeze 90s",
		client = {
			image = "breeze_90s.png",
		}
	},

	["pixelvodka"] = {
		label = "Vodka",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixelvodka.png",
		}
	},

	["gold_bar"] = {
		label = "Gold Bar",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "gold_bar.png",
		}
	},

	["weed"] = {
		label = "weed",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "weedbud.png",
		}
	},

	["rare_tequila"] = {
		label = "Rare Tequila",
		weight = 300,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rare_tequila.png",
		}
	},

	["carradio"] = {
		label = "Car Radio",
		weight = 1000,
		stack = true,
		close = true,
		description = "Car Radio",
		client = {
			image = "carradio.png",
		}
	},

	["chop_torch"] = {
		label = "Torch",
		weight = 275,
		stack = true,
		close = true,
		client = {
			image = "chop_torch.png",
		}
	},

	["fish"] = {
		label = "Fish",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "fish.png",
		}
	},

	["shadow_yellows"] = {
		label = "Shadow Yellows",
		weight = 5,
		stack = true,
		close = true,
		description = "Shadow Yellows",
		client = {
			image = "shadow_yellows.png",
		}
	},

	["pixelsandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy food!",
		client = {
			image = "pixelsandwich.png",
		}
	},

	["angle_grinder"] = {
		label = "Angle Grinder",
		weight = 1500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "angle_grinder.png",
		}
	},

	["cucumber"] = {
		label = "Cucumber",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cucumber.png",
		}
	},

	["pixelstrawicecone"] = {
		label = "Strawberry Ice Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelstrawicecone.png",
		}
	},

	["crafting_bench"] = {
		label = "Crafting Bench",
		weight = 100,
		stack = false,
		close = true,
		description = "Place a crafting bench.",
		client = {
			image = "crafting_bench.png",
		}
	},

	["painting"] = {
		label = "Painting",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "painting.png",
		}
	},

	["explosives"] = {
		label = "Explosives",
		weight = 3000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "explosives.png",
		}
	},

	["rd_lockpick"] = {
		label = "Lockpick",
		weight = 100,
		stack = true,
		close = true,
		description = "A lightweit item used for lockpicking doors.",
		client = {
			image = "rd_lockpick.png",
		}
	},

	["clothe_materials"] = {
		label = "Raw Cloth",
		weight = 25,
		stack = true,
		close = true,
		description = "Raw Cloth",
		client = {
			image = "clothe_materials.png",
		}
	},

	["pixelburger"] = {
		label = "Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy food!",
		client = {
			image = "pixelburger.png",
		}
	},

	["coffee_beans"] = {
		label = "Coffee Beans",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "coffee_beans.png",
		}
	},

	["cutted_banana"] = {
		label = "Cutted Banana",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_banana.png",
		}
	},

	["handbag_phone"] = {
		label = "Handbag (Phone)",
		weight = 1,
		stack = true,
		close = true,
		description = "Hand Bag client phone",
		client = {
			image = "handbag_phone.png",
		}
	},

	["pixelearthquakebar"] = {
		label = "Earthquake",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy snack!",
		client = {
			image = "pixelearthquakebar.png",
		}
	},

	["restaurant_food"] = {
		label = "Restaurant food",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "",
		}
	},

	["crystal"] = {
		label = "crystal",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "cocaine_cut.png",
		}
	},

	["wigtable"] = {
		label = "Wig Table",
		weight = 250,
		stack = true,
		close = true,
		description = "Table for styling wigs!",
		client = {
			image = "wigtable.png",
		}
	},

	["bt_gastank"] = {
		label = "Gas Tank (Bank Truck)",
		weight = 1,
		stack = true,
		close = false,
		description = "???",
		client = {
			image = "bt_gastank.png",
		}
	},

	["wigclientphone"] = {
		label = "Wig Client Phone",
		weight = 250,
		stack = true,
		close = true,
		description = "Phone for contacting wig clients!",
		client = {
			image = "wigclientphone.png",
		}
	},

	["pear"] = {
		label = "Pear",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pear.png",
		}
	},

	["hardcandy"] = {
		label = "Hard Candy",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "hardcandy.png",
		}
	},

	["cutted_lettuce"] = {
		label = "Cutted Lettuce",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_lettuce.png",
		}
	},

	["cutted_tomato"] = {
		label = "Cutted Totato",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_tomato.png",
		}
	},

	["cutted_mango"] = {
		label = "Cutted Mango",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_mango.png",
		}
	},

	["cutted_pear"] = {
		label = "Cutted Pear",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_pear.png",
		}
	},

	["pixelwine"] = {
		label = "Wine",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixelwine.png",
		}
	},

	["cutted_pineapple"] = {
		label = "Cutted Pineapple",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_pineapple.png",
		}
	},

	["pineapple"] = {
		label = "Pineapple",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "pineapple.png",
		}
	},

	["pixelbeer"] = {
		label = "Beer",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixelbeer.png",
		}
	},

	["handbag_sewing_kits"] = {
		label = "Handbag (Sewing Kits)",
		weight = 1,
		stack = true,
		close = true,
		description = "Sewing kit pack for handbags",
		client = {
			image = "handbag_sewing_kits.png",
		}
	},

	["gangtable"] = {
		label = "Interactive Table",
		weight = 100,
		stack = false,
		close = true,
		description = "Interactive Table",
		client = {
			image = "gangtable.png",
		}
	},

	["sprayc"] = {
		label = "Spray Remover",
		weight = 100,
		stack = false,
		close = true,
		description = "Spray Remover",
		client = {
			image = "sprayc.png",
		}
	},

	["short_hair_wig"] = {
		label = "Short Hair Wig",
		weight = 250,
		stack = true,
		close = true,
		description = "Short Hair Wig",
		client = {
			image = "short_hair_wig.png",
		}
	},

	["lemon"] = {
		label = "Lemon",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lemon.png",
		}
	},

	["luxurious_watch"] = {
		label = "Luxurious Watch",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "luxurious_watch.png",
		}
	},

	["lean_tier1"] = {
		label = "Lean Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["rfid_cloner"] = {
		label = "RFID Cloner",
		weight = 100,
		stack = false,
		close = true,
		description = "RFID Cloner",
		client = {
			image = "rfid_cloner.png",
		}
	},

	["onion"] = {
		label = "Onion",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "onion.png",
		}
	},

	["bottle"] = {
		label = "Empty Bottle",
		weight = 10,
		stack = true,
		close = false,
		description = "A glass bottle",
		client = {
			image = "bottle.png",
		}
	},

	["cocaineleaf"] = {
		label = "cocaineleaf",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "cocaineleaf.png",
		}
	},

	["breeze_100s"] = {
		label = "Breeze 100s",
		weight = 5,
		stack = true,
		close = true,
		description = "Breeze 100s",
		client = {
			image = "breeze_100s.png",
		}
	},

	["pixelmuffin"] = {
		label = "Muffin",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelmuffin.png",
		}
	},

	["runbooster"] = {
		label = "Run-Booster",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "runbooster.png",
		}
	},

	["cocaine_tier1"] = {
		label = "cocaine Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["pixelegochaserbar"] = {
		label = "Egochaser",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy snack!",
		client = {
			image = "pixelegochaserbar.png",
		}
	},

	["c4_bomb"] = {
		label = "C4 Bomb",
		weight = 5,
		stack = true,
		close = true,
		description = "An illegal explosive device",
		client = {
			image = "c4_bomb.png",
		}
	},

	["sky_walkers_red"] = {
		label = "Sky Walkers Red",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Walkers Red",
		client = {
			image = "sky_walkers_red.png",
		}
	},

	["handbag_leather"] = {
		label = "Handbag (Leather)",
		weight = 1,
		stack = true,
		close = true,
		description = "Handbag leathers used to make bags",
		client = {
			image = "handbag_leather.png",
		}
	},

	["meth_tier3"] = {
		label = "Meth Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "meth_pink.png",
		}
	},

	["cutted_onion"] = {
		label = "Cutted Onion",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_onion.png",
		}
	},

	["speedster_300"] = {
		label = "Speedster 300",
		weight = 5,
		stack = true,
		close = true,
		description = "Speedster 300",
		client = {
			image = "speedster_300.png",
		}
	},

	["keyboard"] = {
		label = "Keyboard",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "keyboard.png",
		}
	},

	["bt_hackdevice"] = {
		label = "Hack Device (Bank Truck)",
		weight = 1,
		stack = true,
		close = false,
		description = "???",
		client = {
			image = "bt_hackdevice.png",
		}
	},

	["cutted_lemon"] = {
		label = "Cutted Lemon",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_lemon.png",
		}
	},

	["cutted_fish"] = {
		label = "Cutted Fish",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_fish.png",
		}
	},

	["messenger_purse"] = {
		label = "Messenger Purse",
		weight = 1,
		stack = true,
		close = true,
		description = "A small messenger purse",
		client = {
			image = "messenger_purse.png",
		}
	},

	["bomb_c4"] = {
		label = "C4 Explosive",
		weight = 3000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bomb_c4.png",
		}
	},

	["pixelchampagne"] = {
		label = "Champagne",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixelchampagne.png",
		}
	},

	["handbag_bench"] = {
		label = "Handbag (Bench)",
		weight = 1,
		stack = true,
		close = true,
		description = "Work bench for handbags",
		client = {
			image = "handbag_bench.png",
		}
	},

	["pixelorangotang"] = {
		label = "OrangOTang",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixelorangotang.png",
		}
	},

	["sky_flyers"] = {
		label = "Sky Flyers",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Flyers",
		client = {
			image = "sky_flyers.png",
		}
	},

	["pixelcakeslice"] = {
		label = "Cake Slice",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelcakeslice.png",
		}
	},

	["rd_hacking_device"] = {
		label = "Hacking Device",
		weight = 100,
		stack = true,
		close = true,
		description = "A sophisticated device used for hacking security systems.",
		client = {
			image = "rd_hacking_device.png",
		}
	},

	["deepwavewigs"] = {
		label = "Deep Wave Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Deep wave styled wigs!",
		client = {
			image = "deepwavewigs.png",
		}
	},

	["runner_prime"] = {
		label = "Runner Prime",
		weight = 5,
		stack = true,
		close = true,
		description = "Runner Prime",
		client = {
			image = "runner_prime.png",
		}
	},

	["watermelon"] = {
		label = "Watermelon",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "watermelon.png",
		}
	},

	["lean_tier3"] = {
		label = "Lean Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["classified_docs"] = {
		label = "Classified Documents",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "classified_docs.png",
		}
	},

	["rubbingalchol"] = {
		label = "rubbingalchol",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "chemicals.png",
		}
	},

	["cutted_potato"] = {
		label = "Cutted Potato",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_potato.png",
		}
	},

	["large_drill"] = {
		label = "Large Drill",
		weight = 12500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "large_drill.png",
		}
	},

	["bt_c4"] = {
		label = "Small C4 (Bank Truck)",
		weight = 1,
		stack = true,
		close = false,
		description = "???",
		client = {
			image = "bt_c4.png",
		}
	},

	["microwave"] = {
		label = "Microwave",
		weight = 7500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "microwave.png",
		}
	},

	["carrot"] = {
		label = "Carrot",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "carrot.png",
		}
	},

	["pixelcookie"] = {
		label = "Cookie",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelcookie.png",
		}
	},

	["bong"] = {
		label = "Bong",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "bong.png",
		}
	},

	["tv"] = {
		label = "Television",
		weight = 12500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "tv.png",
		}
	},

	["chop_lugwrench"] = {
		label = "Lug Wrench",
		weight = 225,
		stack = true,
		close = true,
		client = {
			image = "chop_lugwrench.png",
		}
	},

	["coins"] = {
		label = "Coins",
		weight = 10,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "coins.png",
		}
	},

	["pixeltequilla"] = {
		label = "Tequilla",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixeltequilla.png",
		}
	},

	["pink_heart_bag"] = {
		label = "Pink Heart Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A cute bag with a heart design",
		client = {
			image = "pink_heart_bag.png",
		}
	},

	["pixeltaco"] = {
		label = "Taco",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy food!",
		client = {
			image = "pixeltaco.png",
		}
	},

	["console"] = {
		label = "Gaming Console",
		weight = 3000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "console.png",
		}
	},

	["plasma_cutter"] = {
		label = "Plasma cutter",
		weight = 1000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "plasma_cutter.png",
		}
	},

	["vehicletv"] = {
		label = "TV Remote",
		weight = 1000,
		stack = true,
		close = true,
		description = "Vehicle TV",
		client = {
			image = "vehicletv.png",
		}
	},

	["bakingsoda"] = {
		label = "bakingsoda",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "bakingsoda.png",
		}
	},

	["at_clip_drum_pistol"] = {
		label = "50 Round Drum",
		weight = 1250,
		stack = true,
		close = true,
		description = "A 50 Round Drum",
		client = {
			image = "at_clip_drum_pistol.png",
		}
	},

	["pixelbowlapozole"] = {
		label = "Pozole",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy food!",
		client = {
			image = "pixelbowlapozole.png",
		}
	},

	["dj_deck"] = {
		label = "DJ Deck",
		weight = 7500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "dj_deck.png",
		}
	},

	["sky_pilots"] = {
		label = "Sky Pilots",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Pilots",
		client = {
			image = "sky_pilots.png",
		}
	},

	["meat"] = {
		label = "Meat",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meat.png",
		}
	},

	["printer"] = {
		label = "Printer",
		weight = 10000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "printer.png",
		}
	},

	["old_tv"] = {
		label = "Old TV",
		weight = 12500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "old_tv.png",
		}
	},

	["bodywavewigs"] = {
		label = "Body Wave Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Body wave styled wigs!",
		client = {
			image = "bodywavewigs.png",
		}
	},

	["meth_tier1"] = {
		label = "Meth Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "meth_green.png",
		}
	},

	["door_key"] = {
		label = "Door Key",
		weight = 100,
		stack = false,
		close = true,
		description = "A regular key used to open a specific door.",
		client = {
			image = "door_key.png",
		}
	},

	["pixeljunkenergy"] = {
		label = "Junk Energy",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixeljunkenergy.png",
		}
	},

	["restaurant_box"] = {
		label = "Restaurant box",
		weight = 0,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "restaurant_box.png",
		}
	},

	["pixelcola"] = {
		label = "Cola",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixelcola.png",
		}
	},

	["pale_pink_bag"] = {
		label = "Pale Pink Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A stylish pale pink bag",
		client = {
			image = "pale_pink_bag.png",
		}
	},

	["syrup"] = {
		label = "Syrup",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "syrup.png",
		}
	},

	["gangstashm"] = {
		label = "Medium Stash",
		weight = 100,
		stack = false,
		close = true,
		description = "Medium Stash",
		client = {
			image = "gangstashm.png",
		}
	},

	["handbag_cloth"] = {
		label = "Handbag (Cloth)",
		weight = 1,
		stack = true,
		close = true,
		description = "Handbag cloth to make handbags",
		client = {
			image = "handbag_cloth.png",
		}
	},

	["lettuce"] = {
		label = "Lettuce",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "lettuce.png",
		}
	},

	["sellingbags"] = {
		label = "Sellable Bags",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "baggy_empty2.png",
		}
	},

	["cocaine_tier3"] = {
		label = "cocaine Tier1",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["braidwigs"] = {
		label = "Braid Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Wigs with braids!",
		client = {
			image = "braidwigs.png",
		}
	},

	["cutted_cucumber"] = {
		label = "Cutted Cucumber",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_cucumber.png",
		}
	},

	["cutted_peach"] = {
		label = "Cutted Peach",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_peach.png",
		}
	},

	["tvremote"] = {
		label = "TV Remote",
		weight = 1000,
		stack = true,
		close = true,
		description = "TV Remote",
		client = {
			image = "tvremote.png",
		}
	},

	["wheat"] = {
		label = "Wheat",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "wheat.png",
		}
	},

	["sponge"] = {
		label = "Sponge",
		weight = 500,
		stack = true,
		close = false,
		client = {
			image = "your_image.png",
		}
	},

	["straightwigs"] = {
		label = "Straight Wigs",
		weight = 250,
		stack = true,
		close = true,
		description = "Straight styled wigs!",
		client = {
			image = "straightwigs.png",
		}
	},

	["pink_tote_bag"] = {
		label = "Pink Tote Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A large pink tote bag",
		client = {
			image = "pink_tote_bag.png",
		}
	},

	["shoe_foam"] = {
		label = "Foam Material",
		weight = 5,
		stack = true,
		close = true,
		description = "Foam Material",
		client = {
			image = "shoe_foam.png",
		}
	},

	["soya"] = {
		label = "Soya",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "soya.png",
		}
	},

	["auto_parts"] = {
		label = "Auto Parts",
		weight = 5,
		stack = true,
		close = true,
		client = {
			image = "auto_parts.png",
		}
	},

	["pixelwhiskey"] = {
		label = "Whiskey",
		weight = 200,
		stack = true,
		close = true,
		description = "Lets get drunk!",
		client = {
			image = "pixelwhiskey.png",
		}
	},

	["pixelwater"] = {
		label = "Water Bottle",
		weight = 200,
		stack = true,
		close = true,
		description = "Tasty drink!",
		client = {
			image = "pixelwater.png",
		}
	},

	["pixelcigarette"] = {
		label = "Cigarette",
		weight = 250,
		stack = true,
		close = true,
		description = "Smokeable Tobacco",
		client = {
			image = "pixelcigarette.png",
		}
	},

	["door_card"] = {
		label = "Door Card",
		weight = 100,
		stack = false,
		close = true,
		description = "A sophisticated device used for accessing secured doors.",
		client = {
			image = "door_card.png",
		}
	},

	["small_yellow_bag"] = {
		label = "Small Yellow Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A small yellow bag",
		client = {
			image = "small_yellow_bag.png",
		}
	},

	["pixelchococookie"] = {
		label = "Chocolate Cookie",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelchococookie.png",
		}
	},

	["meth_bag"] = {
		label = "Meth Bag",
		weight = 50,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "meth_bag.png",
		}
	},

	["tiger_mediums"] = {
		label = "Tiger Mediums",
		weight = 5,
		stack = true,
		close = true,
		description = "Tiger Mediums",
		client = {
			image = "tiger_mediums.png",
		}
	},

	["peach"] = {
		label = "Peach",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "peach.png",
		}
	},

	["sky_gliders_plus"] = {
		label = "Sky Gliders Plus",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Gliders Plus",
		client = {
			image = "sky_gliders_plus.png",
		}
	},

	["bowling_bag"] = {
		label = "Bowling Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "Bag",
		client = {
			image = "bowling_bag.png",
		}
	},

	["wigcap"] = {
		label = "Wig Cap",
		weight = 250,
		stack = true,
		close = true,
		description = "Cap used under wigs!",
		client = {
			image = "wigcap.png",
		}
	},

	["leansprite"] = {
		label = "leansprite",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "leansprite.png",
		}
	},

	["fastrunner_2000"] = {
		label = "Fastrunner 2000",
		weight = 5,
		stack = true,
		close = true,
		description = "Fastrunner 2000",
		client = {
			image = "fastrunner_2000.png",
		}
	},

	["pixelchocoicecone"] = {
		label = "Chocolate Ice Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelchocoicecone.png",
		}
	},

	["meth_tier2"] = {
		label = "Meth Tier2",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "meth_purple.png",
		}
	},

	["funky_bag"] = {
		label = "Funky Bag",
		weight = 1,
		stack = true,
		close = true,
		description = "A fun and funky bag",
		client = {
			image = "funky_bag.png",
		}
	},

	["long_curly"] = {
		label = "Long Curly wig",
		weight = 250,
		stack = true,
		close = true,
		description = "Long curly wig",
		client = {
			image = "long_curly.png",
		}
	},

	["cutted_watermelon"] = {
		label = "Cutted Watermelon",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "cutted_watermelon.png",
		}
	},

	["banana"] = {
		label = "Banana",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "banana.png",
		}
	},

	["leather_materials"] = {
		label = "Leathers",
		weight = 5,
		stack = true,
		close = true,
		description = "Leathers",
		client = {
			image = "leather_materials.png",
		}
	},

	["flat_tv"] = {
		label = "Flat Screen TV",
		weight = 12500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "flat_tv.png",
		}
	},

	["strawberry"] = {
		label = "Strawberry",
		weight = 8,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "strawberry.png",
		}
	},

	["pixeloxy"] = {
		label = "Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "To chill out",
		client = {
			image = "pixeloxy.png",
		}
	},

	["gangcamera"] = {
		label = "Security Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "Security Camera",
		client = {
			image = "gangcamera.png",
		}
	},

	["rare_coins"] = {
		label = "Rare Coins",
		weight = 500,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "rare_coins.png",
		}
	},

	["zipties"] = {
		label = "Zipties",
		weight = 10,
		stack = true,
		close = false,
		description = "Zipties",
		client = {
			image = "zipties.png",
		}
	},

	["contracts_tablet"] = {
		label = "Contract Tablet",
		weight = 400,
		stack = false,
		close = true,
		description = "",
		client = {
			image = "contracts_tablet.png",
		}
	},

	["purple_keycard"] = {
		label = "Purple Keycard",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "purple_keycard.png",
		}
	},

	["monitor"] = {
		label = "Computer Monitor",
		weight = 5000,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "monitor.png",
		}
	},

	["sewingkit"] = {
		label = "Sewing Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "Kit for sewing wigs!",
		client = {
			image = "sewingkit.png",
		}
	},

	["sky_walkers"] = {
		label = "Sky Walkers",
		weight = 5,
		stack = true,
		close = true,
		description = "Sky Walkers",
		client = {
			image = "sky_walkers.png",
		}
	},

	["pixelvanillaicecone"] = {
		label = "Vanilla Ice Cream",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelvanillaicecone.png",
		}
	},

	["pixelbowlachilli"] = {
		label = "Chilli Bowl",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy food!",
		client = {
			image = "pixelbowlachilli.png",
		}
	},

	["diamonds_box"] = {
		label = "Diamonds Box",
		weight = 200,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "diamonds_box.png",
		}
	},

	["cocaine_tier2"] = {
		label = "cocaine Tier2",
		weight = 250,
		stack = true,
		close = false,
		client = {
			image = "drug_lean.png",
		}
	},

	["scissors"] = {
		label = "Scissors",
		weight = 10,
		stack = true,
		close = false,
		description = "Useful for cutting handcuffs",
		client = {
			image = "bolt_cutters.png",
		}
	},

	["protein"] = {
		label = "Protein",
		weight = 10,
		stack = true,
		close = false,
		description = "",
		client = {
			image = "protein.png",
		}
	},

	["pixelchocodonut"] = {
		label = "Chocolate Donut",
		weight = 200,
		stack = true,
		close = true,
		description = "Yummy dessert!",
		client = {
			image = "pixelchocodonut.png",
		}
	},
}