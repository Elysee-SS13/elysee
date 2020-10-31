/datum/map/hermes
	name = "Hermes"
	full_name = "Hermes"
	path = "hermes"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	accessible_z_levels = list("1"=1,"2"=1)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("hermes.ec.scg","hermes.fleet.mil","freemail.net","hermes,scg")

	evac_controller_type = /datum/evacuation_controller/lifepods

	station_name = "SEV Hermes"
	station_short = "Hermes"

	boss_name ="Expeditionary Command"
	boss_short = "Command"
	company_name = "Sol Central Government"
	company_short = "SolGov"

	lobby_tracks = list(/music_track/expanse)

	station_levels = list(1, 2)
	contact_levels = list(1, 2)
	player_levels = list(1, 2)

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"


	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

	emergency_shuttle_docked_message = "The emergency escape shuttle has docked."
	emergency_shuttle_leaving_dock = "The emergency escape shuttle has departed from %dock_name%."
	emergency_shuttle_called_message = "An emergency escape shuttle has been sent."
	emergency_shuttle_recall_message = "The emergency shuttle has been recalled"

	default_law_type = /datum/ai_laws/solgov
	use_overmap = 1
	num_exoplanets = 3
	away_site_budget = 5


/datum/map/hermes/get_map_info()
	return "Bienvenue a bord du Hermes. Vaisseau d'exploration scientifique de la flotte expéditionnaire du systeme solaire."


/datum/map/mini/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining