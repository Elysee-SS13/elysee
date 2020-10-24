/area/ship/curie
	name = "\improper Dalbarade"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')

/area/ship/curie/broken1
	name = "\improper Compartment 2-P"
	icon_state = "yellow"

/area/ship/curie/broken2
	name = "\improper Compartment 2-S"
	icon_state = "yellow"

/area/ship/curie/crew
	name = "\improper Crew Compartements"
	icon_state = "crew_quarters"

/area/ship/curie/crew/common
	name = "\improper Common Room"
	icon_state = "conference"

/area/ship/curie/crew/kitchen
	name = "\improper Galley"
	icon_state = "kitchen"

/area/ship/curie/crew/medbay
	name = "\improper Medical Bay"
	icon_state = "medbay"

/area/ship/curie/command/bridge
	name = "\improper Bridge"
	icon_state = "bridge"

/area/ship/curie/tools
	name = "\improper Tool Storage"
	icon_state = "auxstorage"

/area/ship/curie/merchant
	name = "\improper Broking Room"
	icon_state = "primarystorage"

/area/ship/curie/cargo
	name = "\improper Cargo Hold"
	icon_state = "quartstorage"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/research
	name = "\improper Development Lab"
	icon_state = "devlab"

/area/ship/curie/research/office
	name = "\improper Research Office"
	icon_state = "head_quarters"

/area/ship/curie/maintenance/engineering
	name = "\improper Engineering Maintenance"
	icon_state = "engineering_supply"

/area/ship/curie/maintenance/atmos
	name = "\improper Atmospherics Comparment"
	icon_state = "atmos"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambiatm1.ogg')

/area/ship/curie/maintenance/power
	name = "\improper Power Compartment"
	icon_state = "engine_smes"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/curie/maintenance/engine
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')

/area/ship/curie/maintenance/locker
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/ship/curie/maintenance/techstorage
	name = "\improper Parts Storage"
	icon_state = "engineering_supply"

/area/ship/curie/command/pilot
	name = "\improper Pilot Cabin"
	icon_state = "bridge"

/area/ship/curie/command/captain
	name = "\improper Captain's Quarters"
	icon_state = "captain"

/area/ship/curie/comms
	name = "\improper Communications Relay"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/area/ship/curie/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE

/area/ship/curie/crew/dorms
	name = "\improper Dormitories"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/escape_port
	name = "\improper Port Escape Pods"
	icon_state = "green"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/escape_star
	name = "\improper Starboard Escape Pods"
	icon_state = "yellow"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/locker
	name = "\improper Locker Room"
	icon_state = "locker"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/merc
	name = "\improper Armory"
	icon_state = "cave"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/refinery
	name = "\improper Refinery"
	icon_state = "mining"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/shuttle/lift
  name = "\improper Cargo Lift"
  icon_state = "shuttle3"
  base_turf = /turf/simulated/open

/area/ship/curie/crew/cryo
	name = "\improper Cryo Storage"
	icon_state = "cryo"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/crew/toilets
	name = "\improper Bathrooms"
	icon_state = "toilet"
	turf_initializer = /decl/turf_initializer/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/curie/shuttle/outgoing
  name = "\improper Exploration Shuttle"
  icon_state = "tcomsatcham"
