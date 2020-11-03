
/datum/map/hermes

	holodeck_programs = list(
		"emptycourt"       = new/datum/holodeck_program(/area/holodeck/source_emptycourt, list('sound/music/THUNDERDOME.ogg')),
		"boxingcourt"      = new/datum/holodeck_program(/area/holodeck/source_boxingcourt, list('sound/music/THUNDERDOME.ogg')),
		"basketball"       = new/datum/holodeck_program(/area/holodeck/source_basketball, list('sound/music/THUNDERDOME.ogg')),
		"thunderdomecourt" = new/datum/holodeck_program(/area/holodeck/source_thunderdomecourt, list('sound/music/THUNDERDOME.ogg')),
		"beach"            = new/datum/holodeck_program(/area/holodeck/source_beach, list('sound/music/europa/WildEncounters.ogg')),
		"desert"           = new/datum/holodeck_program(/area/holodeck/source_desert,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"snowfield"        = new/datum/holodeck_program(/area/holodeck/source_snowfield,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"space"            = new/datum/holodeck_program(/area/holodeck/source_space,
														list(
															'sound/ambience/ambispace.ogg',
															'sound/music/main.ogg',
															'sound/music/space.ogg',
															'sound/music/traitor.ogg',
															)
														),
		"picnicarea"       = new/datum/holodeck_program(/area/holodeck/source_picnicarea, list('sound/music/title2.ogg')),
		"theatre"          = new/datum/holodeck_program(/area/holodeck/source_theatre),
		"meetinghall"      = new/datum/holodeck_program(/area/holodeck/source_meetinghall),
		"courtroom"        = new/datum/holodeck_program(/area/holodeck/source_courtroom, list('sound/music/traitor.ogg')),
		"voleyball"        = new/datum/holodeck_program(/area/holodeck/source_volleyball, list('sound/music/THUNDERDOME.ogg')),
		"cafe"             = new/datum/holodeck_program(/area/holodeck/source_cafe),
		"wildlifecarp"     = new/datum/holodeck_program(/area/holodeck/source_wildlife, list()),
		"temple"           = new/datum/holodeck_program(/area/holodeck/source_temple),
		"plaza"            = new/datum/holodeck_program(/area/holodeck/source_plaza),
		"turnoff"          = new/datum/holodeck_program(/area/holodeck/source_plating, list()),
		"combat_training_pirate" = new /datum/holodeck_program(/area/holodeck/source_combat_training_pirate, list('sound/music/THUNDERDOME.ogg'))
	)

	holodeck_supported_programs = list(

		"HermesMainPrograms" = list(
			"Basketball Court"  = "basketball",
			"Beach"             = "beach",
			"Boxing Ring"       = "boxingcourt",
			"Cafe"              = "cafe",
			"Courtroom"         = "courtroom",
			"Desert"            = "desert",
			"Empty Court"       = "emptycourt",
			"Meeting Hall"      = "meetinghall",
			"Picnic Area"       = "picnicarea",
			"Snow Field"        = "snowfield",
			"Space"             = "space",
			"Theatre"           = "theatre",
			"Thunderdome Court" = "thunderdomecourt",
			"Voleyball Court"   = "voleyball",
			"Bathhouse"         = "temple",
			"Plaza"             = "plaza",
			"Pirate Combat Training" = "combat_training_pirate"
		)

	)

	holodeck_restricted_programs = list(

		"HermesMainPrograms" = list(
			"Wildlife Simulation" = "wildlifecarp"
		)

	)


/obj/machinery/computer/HolodeckControl/hermes
	name = "hermes holodeck control console"

/obj/machinery/computer/HolodeckControl/hermes/update_projections()
	if (safety_disabled)
		item_power_usage = 2500
		for(var/obj/item/weapon/holo/esword/H in linkedholodeck)
			H.damtype = BRUTE
	else
		item_power_usage = initial(item_power_usage)
		for(var/obj/item/weapon/holo/esword/H in linkedholodeck)
			H.damtype = initial(H.damtype)

	for(var/mob/living/simple_animal/hostile/carp/holodeck/C in holographic_mobs)
		C.set_safety(!safety_disabled)
		if (last_to_emag)
			C.friends = list(weakref(last_to_emag))

	for(var/mob/living/simple_animal/hostile/pirate/holodeck/P in holographic_mobs)
		P.set_safety(!safety_disabled)
		if (last_to_emag)
			P.friends = list(weakref(last_to_emag))

/obj/machinery/computer/HolodeckControl/hermes/loadProgram(var/datum/holodeck_program/HP, var/check_delay = 1)
	if(!HP)
		return
	var/area/A = locate(HP.target)
	if(!A)
		return

	if(check_delay)
		if(world.time < (last_change + 25))
			if(world.time < (last_change + 15))//To prevent super-spam clicking, reduced process size and annoyance -Sieve
				return
			for(var/mob/M in range(3,src))
				M.show_message("<span class='warning'>ERROR. Recalibrating projection apparatus.</span>")
				last_change = world.time
				return

	last_change = world.time
	active = 1
	update_use_power(POWER_USE_ACTIVE)

	for(var/item in holographic_objs)
		derez(item)

	for(var/mob/living/simple_animal/hostile/carp/holodeck/C in holographic_mobs)
		holographic_mobs -= C
		C.death()

	for(var/obj/effect/decal/cleanable/blood/B in linkedholodeck)
		qdel(B)

	holographic_objs = A.copy_contents_to(linkedholodeck , 1)
	for(var/obj/holo_obj in holographic_objs)
		holo_obj.alpha *= 0.8 //give holodeck objs a slight transparency
		holo_obj.holographic = TRUE

	if(HP.ambience)
		linkedholodeck.forced_ambience = HP.ambience
	else
		linkedholodeck.forced_ambience = list()

	for(var/mob/living/M in mobs_in_area(linkedholodeck))
		if(M.mind)
			linkedholodeck.play_ambience(M)

	linkedholodeck.sound_env = A.sound_env

	spawn(30)
		for(var/obj/effect/landmark/L in linkedholodeck)
			if(L.name=="Atmospheric Test Start")
				spawn(20)
					var/turf/T = get_turf(L)
					var/datum/effect/effect/system/spark_spread/s = new /datum/effect/effect/system/spark_spread
					s.set_up(2, 1, T)
					s.start()
					if(T)
						T.temperature = 5000
						T.hotspot_expose(50000,50000,1)
			if(L.name=="Holocarp Spawn")
				holographic_mobs += new /mob/living/simple_animal/hostile/carp/holodeck(L.loc)

			if(L.name=="Holocarp Spawn Random")
				if (prob(4)) //With 4 spawn points, carp should only appear 15% of the time.
					holographic_mobs += new /mob/living/simple_animal/hostile/carp/holodeck(L.loc)

			if(L.name=="Pirate Spawn")
				holographic_mobs += new /mob/living/simple_animal/hostile/pirate/holodeck(L.loc)

		update_projections()


/mob/living/simple_animal/hostile/pirate/holodeck
	alpha = 127
	icon_gib = null
	meat_amount = 0
	meat_type = null

/mob/living/simple_animal/hostile/pirate/holodeck/New()
	..()
	set_light(0.5, 0.1, 2) //hologram lighting

/mob/living/simple_animal/hostile/pirate/holodeck/proc/set_safety(var/safe)
	if (safe)
		faction = MOB_FACTION_NEUTRAL
		melee_damage_lower = 0
		melee_damage_upper = 0
		environment_smash = 0
		destroy_surroundings = 0
	else
		faction = "pirate"
		melee_damage_lower = initial(melee_damage_lower)
		melee_damage_upper = initial(melee_damage_upper)
		environment_smash = initial(environment_smash)
		destroy_surroundings = initial(destroy_surroundings)

/mob/living/simple_animal/hostile/carp/holodeck/gib()
	death()

/mob/living/simple_animal/hostile/carp/holodeck/death()
	..(null, "fades away!", "You have been destroyed.")
	qdel(src)

/mob/living/simple_animal/hostile/carp/holodeck/on_update_icon()
	return
