//Mining Shuttle

/datum/shuttle/autodock/ferry/mining_shuttle
	name = "Mining Shuttle"
	warmup_time = 1
	shuttle_area = /area/shuttle/mining/station
	waypoint_offsite = "nav_orb_7"
	waypoint_station ="nav_mining_station"
	landmark_transition = "nav_mining_transition"
	dock_target = "docker_mining_controller"


//Cargo Shuttle
/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"


//Emergency Shuttle
/datum/shuttle/autodock/ferry/emergency/emergency_shuttle
	name = "Emergency Shuttle"
	location = 1
	shuttle_area= /area/shuttle/emergency/centcom
	waypoint_station = "emergency_shuttle_out"
	waypoint_offsite = "emergency_shuttle_start"
	landmark_transition  = "emergency_shuttle_transition"
	dock_target = "emergency_shuttle_controller"

//landmark emergency

/obj/effect/shuttle_landmark/emergency/start
	name = "Centcom"
	landmark_tag = "emergency_shuttle_start"
	docking_controller = "emergency_shuttle_berth"


/obj/effect/shuttle_landmark/emergency/out
	name = "Station"
	landmark_tag = "emergency_shuttle_out"
	docking_controller = "station_emergency_shuttle_bay"


/obj/effect/shuttle_landmark/emergency/transit
	name = "Transit"
	landmark_tag = "emergency_shuttle_transition"


//landmark cargo


/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

//landmark mining

/obj/effect/shuttle_landmark/mining/station
	name = "Mining Bay"
	landmark_tag = "nav_mining_station"
	docking_controller = "mining_shuttle_controller"

/obj/effect/shuttle_landmark/mining/transit
	name = "Transit"
	landmark_tag = "nav_mining_transition"