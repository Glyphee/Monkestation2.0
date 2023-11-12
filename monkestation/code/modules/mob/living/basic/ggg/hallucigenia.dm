/mob/living/basic/ggg/hallucigenia
	name = "\improper spine worm"
	desc = "A relatively large spined worm-like creature. It has a goofy looking face."
	icon = 'monkestation/icons/mob/ggg/hallucigenia.dmi'
	icon_state = "sparsa"
	icon_living = "sparsa"
	icon_dead = "sparsa_dead"

	gender = NEUTER
	mob_biotypes = MOB_ORGANIC|MOB_BUG
	pass_flags = PASSMOB
	mob_size = MOB_SIZE_LARGE
	held_w_class = WEIGHT_CLASS_NORMAL
	gold_core_spawnable = FRIENDLY_SPAWN

	response_help_continuous = "nuzzles"
	response_help_simple = "nuzzle"
	response_disarm_continuous = "bonks"
	response_disarm_simple = "bonk"
	attack_verb_continuous = "nibbles"
	attack_verb_simple = "nibble"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 5
	health = 5

	speak_emote = list("squeals")
	death_message = "flops over."

	melee_damage_lower = 1
	melee_damage_upper = 1

	ai_controller = /datum/ai_controller/basic_controller/cockroach
