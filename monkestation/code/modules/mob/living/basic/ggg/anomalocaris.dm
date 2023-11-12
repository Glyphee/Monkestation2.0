/mob/living/basic/ggg/anomalocaris
	name = "\improper mega shrimp"
	desc = "A shrimp-like creature, reconstructed from early cambrian, and alien DNA."
	icon = 'monkestation/icons/mob/ggg/anomalocaris.dmi'
	icon_state = "canadesis"
	icon_living = "canadesis"
	icon_dead = "canadesis_dead"

	gender = NEUTER
	mob_biotypes = MOB_ORGANIC
	pass_flags = PASSTABLE
	mob_size = MOB_SIZE_LARGE
	held_w_class = WEIGHT_CLASS_NORMAL
	gold_core_spawnable = FRIENDLY_SPAWN
	movement_type = FLYING

	response_help_continuous = "nuzzles"
	response_help_simple = "nuzzle"
	response_disarm_continuous = "bonks"
	response_disarm_simple = "bonk"
	attack_verb_continuous = "pierces"
	attack_verb_simple = "pierce"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 30
	health = 30

	speak_emote = list("chitters")
	death_message = "splats to the ground."

	melee_damage_lower = 5
	melee_damage_upper = 7

	ai_controller = /datum/ai_controller/basic_controller/dog
