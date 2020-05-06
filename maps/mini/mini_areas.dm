/area/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	req_access = list(access_engine_equip)

/area/engineering/engineering_bay
	name = "\improper Engineering"
	icon_state = "engineering"

/area/engineering/engine_monitor
	name = "\improper Engine Monitoring Room"
	icon_state = "eng_monitor"

/area/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine_room"
	req_access = list(access_engine)


/area/escape
	name = "\improper Escape Hall"
	icon_state = "red"

/area/janitor
	name = "\improper Janitor"
	icon_state = "janitor"
	req_access = list(access_janitor)


/area/hop
	name="\improper Head of Personnel Office"
	icon_state="blue"
	req_access = list(access_hop)

/area/cent_hall
	name="\improper Central Hall"
	icon_state="cent_hall"


/area/maintenance/engineering
	name="\improper Engineering Maintenance"
	icon_state="sub_maint_aft"
	req_access = list(access_engine_equip)

/area/maintenance/cafeteria
	name="\improper Cafeteria Maintenance"
	icon_state="sub_maint_aft"

/area/maintenance/janitor
	name="\improper Janitor Maintenance"
	icon_state="sub_maint_aft"


/area/maintenance/command
	name="\improper Command Maintenance"
	icon_state="sub_maint_aft"
	req_access = list(access_engine_equip)


/area/cafeteria
	name="\improper Cafeteria"
	icon_state = "cafeteria"

/area/cafeteria/bar
	name="\improper Bar"
	icon_state = "bar"
	req_access = list(access_bar)

/area/cafeteria/kitchen
	name="\improper Kitchen"
	icon_state="kitchen"
	req_access = list(access_kitchen)

/area/hydroponics
	name="\improper Hydroponics"
	icon_state="green"



/area/medbay
	name="\improper MedBay"
	icon_state="medbay"
	req_access = list(access_medical)

/area/eva
	name="\improper EVA Storage"
	icon_state="eva"
	req_access = list(access_eva)

/area/cargo
	name="\improper Cargo Bay"
	icon_state="quartstorage"
	req_access = list(access_cargo)


/area/cargo/dock
	name = "Cargo Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

/area/quartermaster/hangar
	name = "\improper Hangar Deck"
	icon_state = "hangar"
	req_access = list(access_cent_storage)


/area/security
	name="\improper Security"
	icon_state="brig"
	req_access = list(access_brig)

/area/science
	name="\improper Science"
	icon_state="purple"
	req_access = list(access_research)


/area/command
	name="\improper Command"
	icon_state="blue"
	req_access = list(access_bridge)

/area/telecomms
	name="\improper Telecomms"
	icon_state ="blue"


/area/shuttle/arrival
	name = "\improper Arrival Shuttle"
	icon_state = "shuttle"
	req_access = list(access_cent_general)


/area/quartermaster/deckchief
	name = "\improper Deck Chief's Office"
	icon_state = "quart"
	req_access = list(access_qm)


// Admin & Transit area

// Shuttles
/area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

//torch large pods
/area/shuttle/escape_pod6/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod7/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod9/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod10/station
	name = "Escape Pod Five"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod11/station
	name = "Escape Pod Six"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//torch small pods
/area/shuttle/escape_pod12/station
	name = "Escape Pod Seven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod13/station
	name = "Escape Pod Eight"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod14/station
	name = "Escape Pod Nine"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod15/station
	name = "Escape Pod Ten"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod16/station
	name = "Escape Pod Eleven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod17/station
	name = "Escape Pod Twelve"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT


// CentCom

/area/centcom/control
	name = "\improper Centcom Control"

/area/centcom/creed
	name = "Creed's Office"

/area/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/centcom/living
	name = "\improper Centcom Living Quarters"

/area/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/centcom/test
	name = "\improper Centcom Testing Facility"


// Holodecks

/area/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = 0
	sound_env = LARGE_ENCLOSED

/area/holodeck/alphadeck
	name = "\improper Holodeck Alpha"

/area/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/holodeck/source_emptycourt
	name = "\improper Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/source_boxingcourt
	name = "\improper Holodeck - Boxing Court"
	sound_env = ARENA

/area/holodeck/source_basketball
	name = "\improper Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/source_courtroom
	name = "\improper Holodeck - Courtroom"
	sound_env = AUDITORIUM

/area/holodeck/source_beach
	name = "\improper Holodeck - Beach"
	sound_env = PLAIN

/area/holodeck/source_wildlife
	name = "\improper Holodeck - Wildlife Simulation"

/area/holodeck/source_meetinghall
	name = "\improper Holodeck - Meeting Hall"
	sound_env = AUDITORIUM

/area/holodeck/source_theatre
	name = "\improper Holodeck - Theatre"
	sound_env = CONCERT_HALL

/area/holodeck/source_picnicarea
	name = "\improper Holodeck - Picnic Area"
	sound_env = PLAIN

/area/holodeck/source_snowfield
	name = "\improper Holodeck - Snow Field"
	sound_env = FOREST

/area/holodeck/source_desert
	name = "\improper Holodeck - Desert"
	sound_env = PLAIN

/area/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0
	sound_env = SPACE

/area/holodeck/source_cafe
	name = "\improper Holodeck - Cafe"
	sound_env = PLAIN

/area/holodeck/source_volleyball
	name = "\improper Holodeck - Volleyball"
	sound_env = PLAIN

/area/holodeck/source_temple
	name = "\improper Holodeck - Temple"
	sound_env = SMALL_ENCLOSED

/area/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"
	sound_env = SMALL_ENCLOSED


// Shuttles
/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/shuttle/escape_pod1/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod2/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod3/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/shuttle/escape_pod5/centcom
	icon_state = "shuttle"
	req_access = list(access_cent_general)

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

// Secure

/area/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"
	req_access = list(access_brig)

// Thunderdome

/area/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0
	dynamic_lighting = 0
	sound_env = ARENA
	req_access = list(access_cent_thunder)

/area/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

// ACTORS GUILD
/area/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	dynamic_lighting = 0
	requires_power = 0

/area/acting/backstage
	name = "\improper Backstage"

/area/acting/stage
	name = "\improper Stage"
	dynamic_lighting = 1
	icon_state = "yellow"

// Merchant

/area/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"
	req_access = list(access_merchant)

//Merchant

/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED