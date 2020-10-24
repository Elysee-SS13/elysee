#if !defined(using_map_DATUM)
	#include "dalbarade_areas.dm"
	#include "dalbarade_jobs.dm"
	#include "dalbarade_shuttles.dm"

	#include "dalbarade-1.dmm"
	#include "dalbarade-2.dmm"
	#include "dalbarade-3.dmm"

	#include "../../code/datums/music_tracks/businessend.dm"
	#include "../../code/datums/music_tracks/salutjohn.dm"

	#include "../away/empty.dmm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/lost_supply_base/lost_supply_base.dm"
	#include "../away/smugglers/smugglers.dm"
	#include "../away/magshield/magshield.dm"
	#include "../away/casino/casino.dm"
	#include "../away/yacht/yacht.dm"
	#include "../away/blueriver/blueriver.dm"
	#include "../away/slavers/slavers_base.dm"
	#include "../away/mobius_rift/mobius_rift.dm"
	#include "../away/icarus/icarus.dm"
	#include "../away/errant_pisces/errant_pisces.dm"
	#include "../away/lar_maria/lar_maria.dm"

	#define using_map_DATUM /datum/map/dalbarade

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Dalbarade

#endif

/turf/simulated/wall/r_wall/hull
	color = "#b2994b"

/obj/effect/overmap/visitable/ship/dalbarade
	name = "IV Dalbarade"
	start_x = 4
	start_y = 4
	base = 1
	vessel_mass = 85
	burn_delay = 10 SECONDS

	initial_generic_waypoints = list("nav_dalbarade_stern_dock_shuttle", "nav_dalbarade_cargo_starboard_shuttle")


/datum/shuttle/autodock/ferry/lift
	name = "Cargo Lift"
	shuttle_area = /area/ship/curie/shuttle/lift
	warmup_time = 3	//give those below some time to get out of the way
	waypoint_station = "nav_dalbarade_lift_bottom"
	waypoint_offsite = "nav_dalbarade_lift_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0

/obj/machinery/computer/shuttle_control/lift
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 0

/obj/effect/shuttle_landmark/lift/top
	name = "Top Deck"
	landmark_tag = "nav_dalbarade_lift_top"


/obj/effect/shuttle_landmark/lift/bottom
	name = "Lower Deck"
	landmark_tag = "nav_dalbarade_lift_bottom"
	base_area = /area/ship/curie/cargo
	base_turf = /turf/simulated/floor



/turf/simulated/wall //landlubbers go home
	name = "bulkhead"

/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/obj/machinery/door/airlock/autoname

/obj/machinery/door/airlock/autoname/New()
	var/area/A = get_area(src)
	name = A.name
	..()

/obj/machinery/door/airlock/autoname/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autoname/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/command
	req_access = list(access_heads)
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/engineering
	req_access = list(access_engine)
	stripe_color = COLOR_AMBER

//wild capitalism
/datum/computer_file/program/merchant
	required_access = null