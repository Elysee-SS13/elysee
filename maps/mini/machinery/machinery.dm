/obj/machinery/smartfridge/chemistry/ministation

	var/list/cartridges = list(/obj/item/weapon/reagent_containers/chem_disp_cartridge/acetone,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/ammonia,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/copper,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/hydrazine,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/iron,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/mercury,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/potassium,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/sugar,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/silicon,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/sulfur,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/water,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/aluminium,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/carbon,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/ethanol,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/hclacid,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/lithium,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/phosphorus,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/radium,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/sodium,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/sulfur,
	/obj/item/weapon/reagent_containers/chem_disp_cartridge/tungsten)

	var/number_cartridges = 5

/obj/machinery/smartfridge/chemistry/ministation/New()

	for(var/I in cartridges)
		for(var/i=0;i<number_cartridges;i++)
			stock_item(new I())


/obj/machinery/smartfridge/secure/extract/New()

	var/number_extracts = 3

	for(var/i=0;i<number_extracts;i++)
		stock_item(new /obj/item/slime_extract/grey())