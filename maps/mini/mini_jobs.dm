/datum/map/mini
	allowed_jobs = list(
	// Command
		/datum/job/captain,
		/datum/job/opslead,
		/datum/job/hop,


	// Security
		/datum/job/officer,
		/datum/job/detective,

	// Engineering
		/datum/job/engineer,

	// Medical
		/datum/job/doctor,

	// Science
		/datum/job/scientist,

	// Supply
		/datum/job/cargo_tech,

	// Service
		/datum/job/chef,
		/datum/job/hydro,
		/datum/job/janitor,
		/datum/job/assistant,

	// Silicon
		/datum/job/ai,
		/datum/job/cyborg
	)


/datum/job
	required_language = LANGUAGE_HUMAN_EURO
	skill_points = 24

/* COMMAND */

/datum/job/captain
	skill_points = 30

// HOP
/datum/job/hop
	skill_points = 30

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers, access_heads,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway,access_hos)

	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers, access_heads,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway,access_hos)



/datum/job/opslead

	title = "Operational Leader"
	head_position = 1
	department_flag = COM|CIV|SCI|ENG|MED
	skill_points = 30
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	minimal_player_age = 14
	economic_power = 10
	ideal_character_age = 50

	access = list(access_heads,
			            access_medical,access_engine,access_engine_equip, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_construction, access_morgue,
			            access_crematorium, access_mailsorting,
			            access_library, access_research, access_heads_vault,
			            access_RC_announce, access_keycard_auth, access_gateway)

	minimal_access = list( access_heads,
			            access_medical, access_engine,access_engine_equip, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_construction, access_morgue,
			            access_crematorium, access_mailsorting,
			            access_library, access_research, access_heads_vault,
			            access_RC_announce, access_keycard_auth, access_gateway)

	outfit_type = /decl/hierarchy/outfit/job/opslead


/decl/hierarchy/outfit/job/opslead
	name = OUTFIT_JOB_NAME("Operational Leader")
	uniform = /obj/item/clothing/under/rank/head_of_personnel_whimsy
	l_ear = /obj/item/device/radio/headset/heads/hop
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/weapon/card/id/opslead)
	pda_type = /obj/item/modular_computer/pda/heads/hop
//	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)

/obj/item/weapon/card/id/opslead
	name = "identification card"
	desc = "A card which represents management."
	job_access_type = /datum/job/opslead
	extra_details = list("goldstripe")




/* SECURITY */



/datum/job/officer
	total_positions = 2
	spawn_positions = 2

	max_skill = list(   SKILL_COMBAT     = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

	supervisors = "the Head of Personnel"

/datum/job/detective
	total_positions = 1
	spawn_positions = 1

	supervisors = "the Head of Personnel"

	max_skill = list(   SKILL_COMBAT     = SKILL_MAX,
						SKILL_FORENSICS = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX)

/* ENGINEERING */
/datum/job/engineer
	total_positions = 3
	spawn_positions = 3

	max_skill = list(   SKILL_CONSTRUCTION     = SKILL_MAX,
	                    SKILL_ELECTRICAL     = SKILL_MAX,
	                    SKILL_ENGINES   = SKILL_MAX,
	                    SKILL_ATMOS = SKILL_MAX)

	supervisors = "the OpsLead"

/* MEDICAL */

/datum/job/doctor
	title = "Doctor"
	supervisors = "the Captain and your idea of Hippocratic Oath"
	alt_titles = list(
		"Surgeon","Chemist")
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudmedicaldoctor"

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	supervisors = "the OpsLead"


/* SCIENCE */
/datum/job/scientist
	total_positions = 3
	spawn_positions = 3

	supervisors = "the OpsLead"

	max_skill = list(   SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)


/* SUPPLY */
/datum/job/cargo_tech
	supervisors = "the head of personnel"
	total_positions = 3
	spawn_positions = 3
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	supervisors = "the head of personnel"


/* SERVICE/CIVILIAN */
// Bartender
// Janitor
/datum/job/chef
	total_positions = 1
	spawn_positions = 1

/datum/job/hydro
	total_positions = 1
	spawn_positions = 1

/* SILICON */
// AI defaults to 1
