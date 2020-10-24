/datum/map/dalbarade
	name = "Dalbarade"
	full_name = "IV Dalbarade"
	path = "dalbarade"

	station_name  = "IV Dalbarade"
	station_short = "Dalbarade"

	dock_name     = "Omega-682 Dockyard"
	boss_name     = "Civil Overwatch"
	boss_short    = "Overwatch"
	company_name  = "Star Company"
	company_short = "StarC"

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3)
	overmap_size = 20

	overmap_event_areas = 18

	default_law_type = /datum/ai_laws/corporate
	usable_email_tlds = list("freemail.nt", "coolmail.com", "masscomm.int")
	map_admin_faxes = list("Civil Overwatch C58 Office")

	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_tracks = list(/music_track/absconditus)

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	use_overmap = 1
	num_exoplanets = 2
	planet_size = list(129,129)

	away_site_budget = 2

	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2


/datum/map/dalbarade/map_info(victim)
	to_chat(victim, "<h2>Current map information</h2>")
	to_chat(victim, "<b>|EN|</b> You're aboard the <b>[station_name],</b> an independent vessel, currently in <b>abandonned sector Corona</b> (coordinates C588555-5) notorious for its dangers, artifacts and mysteries. No major corporation or government has laid claim on this sector, so no official laws apply here.")
	to_chat(victim, "<b>|FR|</b> Vous êtes à bord du <b>[station_name],</b> un vaisseau indépendant, actuellement situé dans le <b>secteur abandonné Corona</b> (coordonnées 588555-5) connu pour ses dangers, artefacts et mystères. Aucune corporation ni aucun gouvernement n'a réclamé ce secteur, donc aucune loi ne s'applique ici.")

/datum/map/dalbarade/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining
	SStrade.traders += new /datum/trader/ship/electronics

