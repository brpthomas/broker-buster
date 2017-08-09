# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
		{
		"name":"Apple",
		"descrip":"APPLE INC" ,
		"cusip":"037833BT6", 
		"coupon":5.6,
		"yield":3.5, 
		"maturity": 2022,
		"sprating":"AA+",
		"moodyrating":"Aa1", 
		"availablelot":1000000


	}, 
		{
		"name":"Microsoft",
		"descrip":"MICROSOFT CORP",
		"cusip":"594918AQ7" , 
		"coupon": 2.125,
		"yield": 2.152, 
		"maturity": 2022,
		"sprating":"AAA",
		"moodyrating":"Aaa", 
		"availablelot":1000000
	}, 
			{
		"name":"Nike",
		"descrip":"Nike Inc",
		"cusip":"654106AC7" , 
		"coupon": 2.25,
		"yield": 2.291, 
		"maturity": 2023,
		"sprating":"AA-",
		"moodyrating":"A1", 
		"availablelot":1000000
	}, 
			{
		"name":"Goldman Sachs",
		"descrip":"GOLDMAN SACHS GRP INC MTN BE 3.85000% 07/08/2024 FR",
		"cusip":"38141EC23" , 
		"coupon": 3.850,
		"yield": 3.181, 
		"maturity": 2024,
		"sprating":"BBB+",
		"moodyrating":"A3", 
		"availablelot":1000000
	}, 
			{
		"name":"Target",
		"descrip":"TARGET CORP BOND 9.70000% 06/15/2021",
		"cusip":"239753BG0", 
		"coupon": 9.70,
		"yield": 1.836, 
		"maturity": 2021,
		"sprating":"A2",
		"moodyrating":"A", 
		"availablelot":1000000
	}, 
			{
		"name":"Disney",
		"descrip":"DISNEY WALT CO MTNS BE 7.00000% 03/01/2032",
		"cusip":"" , 
		"coupon": 7,
		"yield": 3.269, 
		"maturity": 2032,
		"sprating":"A+",
		"moodyrating":"A2", 
		"availablelot":1000000
	}, 
			{
		"name":"General Electric",
		"descrip":"GENERAL ELECTRIC CO NOTE CALL MAKE WHOLE 4.12500% 10/09/2042",
		"cusip":"369604BF9", 
		"coupon": 4.125,
		"yield": 3.854, 
		"maturity": 2042,
		"sprating":"A1",
		"moodyrating":"AA-", 
		"availablelot":1000000
	}, 
			{
		"name":"Intel Corp",
		"descrip":"INTEL CORP NOTE CALL MAKE WHOLE 4.00000% 12/15/2032",
		"cusip":"458140AN0", 
		"coupon": 4.00,
		"yield": 3.276, 
		"maturity": 2032,
		"sprating":"A+",
		"moodyrating":"A1", 
		"availablelot":1000000
	}, 
			{
		"name":"McDonalds",
		"descrip":"MCDONALDS CORP MED TERM NT BE 6.30000% 10/15/2037CALL MAKE WHOLE ISIN #US58013MEC47",
		"cusip":"594918AQ7" , 
		"coupon": 6.300,
		"yield": 3.993, 
		"maturity": 2037,
		"sprating":"BBB+",
		"moodyrating":"Baa1", 
		"availablelot":1000000
	}, 
			{
		"name":"Visa",
		"descrip":"VISA INC NOTE CALL MAKE WHOLE 4.15000% 12/14/2035",
		"cusip":"92826CAE2", 
		"coupon": 4.150,
		"yield": 3.488, 
		"maturity": 2035,
		"sprating":"A+",
		"moodyrating":"A1", 
		"availablelot":1000000
	}, 
			{
		"name":"JP Morgan",
		"descrip":"JP MORGAN CHASE BANKMTN 1.65000% 09/23/2019",
		"cusip":"" , 
		"coupon": 1.650,
		"yield": 1.69, 
		"maturity": 2019,
		"sprating":"A+",
		"moodyrating":"AA3", 
		"availablelot":1000000
	}



].each do |corp|
	Corp.create(corp)
end 