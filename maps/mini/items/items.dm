/obj/effect/paint/hull
	color = COLOR_HULL


/obj/item/weapon/stamp/hop
	name = "Head of Personnel's rubber stamp"
	icon_state = "stamp-xo"

/obj/item/weapon/stamp/cos
	name = "chief of security's rubber stamp"
	icon_state = "stamp-cos"

/obj/item/weapon/stamp/supply
	name = "supply rubber stamp"
	icon_state = "stamp-cargo"

/obj/item/modular_computer/telescreen/preset/engineering_thermoelectric/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/alarm_monitor())
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	hard_drive.store_file(new/datum/computer_file/program/shields_monitor())
	hard_drive.store_file(new/datum/computer_file/program/supermatter_monitor())
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		os.set_autorun("cammon")

/obj/item/modular_computer/telescreen/preset/science_explosive/install_default_programs()
	..()
	hard_drive.store_file(new/datum/computer_file/program/camera_monitor())
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os)
		os.set_autorun("cammon")