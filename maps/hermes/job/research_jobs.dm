/datum/job/scientist
	title = "Scientist"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Operational Officer"
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 45
	minimal_player_age = 0
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist"
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_DEVICES     = SKILL_BASIC,
	                    SKILL_SCIENCE     = SKILL_ADEPT)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/hermes/crew/research/scientist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/hermes/passenger/research/scientist,
		/datum/mil_rank/sol/scientist = /decl/hierarchy/outfit/job/hermes/passenger/research/scientist/solgov
	)

	access = list(access_tox, access_tox_storage, access_research,access_petrov_analysis,
						access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_solgov_crew, access_expedition_shuttle, access_hangar)
	minimal_access = list()
	skill_points = 20