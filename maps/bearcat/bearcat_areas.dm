/area/ship/scrap
	name = "\improper Vaisseau Generique"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')

/area/ship/scrap/crew
	name = "\improper Quartiers de l'equipage"
	icon_state = "crew_quarters"

/area/ship/scrap/crew/hallway/port
	name = "\improper Couloir - Port"

/area/ship/scrap/crew/hallway/starboard
	name = "\improper Couloir - Starboard"

/area/ship/scrap/crew/kitchen
	name = "\improper Cuisine"
	icon_state = "kitchen"

/area/ship/scrap/crew/cryo
	name = "\improper Cryogenie"
	icon_state = "cryo"

/area/ship/scrap/crew/dorms1
	name = "\improper Cabine d'equipage #1"
	icon_state = "green"

/area/ship/scrap/crew/dorms2
	name = "\improper Cabine d'equipage #2"
	icon_state = "purple"

/area/ship/scrap/crew/dorms3
	name = "\improper Cabine d'equipage #3"
	icon_state = "yellow"

/area/ship/scrap/crew/saloon
	name = "\improper Saloon"
	icon_state = "conference"

/area/ship/scrap/crew/toilets
	name = "\improper Toilettes"
	icon_state = "toilet"
	turf_initializer = /decl/turf_initializer/maintenance

/area/ship/scrap/crew/wash
	name = "\improper Laverie"
	icon_state = "locker"

/area/ship/scrap/crew/medbay
	name = "\improper Baie Medicale"
	icon_state = "medbay"

/area/ship/scrap/cargo
	name = "\improper Stockage cargo"
	icon_state = "quartstorage"

/area/ship/scrap/cargo/lower
	name = "\improper Stockage cargo inferieur"

/area/ship/scrap/dock
	name = "\improper Baie de docking"
	icon_state = "entry_1"

/area/ship/scrap/garden
	name = "\improper Jardin"
	icon_state = "green"

/area/ship/scrap/unused
	name = "\improper Compartiment 2-B"
	icon_state = "yellow"
	turf_initializer = /decl/turf_initializer/maintenance
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')

/area/ship/scrap/hidden
	name = "\improper Inconnu" //shielded compartment
	icon_state = "auxstorage"

/area/ship/scrap/escape_port
	name = "\improper evacuation"
	icon_state = "green"

/area/ship/scrap/escape_star
	name = "\improper Starboard - evacuation"
	icon_state = "yellow"

/area/ship/scrap/broken1
	name = "\improper Maintenance robotique"
	icon_state = "green"

/area/ship/scrap/broken2
	name = "\improper Compartiment 1-B"
	icon_state = "yellow"

/area/ship/scrap/gambling
	name = "\improper Compartiment 1-C"
	icon_state = "cave"

/area/ship/scrap/maintenance
	name = "\improper Compartiment de maintenance"
	icon_state = "amaint"

/area/ship/scrap/maintenance/hallway
	name = "\improper Couloirs de maintenance"

/area/ship/scrap/maintenance/lower
	name = "\improper Compartiments de maintenance inferieurs"
	icon_state = "sub_maint_aft"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/scrap/maintenance/storage
	name = "\improper Stockage d'outils"
	icon_state = "engineering_storage"

/area/ship/scrap/maintenance/techstorage
	name = "\improper Stockage de pieces detachees"
	icon_state = "engineering_supply"

/area/ship/scrap/maintenance/eva
	name = "\improper Stockage EVA"
	icon_state = "eva"

/area/ship/scrap/maintenance/engineering
	name = "\improper Baie d'ingenierie"
	icon_state = "engineering_supply"
	req_access = list(access_engine)

/area/ship/scrap/maintenance/atmos
	name = "\improper Atmospheriques"
	icon_state = "atmos"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambiatm1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/power
	name = "\improper Local electrique"
	icon_state = "engine_smes"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/engine
	icon_state = "engine"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	req_access = list(access_engine)

/area/ship/scrap/maintenance/engine/aft
	name = "\improper Salle des moteurs"

/area/ship/scrap/maintenance/engine/port
	name = "\improper Salle des propulseurs"

/area/ship/scrap/maintenance/engine/starboard
	name = "\improper Starboard - Propulseurs"

/area/ship/scrap/command/hallway
	name = "\improper Pont de commande"
	icon_state = "centcom"
	req_access = list(access_heads)

/area/ship/scrap/command/bridge
	name = "\improper Commandement"
	icon_state = "bridge"
	req_access = list(access_heads)

/area/ship/scrap/command/captain
	name = "\improper Quartiers du Capitaine"
	icon_state = "captain"
	req_access = list(access_captain)

/area/ship/scrap/comms
	name = "\improper Communications"
	icon_state = "tcomsatcham"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')

/area/ship/scrap/shuttle/outgoing
  name = "\improper Navette d'exploration"
  icon_state = "tcomsatcham"

/area/ship/scrap/shuttle/lift
  name = "\improper Ascenceur"
  icon_state = "shuttle3"
  base_turf = /turf/simulated/open
