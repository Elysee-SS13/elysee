/datum/map/mini
	allowed_jobs = list(
	// Command
		/datum/job/captain,
		/datum/job/hop,

	// Security
		/datum/job/hos,
		/datum/job/officer,
		/datum/job/detective,

	// Engineering
		/datum/job/engineer,

	// Medical
		/datum/job/doctor,
		/datum/job/chemist,
		/datum/job/geneticist,

	// Science
		/datum/job/scientist,
		/datum/job/roboticist,

	// Supply
		/datum/job/cargo_tech,

	// Service
		/datum/job/bartender,
		/datum/job/chef,
		/datum/job/hydro,
		/datum/job/janitor,
		/datum/job/assistant,

	// Silicon
		/datum/job/ai,
		/datum/job/cyborg
	)


/*** NUMBER OF POSITIONS ***/
/* COMMAND */
// HOP

/* SECURITY */
// HOS
/datum/job/officer
	total_positions = 2
	spawn_positions = 2

/datum/job/detective
	total_positions = 1
	spawn_positions = 1

/* ENGINEERING */
/datum/job/engineer
	total_positions = 3
	spawn_positions = 3

	supervisors = "the captain"

/* MEDICAL */
/datum/job/doctor
	minimal_player_age = 0
	total_positions = 2
	spawn_positions = 2

	supervisors = "the captain"

/datum/job/chemist
	minimal_player_age = 0
	total_positions = 1
	spawn_positions = 1

	title = "Chemist"
	supervisors = "the captain"

/datum/job/geneticist
	total_positions = 1
	spawn_positions = 1

	supervisors = "the captain"

/* SCIENCE */
/datum/job/scientist
	total_positions = 3
	spawn_positions = 3

	supervisors = "the captain"

/datum/job/roboticist
	total_positions = 1
	spawn_positions = 1

	supervisors = "the captain"

/* SUPPLY */
/datum/job/cargo_tech
	supervisors = "the head of personnel"
	total_positions = 3
	spawn_positions = 3

	supervisors = "the head of personnel"

/datum/job/mining
	supervisors = "the head of the personnel"
	total_positions = 0
	spawn_positions = 0

/* SERVICE/CIVILIAN */
// Bartender
// Janitor
/datum/job/chef
	total_positions = 1
	spawn_positions = 1

/datum/job/hydro
	total_positions = 1
	spawn_positions = 1

/* SILICON */
// AI defaults to 1
