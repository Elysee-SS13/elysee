/datum/job/doctor
	title = "Physician"
	department = "Medical"
	department_flag = MED
	//minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 29)
	ideal_character_age = 45
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Operational Officer"
	selection_color = "#013d3b"
	economic_power = 10
	alt_titles = list(
		"Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/medical/senior
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/hermes/crew/medical/senior/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/hermes/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_EXPERT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC,
						SKILL_DEVICES     = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20

	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed, access_robotics,access_RC_announce)

	minimal_access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed, access_robotics,access_RC_announce)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)






/datum/job/psychiatrist
	title = "Counselor"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_power = 5
	minimum_character_age = list(SPECIES_HUMAN = 24)
	minimal_player_age = 0
	supervisors = "the Operational Officer"
	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/medical/counselor
	alt_titles = list(
		"Psychiatrist",
		"Psionic Counselor" = /decl/hierarchy/outfit/job/hermes/crew/medical/counselor/mentalist,
		"Mentalist" = /decl/hierarchy/outfit/job/hermes/crew/medical/counselor/mentalist

	)

	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/hermes/crew/medical/counselor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/hermes/crew/medical/counselor/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/ec/o1)
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_BASIC,
		SKILL_MEDICAL     = SKILL_BASIC
	)
	max_skill = list(
		SKILL_MEDICAL     = SKILL_MAX
	)
	access = list(access_medical, access_psychiatrist, access_solgov_crew, access_medical_equip)
	minimal_access = list()
	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)
	give_psionic_implant_on_join = FALSE

/datum/job/psychiatrist/equip(var/mob/living/carbon/human/H)
	if(H.mind.role_alt_title == "Psionic Counselor")
		psi_faculties = list("[PSI_REDACTION]" = PSI_RANK_OPERANT)
	if(H.mind.role_alt_title == "Mentalist")
		psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()


/datum/job/psychiatrist/get_description_blurb()
		return "You are the Counselor. Your main responsibility is the mental health and wellbeing of the crew. You are subordinate to the Chief Medical Officer."
