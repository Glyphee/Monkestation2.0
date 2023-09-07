//Plagiarized from regal rat code
/datum/ai_controller/basic_controller/moth_mother
	blackboard = list(
		BB_TARGETTING_DATUM = new /datum/targetting_datum/basic,
		BB_BASIC_MOB_FLEEING = FALSE,
		BB_FLEE_TARGETTING_DATUM = new /datum/targetting_datum/basic/ignore_faction,
	)

	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk


	planning_subtrees = list(
		/datum/ai_planning_subtree/target_retaliate/to_flee,
		/datum/ai_planning_subtree/targeted_mob_ability/riot,
		/datum/ai_planning_subtree/flee_target,
		/datum/ai_planning_subtree/attack_obstacle_in_path,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
		/datum/ai_planning_subtree/use_mob_ability/domain,
	)

/datum/ai_planning_subtree/targeted_mob_ability/riot
	target_key = BB_BASIC_MOB_FLEE_TARGET
	ability_key = BB_RAISE_HORDE_ABILITY_MM

/datum/ai_planning_subtree/use_mob_ability/domain
	ability_key = BB_DOMAIN_ABILITY_MM
