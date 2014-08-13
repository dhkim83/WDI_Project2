# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Hospital = Hospital.create ([

	#Arleta/Pacoima West/Panorama City/San Fernando West
	{name:"El Proyecto Del Barrio, Inc", practice_field: "primary_care", location: "Arleta", benefit: "state" },
	{name:"Mission City Community Network Pacoima Middle School Based Clinic", practice_field:"primary_care" , location: "Pacoima", benefit: "federal"},
	{name:"Northeast Valley Health Corporation", practice_field: "registered_nurse" , location: "San Fernando" , benefit: "state"},

	#Bell Northeast/Bell Gardens/Commerce/Maywood/Montebello South
	{name:"Bell Gardens Community Health Center", practice_field: "registered_nurse", location:"Bell", benefit: "state"},
	{name: "Bell Gardens Family Medical Center", practice_field:"primary_care" , location:"Bell", benefit: "federal" },

	#Bell Southwest/Cudahy/Vernon
	{name:"Altamed Medical Group, Bell", practice_field: "primary_care" , location: "Bell", benefit: "state"},
	{name:"Northeast Community Clinic-Bell", practice_field: "registered_nurse", location: "Bell", benefit:"state"},


#Castaic/Val Verde

	{name:"Samuel Dixon Family Health Center, Inc.", practice_field:"primary_care" , location:"Val Verde", benefit:"state"},

#El Monte/Five Points

	{name:"Altamed Medical Group", practice_field: "primary_care" , location: "El Monte" , benefit: "federal"},
	{name:"Altamed Senior Buenacare El Monte", practice_field: "", location:"El Monte", benefit: "federal" },
	{name:"Cleaver Family Wellness Clinic", practice_field:"primary_care" , location:"El Monte", benefit: "federal"},
	{name:"Planned Parenthood Los Angeles-El Monte Center", practice_field: "primary_care" , location: "El Monte" , benefit: "federal"},
	{name:"Southern California Medical Center, Inc.", practice_field: "registered_nurse" , location: "El Monte" , benefit: "state"},




#El Sereno North/Highland Park/Montecito Heights/Monterey Hills

	{name:"Arroyo Vista Family Health Center", practice_field: "primary_care", location:"Los Angeles", benefit: "state" },
	{name:"Comprehensive Community Health Ctr., Inc", practice_field:"primary_care" , location:"Los Angeles", benefit: "federal"},
	{name:"Northeast Community Clinic", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state" },
	{name:"Northeast Community Clinic Women'S Health Center", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state" },
	{name:"Northeast Community Clinic-Mobil Medical Van", practice_field: "registered_nurse", location:"Los Angeles", benefit:"state" },
	{name:"St. John'S Well Child And Fam Center-Lincoln.", practice_field:"registered_nurse" , location:"Los Angeles", benefit: "federal" },


	#Exposition Park/Leimert Park

	{name:"Central Neighborhood Health Foundation", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state" },
	{name:"Planned Parenthood Of Los Angeles S. Mark Taper Foundation Center", practice_field: "primary_care" , location: "Los Angeles" , benefit:"federal" },
	{name:"S. Mark Taper Foundation Health Clinic", practice_field: "registered_nurse" , location: "Los Angeles" , benefit: "state"},
	{name:"St. John'S Well Child And Family Center", practice_field: "registered_nurse", location:"Los Angeles", benefit:"federal" },
	{name:"T.H.E. Clinic At Ruth Temple Health Center", practice_field:"registered_nurse" , location:"Los Angeles", benefit:"federal" },
	{name:"USC-University Park Health Center", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state" },

#Firestone/Florence South

	{name:"Huntington Park Family Health Center", practice_field: "primary_care" , location: "Huntington Park" , benefit:"state" },
	{name:"Planned Parenthood Los Angeles-Dorothy Hecht Health Center", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state"},


#Hollywood South Central/Inner Sunset
	{name:"Ahf Healthcare Center - Hollywood", practice_field: "registered_nurse" , location: "Los Angeles" , benefit: "federal"},
	{name:"Altamed Medical Group At Childrens Hosp. L.A.", practice_field: "primary_care", location:"Los Angeles", benefit: "federal"},
	{name:"Jeffery Goodman Special Care Clinic", practice_field:"registered_nurse" , location:"Los Angeles", benefit:"federal" },
	{name:"Jwch Medical Clinic", practice_field: "primary_care" , location: "Los Angeles" , benefit: "state"},
	{name:"Mission City Community Network-Hollywood", practice_field: "registered_nurse" , location: "Los Angeles" , benefit:"state" },
	{name:"Planned Parenthood Los Angeles- Hollywood Center", practice_field: "primary_care", location:"Los Angeles", benefit: "federal"},
	{name:"Queenscare Family Clinics - Mobile Dental V", practice_field:"primary_care" , location:"Los Angeles", benefit: "state"},
	{name:"Queenscare Family Clinic-Hollywood", practice_field: "primary_care" , location: "Los Angeles" , benefit:"state" },
	{name:"St. Anthony Medical Center/Hollywood Clinic", practice_field: "registered_nurse" , location: "Hollywood" , benefit:"state" },
	{name:"The Saban Free Clinic - Hollywood Wilshire Health Center", practice_field: "registered_nurse", location:"Los Angeles", benefit:"federal"},
	
	#Long Beach West Central
	{name:"The Children's Clinic Family Health Center at Cesar Chavez Elementary School", practice_field:"primary_care" , location:"Long Beach", benefit:"federal" },
	{name:"Vasek Polak Children'S Clinic Fam. Hlth Ctr", practice_field: "primary_care" , location: "Long Beach" , benefit:"state" },



	#Mar Vista/Ocean Park/Santa Monica South/Venice
	{name:"Wise And Healthy Aging", practice_field: "registered_nurse"  , location:"Santa Monica", benefit: "state"},
	{name:"Westside Family Health Center", practice_field: "registered_nurse" , location:"Santa Monica", benefit:"federal" },
	{name:"Venice Medical And Mental Health Services", practice_field: "primary_care" , location:"Venice", benefit: "state
		" },
	{name:"Venice Family Clinic - Robert Levine Family Health Center", practice_field: "primary_care", location:"Venice" , benefit: "federal"},
	{name:"Venice Family Clinic - Colen Family Health Center", practice_field: "primary_care" , location:"Culver City" , benefit:"federal" },
	{name:"Venice Family Clinic", practice_field: "primary_care" , location:"Venice" , benefit:"state" },
	{name:"Planned Parenthood Los Angeles - Santa Monica", practice_field: "registered_nurse", location:"Santa Monica" , benefit:"federal" },


	#North Hollywood Central and North
	{name:"All Care One Community Health Center", practice_field: "primary_care" , location:"North Hollywood" , benefit: "state"},
	{name:"Comprehensive Community Health Center, Inc", practice_field: "primary_care" , location: "North Hollywood", benefit:"federal" },
	{name:"Sun Valley Health Center", practice_field: "primary_care" , location:"Sun Valley" , benefit:"federal" },
	{name:"Valley Community Clinic", practice_field: "registered_nurse" , location:"North Hollywood" , benefit: "state"},
	
	#Pico Rivera/Santa Fe Springs Northwest
	{name:"Altamed Medical Group", practice_field: "primary_care" , location:"Pico Rivera" , benefit: "state"},
	{name:"Eldorado Community Service Center", practice_field: "registered_nurse" , location:"Pico Rivera" , benefit: "federal"},
	{name:"Southern California Medical Center, Inc.", practice_field: "registered_nurse" , location:"Pico Rivera" , benefit: "state"},
	{name:"Tavarua Medical And Mental Services", practice_field: "registered_nurse" , location:"Pico Rivera" , benefit:"state" },

	#Pomona East and South
	{name:"East Valley Community Health Center Inc", practice_field: "primary_care" , location:"Pomona" , benefit:"federal" },
	{name:"Mission City Community Network, Inc - Pomona", practice_field: "registered_nurse" , location:"Pomona" , benefit: "state"},
	{name:"Planned Parenthood Los Angeles Pomona Center", practice_field: "registered_nurse" , location:"pomona" , benefit: "state"},
	{name:"Pomona Community Health Center", practice_field: "primary_care" , location: "Pomona", benefit:"state" },

	#South Central Northeast
	{name:"Baart Southeast Clinic", practice_field: "primary_care" , location:"Los Angeles" , benefit:"state" },
	{name:"Clinica Para Las Mujeres", practice_field: "registered_nurse" , location: "Los Angeles", benefit:"state" },
	{name:"Dr Kenneth Williams Community Health Center", practice_field: "primary_care" , location:"Los Angeles" , benefit: "federal"},
	{name:"Florence Medical Clinic", practice_field: "primary_care" , location: "Los Angeles", benefit:"federal" },
	{name: "South Central Family Health Center", practice_field: "registered_nurse", location: "Los Angeles", benefit: "state"},
	{name: "St. John's Well Child and Family Center - Dr. Louis", practice_field: "registered_nurse", location: "Los Angeles", benefit:"state" },
	{name: "Umma Community Clinic", practice_field: "registered_nurse", location: "Los Angeles", benefit:"state" },

	#South Central Northwest
	{name: "St. John'S Well Child And Family Center", practice_field: "primary_care", location: "Los Angeles", benefit: "state"},

	#South Central Southwest
	{name:"St. Anthony Medical Center/Imperial Clinic", practice_field: "registered_nurse" , location:"Los Angeles", benefit: "federal"},



	])