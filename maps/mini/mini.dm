#if !defined(using_map_DATUM)
	#include "mini_areas.dm"
	#include "mini_shuttles.dm"
	#include "mini_unit_testing.dm"
	#include "mini_presets.dm"

	#include "mini.dmm"
	#include "z1_admin.dmm"
	#include "z2_transit.dmm"


	#include "../away/empty.dmm"
	#include "../away/ascent/ascent.dm"
	#include "../away/mining/mining.dm"
	#include "../away/derelict/derelict.dm"
	#include "../away/bearcat/bearcat.dm"
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
	#include "../away/unishi/unishi.dm"
	#include "../away/voxship/voxship.dm"
	#include "../away/skrellscoutship/skrellscoutship.dm"
	#include "../away/meatstation/meatstation.dm"

	#define using_map_DATUM /datum/map/mini

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring MiniStation

#endif
