# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Corp.delete_all

[
	{
		"name":"Apple",
		"descrip":"APPLE INC" ,
		"cusip":"037833BT6", 
		"coupon_rate":5.6,
		"yield":3.5, 
		"maturity": 2022,
		"sp_rating":"AA+",
		"moodys_rating":"Aa1", 
		"available_lot":1000000


	}, 
		{
		"name":"Microsoft",
		"descrip":"MICROSOFT CORP",
		"cusip":"594918AQ7" , 
		"coupon_rate": 2.125,
		"yield": 2.152, 
		"maturity": 2022,
		"sp_rating":"AAA",
		"moodys_rating":"Aaa", 
		"available_lot":1000000
	}, 
			{
		"name":"Nike",
		"descrip":"Nike Inc",
		"cusip":"654106AC7" , 
		"coupon_rate": 2.25,
		"yield": 2.291, 
		"maturity": 2023,
		"sp_rating":"AA-",
		"moodys_rating":"A1", 
		"available_lot":1000000
	}, 
			{
		"name":"Goldman Sachs",
		"descrip":"GOLDMAN SACHS GRP INC MTN BE 3.85000% 07/08/2024 FR",
		"cusip":"38141EC23" , 
		"coupon_rate": 3.850,
		"yield": 3.181, 
		"maturity": 2024,
		"sp_rating":"BBB+",
		"moodys_rating":"A3", 
		"available_lot":1000000
	}, 
			{
		"name":"Target",
		"descrip":"TARGET CORP BOND 9.70000% 06/15/2021",
		"cusip":"239753BG0", 
		"coupon_rate": 9.70,
		"yield": 1.836, 
		"maturity": 2021,
		"sp_rating":"A2",
		"moodys_rating":"A", 
		"available_lot":1000000
	}, 
			{
		"name":"Disney",
		"descrip":"DISNEY WALT CO MTNS BE 7.00000% 03/01/2032",
		"cusip":"" , 
		"coupon_rate": 7,
		"yield": 3.269, 
		"maturity": 2032,
		"sp_rating":"A+",
		"moodys_rating":"A2", 
		"available_lot":1000000
	}, 
			{
		"name":"General Electric",
		"descrip":"GENERAL ELECTRIC CO NOTE CALL MAKE WHOLE 4.12500% 10/09/2042",
		"cusip":"369604BF9", 
		"coupon_rate": 4.125,
		"yield": 3.854, 
		"maturity": 2042,
		"sp_rating":"A1",
		"moodys_rating":"AA-", 
		"available_lot":1000000
	}, 
			{
		"name":"Intel Corp",
		"descrip":"INTEL CORP NOTE CALL MAKE WHOLE 4.00000% 12/15/2032",
		"cusip":"458140AN0", 
		"coupon_rate": 4.00,
		"yield": 3.276, 
		"maturity": 2032,
		"sp_rating":"A+",
		"moodys_rating":"A1", 
		"available_lot":1000000
	}, 
			{
		"name":"McDonalds",
		"descrip":"MCDONALDS CORP MED TERM NT BE 6.30000% 10/15/2037CALL MAKE WHOLE ISIN #US58013MEC47",
		"cusip":"594918AQ7" , 
		"coupon_rate": 6.300,
		"yield": 3.993, 
		"maturity": 2037,
		"sp_rating":"BBB+",
		"moodys_rating":"Baa1", 
		"available_lot":1000000
	}, 
			{
		"name":"Visa",
		"descrip":"VISA INC NOTE CALL MAKE WHOLE 4.15000% 12/14/2035",
		"cusip":"92826CAE2", 
		"coupon_rate": 4.150,
		"yield": 3.488, 
		"maturity": 2035,
		"sp_rating":"A+",
		"moodys_rating":"A1", 
		"available_lot":1000000
	}, 
			{
		"name":"JP Morgan",
		"descrip":"JP MORGAN CHASE BANKMTN 1.65000% 09/23/2019",
		"cusip":"" , 
		"coupon_rate": 3.875,
		"yield": 3.773, 
		"maturity": 2024,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	}, 
	{
		"name":"VIACOM",
		"descrip":"VIACOM INC NEW NOTE CALL MAKE WHOLE 3.87500% 04/01/2024",
		"cusip":"92553PAX0" , 
		"coupon_rate": 3.875,
		"yield": 3.773, 
		"maturity": 2024,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	}, 
	{
		"name":"KOHLS CORP",
		"descrip":"KOHLS CORP NOTE CALL MAKE WHOLE 4.75000% 12/15/2023",
		"cusip":"500255AT1" , 
		"coupon_rate": 4.750,
		"yield": 3.934, 
		"maturity": 2023,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	}, 
		{
		"name":"FORD Motors",
		"descrip":"FORD MOTOR CREDIT COLLC NOTE 3.66400% 09/08/2024	",
		"cusip":"345397WW9" , 
		"coupon_rate": 3.664,
		"yield": 3.653, 
		"maturity": 2024,
		"sp_rating":"BBB",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	}, 
			{
		"name":"Capital One Financial Corp",
		"descrip":"CAPITAL ONE FINL CORP NOTE 4.20000% 10/29/2025",
		"cusip":"14040HBJ3" , 
		"coupon_rate": 4.200,
		"yield": 3/653, 
		"maturity": 2024,
		"sp_rating":"BBB",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	},
			{
		"name":"Discover Bank",
		"descrip":"DISCOVER BK NOTE 3.45000% 07/27/2026	",
		"cusip":"25466AAJ0" , 
		"coupon_rate": 3.450,
		"yield": 3.699, 
		"maturity": 2026,
		"sp_rating":"BBB",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Discover Financial Services",
		"descrip":"DISCOVER FINL SVCS MTN 4.00000% 11/15/2025",
		"cusip":"25472CAD1" , 
		"coupon_rate": 4,
		"yield": 3.994, 
		"maturity": 2025,
		"sp_rating":"BBB-",
		"moodys_rating":"N/A", 
		"available_lot":1000000
	},
			{
		"name":"Macy's Holding",
		"descrip":"MACYS RETAIL HLDGS INC",
		"cusip":"55616XAF4", 
		"coupon_rate": 3.875,
		"yield": 3.827, 
		"maturity": 2022,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"FORD Motors",
		"descrip":"FORD MOTOR CREDIT COLLC NOTE 3.66400% 09/08/2024	",
		"cusip":"345397WW9" , 
		"coupon_rate": 3.664,
		"yield": 3/653, 
		"maturity": 2024,
		"sp_rating":"BBB",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	},
			{
		"name":"Bank of America",
		"descrip":"BANK AMER CORP MTN 4.18300% 11/25/2027",
		"cusip":"06051GGC7" , 
		"coupon_rate": 4.183,
		"yield": 3.840, 
		"maturity": 2027,
		"sp_rating":"BBB",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Goldman Sachs Group",
		"descrip":"GOLDMAN SACHS GRP INC MTN BE 5.50000% 12/15/2028 FR",
		"cusip":"38141EK65" , 
		"coupon_rate": 5.500,
		"yield": 3.733, 
		"maturity": 2028,
		"sp_rating":"BBB+",
		"moodys_rating":"A3", 
		"available_lot":1000000
	},
			{
		"name":"Phillips Co.",
		"descrip":"PHILLIPS PETE CO NOTE CALL MAKE WHOLE 7.00000% 03/30/2029",
		"cusip":"718507BK1" , 
		"coupon_rate": 7.000,
		"yield": 4.155, 
		"maturity": 2029,
		"sp_rating":"A-",
		"moodys_rating":"BAA1", 
		"available_lot":1000000
	},
			{
		"name":"Jefferies Group",
		"descrip":"JEFFERIES GROUP LLC / JEFFERIE NOTE 4.85000% 01/15/2027 CALL MAKE WHOLE",
		"cusip":"47233JAG3" , 
		"coupon_rate": 4.850,
		"yield": 4.120, 
		"maturity": 2027,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Kroger Co.",
		"descrip":"KROGER CO NOTE CALL MAKE WHOLE",
		"cusip":"501044BT7" , 
		"coupon_rate": 7.7,
		"yield": 4.317, 
		"maturity": 2024,
		"sp_rating":"BBB",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	},
			{
		"name":"Oneok Inc",
		"descrip":"ONEOK INC NEW NOTE CALL MAKE WHOLE4.95000% 07/13/2047",
		"cusip":"682680AT0" , 
		"coupon_rate": 4.950,
		"yield": 5.017, 
		"maturity": 2047,
		"sp_rating":"BBB",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Pitney Bowes Inc.",
		"descrip":"PITNEY BOWES INC NOTE CALL MAKE WHOLE 4.62500% 03/15/2024",
		"cusip":"345397WW9" , 
		"coupon_rate": 4.625,
		"yield": 4.175, 
		"maturity": 2024,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Citi Group",
		"descrip":"CITIGROUP INC NOTE 4.30000% 11/20/2026",
		"cusip":"172967JC6" , 
		"coupon_rate": 4.300,
		"yield": 3.799, 
		"maturity": 2026,
		"sp_rating":"BBB",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"General Motors",
		"descrip":"GENERAL MTRS FINL COINC NOTE 3.95000% 04/13/2024 CALL MAKE WHOLE",
		"cusip":"37045XBW5" , 
		"coupon_rate": 3.950,
		"yield": 3.702, 
		"maturity": 2024,
		"sp_rating":"BBB",
		"moodys_rating":"BAA3", 
		"available_lot":1000000
	},
			{
		"name":"Time Warner Inc.",
		"descrip":"TIME WARNER INC NOTE CALL MAKE WHOLE3.80000% 02/15/2027",
		"cusip":"887317BB0" , 
		"coupon_rate": 3.8,
		"yield":3.833 , 
		"maturity": 2027,
		"sp_rating":"BBB",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	},
			{
		"name":"Morgan Stanley",
		"descrip":"MORGAN STANLEY 3.95000% 04/23/2027",
		"cusip":"61761JZN2" , 
		"coupon_rate": 3.950,
		"yield": 3.829, 
		"maturity": 2027,
		"sp_rating":"BBB-",
		"moodys_rating":"BAA2", 
		"available_lot":1000000
	}

].each do |corp|
	Corp.create(corp)
	end 