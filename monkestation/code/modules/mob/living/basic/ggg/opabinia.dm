/mob/living/basic/ggg/opabinia
	name = "\improper proboscis shrimp"
	desc = "A strange "
	icon = 'monkestation/icons/mob/ggg/opabinia.dmi'
	icon_state = "opabinia"
	icon_living = "opabinia"
	icon_dead = "opabinia_dead"

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
	attack_verb_continuous = "nips"
	attack_verb_simple = "nip"
	attack_vis_effect = ATTACK_EFFECT_BITE

	maxHealth = 20
	health = 20

	speak_emote = list("chitters")
	death_message = "splats to the ground."

	melee_damage_lower = 3
	melee_damage_upper = 5

	ai_controller = /datum/ai_controller/basic_controller/dog
