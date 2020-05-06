

var/const/NETWORK_CARGO = "Cargo"
/datum/map/mini
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_ROBOTS,
		NETWORK_COMMAND,
		NETWORK_ENGINEERING,
		NETWORK_ENGINE,
		NETWORK_MEDICAL,
		NETWORK_RESEARCH,
		NETWORK_SECURITY,
		NETWORK_CARGO,
		NETWORK_ALARM_ATMOS,
		NETWORK_ALARM_CAMERA,
		NETWORK_ALARM_FIRE,
		NETWORK_ALARM_MOTION,
		NETWORK_ALARM_POWER,
	)

//
// Cameras
//

// Networks

/obj/machinery/camera/network/cargo
	network = list(NETWORK_CARGO)
/obj/machinery/camera/network/command
	network = list(NETWORK_COMMAND)


/obj/machinery/camera/network/engine
	network = list(NETWORK_ENGINE)

// All Upgrades
/obj/machinery/camera/all/command
	network = list(NETWORK_COMMAND)

/obj/machinery/camera/network/crescent
	network = list(NETWORK_CRESCENT)

//
// SMES units
//

// Substation SMES
/obj/machinery/power/smes/buildable/preset/torch/substation
	uncreated_component_parts = list(/obj/item/weapon/stock_parts/smes_coil = 1) // Note that it gets one more from construction
	_input_maxed = TRUE
	_output_maxed = TRUE

// Substation SMES (charged and with full I/O setting)
/obj/machinery/power/smes/buildable/preset/torch/substation_full
	uncreated_component_parts = list(/obj/item/weapon/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES
/obj/machinery/power/smes/buildable/preset/torch/engine_main
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2,
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Shuttle SMES
/obj/machinery/power/smes/buildable/preset/torch/shuttle
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 1,
		/obj/item/weapon/stock_parts/smes_coil/super_capacity = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Hangar SMES. Charges the shuttles so needs a pretty big throughput.
/obj/machinery/power/smes/buildable/preset/torch/hangar
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

var/const/NETWORK_COMMAND = "Command"
var/const/NETWORK_ENGINE  = "Engine"
var/const/NETWORK_ENGINEERING_OUTPOST = "Engineering Outpost"

/datum/map/proc/get_shared_network_access(var/network)
	switch(network)
		if(NETWORK_COMMAND)
			return access_heads
		if(NETWORK_ENGINE, NETWORK_ENGINEERING_OUTPOST)
			return access_engine

/datum/map/mini/default_internal_channels()
	return list(
		num2text(PUB_FREQ)   = list(),
		num2text(AI_FREQ)    = list(access_synth),
		num2text(ENT_FREQ)   = list(),
		num2text(ERT_FREQ)   = list(access_cent_specops),
		num2text(COMM_FREQ)  = list(access_heads),
		num2text(ENG_FREQ)   = list(access_engine_equip, access_atmospherics),
		num2text(MED_FREQ)   = list(access_medical_equip),
		num2text(MED_I_FREQ) = list(access_medical_equip),
		num2text(SEC_FREQ)   = list(access_security),
		num2text(SEC_I_FREQ) = list(access_security),
		num2text(SCI_FREQ)   = list(access_tox, access_robotics, access_xenobiology),
		num2text(SUP_FREQ)   = list(access_cargo),
		num2text(SRV_FREQ)   = list(access_janitor, access_hydroponics),
	)

