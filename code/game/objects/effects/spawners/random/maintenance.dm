/obj/effect/spawner/random/maintenance
	name = "maintenance loot spawner"
	desc = "Come on Lady Luck, spawn me a pair of sunglasses."
	icon_state = "loot"
	// see code/_globalvars/lists/maintenance_loot.dm for loot table

/obj/effect/spawner/random/maintenance/examine(mob/user)
	. = ..()
	. += span_info("This spawner has an effective loot count of [get_effective_lootcount()].")

/obj/effect/spawner/random/maintenance/Initialize(mapload)
	loot = GLOB.maintenance_loot
	return ..()

/obj/effect/spawner/random/maintenance/proc/hide()
	invisibility = INVISIBILITY_OBSERVER
	alpha = 100

/obj/effect/spawner/random/maintenance/proc/get_effective_lootcount()
	var/effective_lootcount = spawn_loot_count

	if(HAS_TRAIT(SSstation, STATION_TRAIT_FILLED_MAINT))
		effective_lootcount = FLOOR(spawn_loot_count * 1.5, 1)

	else if(HAS_TRAIT(SSstation, STATION_TRAIT_EMPTY_MAINT))
		effective_lootcount = FLOOR(spawn_loot_count * 0.5, 1)

	return effective_lootcount

/obj/effect/spawner/random/maintenance/spawn_loot(lootcount_override)
	if(isnull(lootcount_override))
		lootcount_override = get_effective_lootcount()
	. = ..()

	// In addition, closets that are closed will have the maintenance loot inserted inside.
	for(var/obj/structure/closet/closet in get_turf(src))
		if(!closet.opened)
			closet.take_contents()

//monkestation edit start
/obj/effect/spawner/random/maintenance/post_spawn(atom/movable/spawned_loot) //if an oddity spawns then ghosts should be told, as they could be pretty interesting to watch
	if(spawned_loot.type in GLOB.oddity_loot) //running locate() will also return TRUE on parents of the typepath as well, mainly boxes
		SSpoints_of_interest.make_point_of_interest(spawned_loot)
		notify_ghosts(
			"Maintenance has an object of interest: [spawned_loot]!",
			source = spawned_loot,
			action = NOTIFY_ORBIT,
			header = "Something's Interesting!",
		)
//monkestation edit end
/obj/effect/spawner/random/maintenance/two
	name = "2 x maintenance loot spawner"
	spawn_loot_count = 2

/obj/effect/spawner/random/maintenance/three
	name = "3 x maintenance loot spawner"
	spawn_loot_count = 3

/obj/effect/spawner/random/maintenance/four
	name = "4 x maintenance loot spawner"
	spawn_loot_count = 4

/obj/effect/spawner/random/maintenance/five
	name = "5 x maintenance loot spawner"
	spawn_loot_count = 5

/obj/effect/spawner/random/maintenance/six
	name = "6 x maintenance loot spawner"
	spawn_loot_count = 6

/obj/effect/spawner/random/maintenance/seven
	name = "7 x maintenance loot spawner"
	spawn_loot_count = 7

/obj/effect/spawner/random/maintenance/eight
	name = "8 x maintenance loot spawner"
	spawn_loot_count = 8
