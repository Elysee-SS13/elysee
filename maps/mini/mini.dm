#if !defined(using_map_DATUM)
	#include "mini_areas.dm"
	#include "mini_shuttles.dm"
	#include "mini_unit_testing.dm"

	#include "mini.dmm"

	#define using_map_DATUM /datum/map/mini

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring MiniStation

#endif
