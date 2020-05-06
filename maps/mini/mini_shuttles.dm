
//Cargo Shuttle
/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"




//landmark


//Pods
#define TORCH_ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod##NUMBER/station; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_internim"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_internim"; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
}

TORCH_ESCAPE_POD(6)
TORCH_ESCAPE_POD(7)
TORCH_ESCAPE_POD(8)
TORCH_ESCAPE_POD(9)
TORCH_ESCAPE_POD(10)
TORCH_ESCAPE_POD(11)
TORCH_ESCAPE_POD(12)
TORCH_ESCAPE_POD(13)
TORCH_ESCAPE_POD(14)
TORCH_ESCAPE_POD(15)
TORCH_ESCAPE_POD(16)
TORCH_ESCAPE_POD(17)


/obj/effect/shuttle_landmark/transit/torch/exploration_shuttle
	name = "In transit"
	landmark_tag = "nav_transit_calypso"

/obj/effect/shuttle_landmark/transit/torch/guppy
	name = "In transit"
	landmark_tag = "nav_transit_guppy"

/obj/effect/shuttle_landmark/transit/torch/aquila
	name = "In transit"
	landmark_tag = "nav_transit_aquila"

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

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"