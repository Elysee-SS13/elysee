/turf/space/transit/south // moving to the south
	pushdirection = NORTH  // south because the space tile is scrolling north
	var/static/list/phase_shift_by_x

/turf/space/transit/south/Initialize()
	. = ..()
	if(!phase_shift_by_x)
		phase_shift_by_x = get_cross_shift_list(15)

	var/x_shift = phase_shift_by_x[src.x % (phase_shift_by_x.len - 1) + 1]
	var/transit_state = (world.maxy - src.y + x_shift)%15 + 1

	icon_state = "speedspace_ns_[transit_state]"
