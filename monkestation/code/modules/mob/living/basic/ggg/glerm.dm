/mob/living/basic/ggg/glerm
	name = "\improper glerm"
	desc = "A little guy. Look at em glerm!"
	icon = 'monkestation/icons/mob/ggg/glerm.dmi'
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

/mob/living/basic/ggg/glerm/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_VENTCRAWLER_ALWAYS, INNATE_TRAIT)
	//Thermal vision

/mob/living/basic/ggg/glerm/cool
	name = "\improper cool glerm"
	desc = "A cool little guy. Seems to be glerming harder than the rest."
	icon = 'monkestation/icons/mob/ggg/glerm.dmi'
	icon_state = "glerm_cool"
	icon_living = "glerm_cool"
	icon_dead = "glerm_cool_dead"
	gold_core_spawnable = NO_SPAWN

/mob/living/basic/ggg/glerm/cool/Moved(atom/old_loc, movement_dir, forced, list/old_locs, momentum_change = TRUE)
	. = ..()
	playsound(src, 'sound/vehicles/skateboard_roll.ogg', 50, TRUE)

/mob/living/basic/ggg/mature_glerm
	name = "\improper mature glerm"
	desc = "A massive apex predator. You should probably get away."
	icon = 'monkestation/icons/mob/ggg/glerm_adult.dmi'
	icon_state = "glerm_adult"
	icon_living = "glerm_adult"
	icon_dead = "glerm_adult_dead"
	attack_sound = 'sound/magic/demon_attack1.ogg'
	footstep_type = FOOTSTEP_MOB_CLAW
	pixel_x = -16
	base_pixel_x = -16

	gender = NEUTER
	mob_biotypes = MOB_ORGANIC
	mob_size = MOB_SIZE_HUGE
	held_w_class = WEIGHT_CLASS_GIGANTIC

	response_help_continuous = "nuzzles"
	response_help_simple = "nuzzle"
	response_disarm_continuous = "bonks"
	response_disarm_simple = "bonk"
	attack_verb_continuous = "rends"
	attack_verb_simple = "rend"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 2500
	health = 2500

	speak_emote = list("glurps")
	death_message = "stops glerming for good."

	melee_damage_lower = 95
	melee_damage_upper = 105
	obj_damage = 100
	armour_penetration = 20

	ai_controller = /datum/ai_controller/basic_controller/simple_hostile

	cached_multiplicative_slowdown = 4

/mob/living/basic/ggg/mature_glerm/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NOMOBSWAP, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_PUSHIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_RESISTCOLD, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_RESISTHEAT, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_RESISTHIGHPRESSURE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_RESISTLOWPRESSURE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_SHOCKIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_STUNIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_STRONG_GRABBER, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_TOXIMMUNE, INNATE_TRAIT)
	ADD_TRAIT(src, TRAIT_WEATHER_IMMUNE, INNATE_TRAIT)
	//Thermal vision

/obj/item/choice_beacon/pet/donator/glerm
	name = "Glerm"
	default_name = "Bingus"
	company_source = "Glerm Industries LLC"
	company_message = "Be sure to feed your glerm."
	donator_pet = /mob/living/basic/ggg/glerm

/obj/item/choice_beacon/pet/donator/coolglerm
	name = "Cool Glerm"
	default_name = "Cool Bingus"
	company_source = "Glerm Industries LLC"
	company_message = "Be sure to feed your cool glerm premium glerm food."
	donator_pet = /mob/living/basic/ggg/glerm/cool

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
