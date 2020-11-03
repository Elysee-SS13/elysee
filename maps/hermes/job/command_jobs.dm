/datum/job/captain
	title = "Commanding Officer"
	supervisors = "the Sol Central Government and the Sol Code of Military Justice"
	minimal_player_age = 0
	economic_power = 15
	minimum_character_age = list(SPECIES_HUMAN = 40)
	ideal_character_age = 0
	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o6)

	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/captain/get_description_blurb()
	return "You are the Commanding Officer. You are the top dog. You are an experienced professional officer in control of an entire ship, and ultimately responsible for all that happens onboard. Your job is to make sure [GLOB.using_map.full_name] fulfils its space exploration mission. Delegate to your Executive Officer, your department heads, and your Senior Enlisted Advisor to effectively manage the ship, and listen to and trust their expertise."

/datum/job/captain/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
	..()


/datum/job/hop
	title = "Executive Officer"
	supervisors = "the Commanding Officer"
	department = "Command"
	department_flag = COM
	minimal_player_age = 0
	economic_power = 10
//	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 0
	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/command/XO
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/hermes/crew/command/XO/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30

	access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
					access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
					access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_tech_storage,
					access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
					access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
					access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
					access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
					access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar,
					access_solgov_crew,
					access_expedition_shuttle,
					access_explorer, access_pathfinder, access_pilot,access_petrov_analysis,
					access_rd)
	minimal_access = list(access_security, access_brig, access_armory, access_forensics_lockers, access_heads, access_medical, access_morgue, access_tox, access_tox_storage,
						access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage, access_change_ids,
						access_ai_upload, access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_tech_storage,
						access_atmospherics, access_bar, access_janitor, access_crematorium, access_kitchen, access_robotics, access_cargo, access_construction,
						access_chemistry, access_cargo_bot, access_hydroponics, access_manufacturing, access_library, access_lawyer, access_virology, access_cmo,
						access_qm, access_network, access_surgery, access_research, access_mining, access_mining_office, access_mailsorting, access_heads_vault,
						access_mining_station, access_xenobiology, access_ce, access_hop, access_hos, access_RC_announce, access_keycard_auth, access_tcomsat,
						access_gateway, access_sec_doors, access_psychiatrist, access_xenoarch, access_medical_equip, access_heads, access_hangar,access_petrov_analysis,
						access_solgov_crew,
						access_expedition_shuttle,
						access_explorer, access_pathfinder, access_pilot,
						access_rd)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/hop/get_description_blurb()
	return "You are the Executive Officer. You are an experienced senior officer, second in command of the ship, and are responsible for the smooth operation of the ship under your Commanding Officer. In his absence, you are expected to take his place. Your primary duty is directly managing department heads and all those outside a department heading. You are also responsible for the contractors and passengers aboard the ship. Consider the Senior Enlisted Advisor and Bridge Officers tools at your disposal."

/datum/job/bridgeofficer
	title = "Bridge Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Commanding Officer and Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 0
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 0
	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/hermes/crew/command/bridgeofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 20


	access = list(access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
			            access_bridge, access_janitor, access_kitchen, access_cargo, access_mailsorting, access_RC_announce, access_keycard_auth,
			            access_solgov_crew, access_external_airlocks,
			            access_eva, access_hangar, access_cent_creed, access_explorer, access_expedition_shuttle)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/bridgeofficer/get_description_blurb()
	return "You are a Bridge Officer. You are a very junior officer. You do not give orders of your own. You are subordinate to all of command. You handle matters on the bridge and report directly to the CO and XO. You take the Torch's helm and pilot the Aquila if needed. You monitor bridge computer programs and communications and report relevant information to command."

/datum/job/opslead

	title = "Operational Officer"
	head_position = 1
	department_flag = COM|CIV|SCI|ENG|MED
	skill_points = 30
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer"
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	minimal_player_age = 0
	economic_power = 10
	ideal_character_age = 0

	access = list(access_heads,
			            access_medical,access_engine,access_engine_equip, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_construction, access_morgue,access_petrov_analysis,
			            access_crematorium, access_mailsorting,
			            access_library, access_research, access_heads_vault,
			            access_RC_announce, access_keycard_auth, access_gateway)

	minimal_access = list( access_heads,
			            access_medical, access_engine,access_engine_equip, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_construction, access_morgue,
			            access_crematorium, access_mailsorting,
			            access_library, access_research, access_heads_vault,
			            access_RC_announce, access_keycard_auth, access_gateway)


	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/opslead
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)


	outfit_type = /decl/hierarchy/outfit/job/opslead


/decl/hierarchy/outfit/job/opslead
	name = OUTFIT_JOB_NAME("Operational Leader")
	uniform = /obj/item/clothing/under/rank/head_of_personnel_whimsy
	l_ear = /obj/item/device/radio/headset/heads/opslead
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/weapon/card/id/opslead)
	pda_type = /obj/item/modular_computer/pda/heads/hop
//	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)

/obj/item/weapon/card/id/opslead
	name = "identification card"
	desc = "A card which represents management."
	job_access_type = /datum/job/opslead
	extra_details = list("goldstripe")



