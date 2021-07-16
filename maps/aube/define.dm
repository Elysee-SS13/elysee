/datum/map/bearcat
	name = "Aube"
	full_name = "Base planétaire Aube"
	path = "aube"

	station_name  = "Base planétaire Aube"
	station_short = "\improper Aube"

	dock_name     = "Space Express HQ"
	boss_name     = "Space Express CEO"
	boss_short    = "\The CEO"
	company_name  = "Space Express Logistics Ltd."
	company_short = "SpEx"
	overmap_event_areas = 11

	default_law_type = /datum/ai_laws/corporate

	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_screens = list('icons/default_lobby.png')

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"
	use_overmap = 1
	num_exoplanets = 3
	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention : les capsules d'evacuation ont ete envoyees, en attente : %ETA%."

	emergency_shuttle_called_message = "Attention : la procedure d'evacuation est lancee, les capsules quitteront le navire dans %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention : procedure d'evacuation annulee, retour a l'activite normale."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2

/datum/map/bearcat/get_map_info()
	return "Vous etes a bord du <b>[station_name],</b> un vaisseau de la corportation <b>Space Express</b> mandate par le gouvernement solarien. \
	Votre mission principale est l'exploration de l'espace profond et la recolte de donnees scientifiques, mais la direction de Space Express vous demande egalement \
	d'exploiter les ressources des planetes inhabitees et de tater le terrain pour une future industrialisation."

/datum/map/bearcat/setup_map()
	..()
	SStrade.traders += new /datum/trader/xeno_shop
	SStrade.traders += new /datum/trader/medical
	SStrade.traders += new /datum/trader/mining
