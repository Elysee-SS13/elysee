
/client/New()
	..()
	dir = NORTH

/client/verb/spinleft()
	set name = "Caméra ↺"
	set category = "OOC"
	dir = turn(dir, 90)

/client/verb/spinright()
	set name = "Caméra ↻"
	set category = "OOC"
	dir = turn(dir, -90)
