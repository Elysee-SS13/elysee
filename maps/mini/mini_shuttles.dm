
//Cargo Shuttle
/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"


/datum/shuttle/autodock/ferry/emergency/emergency_shuttle
	name = "Emergency Shuttle"
	location = 1
	shuttle_area= /area/shuttle/emergency/centcom
	waypoint_station = "emergency_shuttle_out"
	waypoint_offsite = "emergency_shuttle_start"
	landmark_transition  = "emergency_shuttle_transition"


/obj/effect/shuttle_landmark/emergency/start
	name = "Centcom"
	landmark_tag = "emergency_shuttle_start"


/obj/effect/shuttle_landmark/emergency/out
	name = "Station"
	landmark_tag = "emergency_shuttle_out"


/obj/effect/shuttle_landmark/emergency/transit
	name = "Transit"
	landmark_tag = "emergency_shuttle_transition"





//landmark_mini


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

