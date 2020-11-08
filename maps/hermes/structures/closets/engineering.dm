/decl/closet_appearance/secure_closet/hermes/engineering
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_WARM_YELLOW,
		"exped" = COLOR_WARM_YELLOW
	)

/decl/closet_appearance/secure_closet/hermes/engineering/atmos
	extra_decals = list(
		"stripe_vertical_right_full" = COLOR_WARM_YELLOW,
		"stripe_vertical_mid_full" = COLOR_CYAN_BLUE,
		"atmos_upper" = COLOR_WARM_YELLOW
	)

/obj/structure/closet/secure_closet/atmos_hermes
	name = "atmospherics equipment locker"
	req_access = list(access_atmospherics)
	closet_appearance = /decl/closet_appearance/secure_closet/hermes/engineering/atmos

/obj/structure/closet/secure_closet/atmos_hermes/WillContain()
	return list(
		/obj/item/clothing/under/hazard,
		/obj/item/weapon/storage/backpack/dufflebag/firefighter,
		/obj/item/clothing/head/hardhat/red,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/weapon/tank/emergency/oxygen/double,
		/obj/item/clothing/mask/gas,
		/obj/item/taperoll/atmos,
		/obj/item/device/scanner/gas,
		/obj/item/weapon/scrubpack/standard = 2,
		/obj/item/weapon/tank/scrubber = 4
	)

/obj/structure/closet/secure_closet/engineering_hermes
	name = "engineer's locker"
	req_access = list(access_engine_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/hermes/engineering

/obj/structure/closet/secure_closet/engineering_hermes/WillContain()
	return list(
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/weapon/storage/belt/utility/full,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/glasses/meson,
		/obj/item/taperoll/engineering,
		/obj/item/device/flashlight,
		/obj/item/taperoll/atmos,
		/obj/item/clothing/gloves/insulated,
		/obj/item/weapon/material/knife/folding/swiss/engineer,
		/obj/item/clothing/head/hardhat/damage_control,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/industrial, /obj/item/weapon/storage/backpack/satchel/eng)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag/eng, /obj/item/weapon/storage/backpack/messenger/engi))
	)