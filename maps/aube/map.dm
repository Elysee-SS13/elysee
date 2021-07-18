#if !defined(using_map_DATUM)
	#include "unit_testing.dm"

	#include "music/bearcat_music.dm"

	#include "areas.dm"
	#include "jobs.dm"
	#include "lobby.dm"
	#include "shuttles.dm"
	#include "overmap.dm"
	#include "overrides.dm"
	#include "loadouts.dm"
	#include "aube-new-1.dmm"
	#include "aube-new-2.dmm"

	#define using_map_DATUM /datum/map/bearcat

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Bearcat

#endif


/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/turf/simulated/wall/r_wall/hull
	color = COLOR_DARK_BROWN

/obj/machinery/door/airlock/hatch/autoname

/obj/machinery/door/airlock/hatch/autoname/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("hatch ([A.name])")

/obj/machinery/door/airlock/hatch/autoname/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/engineering
	stripe_color = COLOR_AMBER


//wild capitalism
/datum/computer_file/program/merchant
	required_access = null
