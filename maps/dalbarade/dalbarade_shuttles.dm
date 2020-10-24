/obj/machinery/computer/shuttle_control/explore/dalbarade
	name = "exploration shuttle console"
	shuttle_tag = "Exploration Shuttle"

/datum/shuttle/autodock/overmap/exploration
	name = "Exploration Shuttle"
	shuttle_area = /area/ship/curie/shuttle/outgoing
	dock_target = "dalbarade_shuttle"
	current_location = "nav_dalbarade_stern_dock_shuttle"

/obj/effect/shuttle_landmark/docking_arm_stern
	name = "Dalbarade Stern-side Docking Arm"
	docking_controller = "dock_stern"

/obj/effect/shuttle_landmark/docking_arm_stern/shuttle
	landmark_tag = "nav_dalbarade_stern_dock_shuttle"

/obj/effect/shuttle_landmark/cargo_starboard
	name = "Dalbarade Cargo Starboard-side Dock"
	docking_controller = "cargo_dock_starboard"

/obj/effect/shuttle_landmark/cargo_starboard/shuttle
	landmark_tag = "nav_dalbarade_cargo_starboard_shuttle"
	special_dock_targets = list("Exploration Shuttle" = "dalbarade_shuttle_cargo")
