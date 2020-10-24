/datum/map/dalbarade
	allowed_jobs = list(
	/datum/job/captain,
	/datum/job/hop,
	/datum/job/pilot,
	/datum/job/chief_engineer,
	/datum/job/engineer,
	/datum/job/rd,
	/datum/job/doctor,
	/datum/job/mercenary,
	/datum/job/mining,
	/datum/job/cyborg,
	/datum/job/assistant)
	species_to_job_whitelist = list(
		/datum/species/nabber = list(/datum/job/assistant, /datum/job/mercenary, /datum/job/engineer),
	)
	species_to_job_blacklist = list(
		/datum/species/skrell = list(/datum/job/captain, /datum/job/hop, /datum/job/pilot, /datum/job/chief_engineer, /datum/job/engineer, /datum/job/mercenary, /datum/job/mining),
		/datum/species/machine = /datum/job/captain,
		/datum/species/diona = list(/datum/job/captain,/datum/job/hop, /datum/job/pilot, /datum/job/chief_engineer, /datum/job/engineer, /datum/job/rd, /datum/job/doctor, /datum/job/mercenary, /datum/job/mining, /datum/job/assistant),
		/datum/species/unathi = list(/datum/job/captain,/datum/job/hop, /datum/job/pilot, /datum/job/chief_engineer, /datum/job/engineer, /datum/job/rd, /datum/job/doctor, /datum/job/mercenary, /datum/job/mining, /datum/job/assistant),
	)

/datum/job/captain
	supervisors = "your conscience"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/captain
	skill_points = 30

/datum/job/captain/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(H.client)
		H.client.verbs += /client/proc/rename_ship
		H.client.verbs += /client/proc/rename_company

/client/proc/rename_ship()
	set name = "Rename Ship"
	set category = "Captain's Powers"

	var/ship = sanitize(input(src, "What is your ship called? Don't add the vessel prefix, the IV one will be attached automatically.", "Ship name", GLOB.using_map.station_short), MAX_NAME_LEN)
	if(!ship)
		return
	GLOB.using_map.station_short = ship
	GLOB.using_map.station_name = "IV [ship]"
	var/obj/effect/overmap/visitable/ship/dalbarade/B = locate() in world
	if(B)
		B.SetName(GLOB.using_map.station_name)
	command_announcement.Announce("Attention all hands on [GLOB.using_map.station_name]! Thank you for your attention.", "Ship re-christened")
	verbs -= /client/proc/rename_ship

/client/proc/rename_company()
	set name = "Rename Group"
	set category = "Captain's Powers"
	var/company = sanitize(input(src, "What should your group be called?", "Group name", GLOB.using_map.company_name), MAX_NAME_LEN)
	if(!company)
		return
	var/company_s = sanitize(input(src, "What's the short name for it?", "Group name", GLOB.using_map.company_short), MAX_NAME_LEN)
	if(company != GLOB.using_map.company_name)
		if (company)
			GLOB.using_map.company_name = company
		if(company_s)
			GLOB.using_map.company_short = company_s
		command_announcement.Announce("Congratulations to all members of [capitalize(GLOB.using_map.company_name)] on the new name. Their renaming has been registered by all governments and their military.", "Group name change acknowledged")
	verbs -= /client/proc/rename_company

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Captain"
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/chief_engineer
	skill_points = 30

/datum/job/doctor
	title = "Surgeon"
	supervisors = "the Captain and your idea of Hippocratic Oath"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/doc
	total_positions = 1
	spawn_positions = 1
	hud_icon = "hudmedicaldoctor"
	skill_points = 28

/datum/job/hop
	title = "First Officer"
	supervisors = "the Captain and your sense of morality"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/mate
	hud_icon = "hudheadofpersonnel"
	skill_points = 28

/datum/job/rd
	title = "Science Officer"
	supervisors = "the Captain and your curiosity"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/rd
	hud_icon = "hudresearchdirector"
	skill_points = 28

/datum/job/pilot
	title = "Pilot"
	alt_titles = list(
		"Shuttle Pilot")
	supervisors = "the Captain"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#633d63"
	minimal_player_age = 5
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/pilot
	hud_icon = "hudcargotechnician"
	access = list(access_heads)
	minimal_access = list(access_heads)
	skill_points = 22

/datum/job/mercenary
	title = "Mercenary"
	alt_titles = list(
		"Bodyguard")
	supervisors = "the Captain"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#b31b1b"
	minimal_player_age = 5
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/mercenary
	hud_icon = "hudcargotechnician"
	access = list(access_armory)
	skill_points = 22

/datum/job/assistant
	title = "Deck Hand"
	supervisors = "literally everyone, you bottom feeder"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/hand
	alt_titles = list(
		"Cook" = /decl/hierarchy/outfit/job/dalbarade/hand/cook,
		"Cargo Hand",
		"Passenger")
	hud_icon = "hudcargotechnician"

/datum/job/engineer
	title = "Ship Engineer"
	supervisors = "Chief Engineer"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/hand/engine
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudengineer"
	skill_points = 22

/datum/job/mining
	title = "Prospector"
	supervisors = "the Captain"
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Miner")
	hud_icon = "hudminer"
	minimal_player_age = 5
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/miner
	skill_points = 22

/datum/job/cyborg
	supervisors = "your laws and the Captain"
	total_positions = 1
	spawn_positions = 1


// OUTFITS
#define dalbarade_OUTFIT_JOB_NAME(job_name) ("dalbarade - Job - " + job_name)

/decl/hierarchy/outfit/job/dalbarade/
	hierarchy_type = /decl/hierarchy/outfit/job/dalbarade
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio
	l_ear = null
	r_ear = null
	shoes = /obj/item/clothing/shoes/magboots
	uniform = /obj/item/clothing/under/color/grey

/decl/hierarchy/outfit/job/dalbarade/captain
	name = dalbarade_OUTFIT_JOB_NAME("Captain")
	pda_type = /obj/item/modular_computer/pda/captain
	id_types = list(/obj/item/weapon/card/id/gold)

/decl/hierarchy/outfit/job/dalbarade/chief_engineer
	name = dalbarade_OUTFIT_JOB_NAME("Chief Engineer")
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_hand = /obj/item/weapon/wrench
	belt = /obj/item/weapon/storage/belt/utility/full
	id_types = list(/obj/item/weapon/card/id/engineering/head)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/dalbarade/doc
	name = dalbarade_OUTFIT_JOB_NAME("Ship's Doc")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/dalbarade/mate
	name = dalbarade_OUTFIT_JOB_NAME("First Mate")
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
//	l_hand = /obj/item/weapon/clipboard
	id_types = list(/obj/item/weapon/card/id/silver)

/decl/hierarchy/outfit/job/dalbarade/rd
	name = OUTFIT_JOB_NAME("Research Director")
//	l_hand = /obj/item/weapon/clipboard
	id_types = list(/obj/item/weapon/card/id/science/head)
	pda_type = /obj/item/modular_computer/pda/heads/rd
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science

/decl/hierarchy/outfit/job/dalbarade/hand
	name = dalbarade_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/dalbarade/hand/cook
	name = dalbarade_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef/classic

/decl/hierarchy/outfit/job/dalbarade/pilot
	name = dalbarade_OUTFIT_JOB_NAME("Pilot")
	suit = /obj/item/clothing/suit/storage/toggle/brown_jacket
	pda_type = /obj/item/modular_computer/pda/cargo
	id_types = list(/obj/item/weapon/card/id/silver)

/decl/hierarchy/outfit/job/dalbarade/mercenary
	name = dalbarade_OUTFIT_JOB_NAME("Mercenary")
	gloves = /obj/item/clothing/gloves/thick

/decl/hierarchy/outfit/job/dalbarade/hand/engine
	name = dalbarade_OUTFIT_JOB_NAME("Junior Engineer")
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	id_types = list(/obj/item/weapon/card/id/engineering)
	belt = /obj/item/weapon/storage/belt/utility/full

/decl/hierarchy/outfit/job/dalbarade/miner
	name = dalbarade_OUTFIT_JOB_NAME("Prospector")
	id_types  = list(/obj/item/weapon/card/id/cargo/mining)
	pda_type = /obj/item/modular_computer/pda/science
	backpack_contents = list(/obj/item/weapon/crowbar = 1, /obj/item/weapon/storage/ore = 1)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL