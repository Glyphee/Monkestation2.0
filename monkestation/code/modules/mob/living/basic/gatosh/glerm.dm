/mob/living/basic/glerm //Normal glerm stuff
	name = "\improper glerm"
	desc = "A baby glerm, it wriggles with excitement and potential."
	icon = 'monkestation/icons/mob/gatosh/glerm.dmi'
	icon_state = "glerm"
	icon_living = "glerm"
	icon_dead = "glerm_dead"

	gender = NEUTER
	mob_biotypes = MOB_ORGANIC
	pass_flags = PASSTABLE|PASSGRILLE|PASSMOB
	mob_size = MOB_SIZE_SMALL
	held_w_class = WEIGHT_CLASS_TINY
	gold_core_spawnable = FRIENDLY_SPAWN

	response_help_continuous = "nuzzles"
	response_help_simple = "nuzzle"
	response_disarm_continuous = "bonks"
	response_disarm_simple = "bonk"
	attack_verb_continuous = "chomps"
	attack_verb_simple = "chomp"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 25
	health = 25

	speak_emote = list("glurps")
	death_message = "stops glerming for good."

	melee_damage_lower = 1
	melee_damage_upper = 1

	ai_controller = /datum/ai_controller/basic_controller/dog

/mob/living/basic/glerm/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_VENTCRAWLER_ALWAYS, INNATE_TRAIT)

/mob/living/basic/glerm/cool //Cool glerm stuff
	name = "\improper cool glerm"
	desc = "A cool little guy. Seems to be glerming harder than the rest."
	icon = 'monkestation/icons/mob/gatosh/glerm.dmi'
	icon_state = "glerm_cool"
	icon_living = "glerm_cool"
	icon_dead = "glerm_cool_dead"
	gold_core_spawnable = NO_SPAWN

/mob/living/basic/glerm/cool/Moved(atom/old_loc, movement_dir, forced, list/old_locs, momentum_change = TRUE)
	. = ..()
	playsound(src, 'sound/vehicles/skateboard_roll.ogg', 50, TRUE)

/mob/living/basic/glerb //Glerb stuff
	name = "\improper glerb"
	desc = "An adult glerb. Its mouth drips with acid."
	icon = 'monkestation/icons/mob/gatosh/glerm.dmi'
	icon_state = "glerb"
	icon_living = "glerb"
	icon_dead = "glerb_dead"

	gender = NEUTER
	mob_biotypes = MOB_ORGANIC
	mob_size = MOB_SIZE_HUGE
	gold_core_spawnable = HOSTILE_SPAWN
	butcher_results = list(/obj/item/food/meat/slab/glerb = 6, /obj/item/stack/sheet/animalhide/glerb = 7)

	response_help_continuous = "nuzzles"
	response_help_simple = "nuzzle"
	response_disarm_continuous = "smacks"
	response_disarm_simple = "smack"
	attack_verb_continuous = "crunches"
	attack_verb_simple = "crunch"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 250
	health = 250

	speak_emote = list("glurps")
	death_message = "collapses dead."

	melee_damage_lower = 33
	melee_damage_upper = 66

	ai_controller = /datum/ai_controller/basic_controller/simple_hostile_obstacles

/obj/item/choice_beacon/pet/donator/glerm //Monkecoin store stuff
	name = "Glerm"
	default_name = "Bingus"
	company_source = "Gatosh Wildlife Exports"
	company_message = "Be sure to feed your glerm."
	donator_pet = /mob/living/basic/glerm

/obj/item/choice_beacon/pet/donator/coolglerm
	name = "Cool Glerm"
	default_name = "Cool Bingus"
	company_source = "Gatosh Wildlife Exports"
	company_message = "Be sure to feed your cool glerm premium glerm food."
	donator_pet = /mob/living/basic/glerm/cool

/datum/loadout_item/pocket_items/donator/glerm
	name = "Pet Delivery Beacon - Glerm"
	item_path = /obj/item/choice_beacon/pet/donator/glerm
	donator_only = FALSE
	requires_purchase = TRUE

/datum/loadout_item/pocket_items/donator/coolglerm
	name = "Pet Delivery Beacon - Cool Glerm"
	item_path = /obj/item/choice_beacon/pet/donator/coolglerm
	donator_only = TRUE
	requires_purchase = FALSE
