/obj/effect/shuttle_landmark/lower_level
	name = "Lower Level Dock"
	landmark_tag = "nav_example_station"
	docking_controller = "lower_level_dock"

/obj/effect/shuttle_landmark/upper_level
	name = "Upper Level Dock"
	landmark_tag = "nav_example_offsite"
	special_dock_targets = list("Example" = "example_shuttle_port")
	docking_controller = "upper_level_dock"




/datum/shuttle/autodock/overmap/exploration_shuttle
	name = "Charon"
	move_time = 90
	shuttle_area = list(/area/exploration_shuttle/cockpit, /area/exploration_shuttle/atmos, /area/exploration_shuttle/power, /area/exploration_shuttle/crew, /area/exploration_shuttle/cargo, /area/exploration_shuttle/airlock)
	dock_target = "calypso_shuttle"
	current_location = "nav_hangar_calypso"
	landmark_transition = "nav_transit_calypso"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_hangar_calypso"
//	logging_access = access_expedition_shuttle_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/hermes

/turf/simulated/floor/shuttle_ceiling/hermes
	color = COLOR_HULL

/obj/effect/shuttle_landmark/hermes/hangar/exploration_shuttle
	name = "Charon Hangar"
	landmark_tag = "nav_hangar_calypso"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/transit/hermes/exploration_shuttle
	name = "In transit"
	landmark_tag = "nav_transit_calypso"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating