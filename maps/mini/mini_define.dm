/datum/map/mini
	name = "MiniStation"
	full_name = "MiniStation"
	path = "mini"

	station_name  = "NSS Novis"
	station_short = "Novis"

	boss_name     = "Captain"
	boss_short    = "Captain"
	company_name  = "NanoTrasen"
	company_short = "NT"
	overmap_event_areas = 11

	default_law_type = /datum/ai_laws/corporate

	evac_controller_type = /datum/evacuation_controller/lifepods

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

/datum/map/bearcat/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining