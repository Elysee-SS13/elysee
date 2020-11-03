/area/crew_quarters/sleep/cryo/primary
	name = "\improper Cryogenic Storage Primary"
	icon_state = "Sleep"

/area/crew_quarters/sleep/cryo/secondary
	name = "\improper Cryogenic Storage Secondary"
	icon_state = "Sleep"

/area/crew_quarters/sleep/cryo/third
	name = "\improper Cryogenic Storage Third"
	icon_state = "Sleep"

/area/rnd/breakroom
	name = "\improper Research Break Room"
	icon_state = "researchbreak"
	req_access = list(list(access_research))

/area/medical/infirmreception
	name = "\improper Infirmary Reception"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical)

/area/medical/virology
	name = "\improper Virology"
	icon_state = "virology"

/area/medical/virologyaccess
	name = "\improper Virology Access"
	icon_state = "virology"

/area/medical/infirmary
	name = "\improper Infirmary"
	icon_state = "medbay"

/area/engineering/bluespace
	name = "Bluespace Drive Monitoring"
	icon_state = "engineering"
	color = COLOR_BLUE_GRAY
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/engineering/bluespace/containment
	name = "Bluespace Drive Containment"
	color = COLOR_BLUE_LIGHT

/area/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"
	req_access = list(list(access_engine_equip, access_atmospherics))

/area/hallway/fore
	name = "\improper Fore Hallway"
	icon_state = "hallF"

/area/hallway/aft
	name = "\improper Aft Hallway"
	icon_state = "hallA"

/area/hallway/seconddeck
	name = "\improper Second Deck Hallway"
	icon_state = "hallA"

/area/crew_quarters/heads/office/oo
	icon_state = "heads_sr"
	name = "\improper Command - OO's Office"
	req_access = list(access_hop)


/area/holodeck/source_combat_training_pirate
	name = "\improper Holodeck - Combat Training Pirate"
	sound_env = ARENA