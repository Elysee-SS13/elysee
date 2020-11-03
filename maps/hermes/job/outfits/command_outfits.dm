/decl/hierarchy/outfit/job/hermes/crew/command
	name = OUTFIT_JOB_NAME("Hermes Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/hermes/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/hermes/crew/command/CO
	name = OUTFIT_JOB_NAME("Commanding Officer")
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	l_ear = /obj/item/device/radio/headset/heads/hermesexec
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/soft/solgov/expedition/co
	id_types = list(/obj/item/weapon/card/id/hermes/gold)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/hermes/crew/command/CO/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/hermes/crew/command/XO
	name = OUTFIT_JOB_NAME("Executive Officer")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	l_ear = /obj/item/device/radio/headset/heads/hermesexec
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/weapon/card/id/hermes/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/hermes/crew/command/XO/fleet
	name = OUTFIT_JOB_NAME("Executive Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/hermes/crew/command/cmo
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Hermes")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/medical
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/weapon/card/id/hermes/silver/medical)
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/hermes/crew/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/hermes/crew/command/cmo/fleet
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/hermes/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer - Hermes")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/heads/ce
	id_types = list(/obj/item/weapon/card/id/hermes/silver/engineering)
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/hermes/crew/command/chief_engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/hermes/crew/command/chief_engineer/fleet
	name = OUTFIT_JOB_NAME("Chief Engineer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/hermes/crew/command/cos
	name = OUTFIT_JOB_NAME("Chief of Security")
	l_ear = /obj/item/device/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/security
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/weapon/card/id/hermes/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/hermes/crew/command/cos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/hermes/crew/command/cos/fleet
	name = OUTFIT_JOB_NAME("Chief of Security - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/combat/security
	shoes = /obj/item/clothing/shoes/dutyboots

/decl/hierarchy/outfit/job/hermes/passenger/workplace_liaison
	name = OUTFIT_JOB_NAME("Workplace Liaison")
	l_ear = /obj/item/device/radio/headset/heads/hermesntcommand
	uniform = /obj/item/clothing/under/suit_jacket/corp
	shoes = /obj/item/clothing/shoes/laceup
//	id_types = list(/obj/item/weapon/card/id/hermes/passenger/corporate/liaison)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher
	backpack_contents = list(/obj/item/clothing/accessory/badge/nanotrasen = 1)

/decl/hierarchy/outfit/job/hermes/passenger/corporate_bodyguard
	name = OUTFIT_JOB_NAME("Executive Assistant")
	l_ear =    /obj/item/device/radio/headset/heads/hermescorp
	uniform =  /obj/item/clothing/under/suit_jacket/corp
	shoes =    /obj/item/clothing/shoes/laceup
//	id_types = list( /obj/item/weapon/card/id/hermes/passenger/corporate)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/hermes/crew/representative
	name = OUTFIT_JOB_NAME("SolGov Representative")
	l_ear = /obj/item/device/radio/headset/headset_com
	uniform = /obj/item/clothing/under/rank/internalaffairs/plain/solgov
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/laceup
//	id_types = list(/obj/item/weapon/card/id/hermes/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/hermes/crew/command/sea/fleet
	name = OUTFIT_JOB_NAME("Senior Enlisted Advisor - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/sea
//	id_types = list(/obj/item/weapon/card/id/hermes/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads

/decl/hierarchy/outfit/job/hermes/crew/command/bridgeofficer
	name = OUTFIT_JOB_NAME("Bridge Officer")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/command
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/weapon/card/id/hermes/crew/bridgeofficer)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/bridgeofficer

/decl/hierarchy/outfit/job/hermes/crew/command/bridgeofficer/fleet
	name = OUTFIT_JOB_NAME("Bridge Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
