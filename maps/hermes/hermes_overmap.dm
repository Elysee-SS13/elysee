/obj/effect/overmap/visitable/ship/hermes
	name = "SEV Hermes"
	desc = "A bluespace-capable fregate bearing markings of the SCG Expeditionary Corps."
	fore_dir = NORTH
	vessel_mass = 33300
	burn_delay = 2 SECONDS
	base = TRUE


	initial_restricted_waypoints = list(
		"Charon" = list("nav_hangar_calypso"), 	//can't have random shuttles popping inside the ship
	)

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name = "Charon"
	desc = "A medium-sized long-range shuttle. It bears markings of the SCG Expeditionary Corps."
	shuttle = "Charon"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL


/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "Charon"
//	req_access = list(access_expedition_shuttle_helm)