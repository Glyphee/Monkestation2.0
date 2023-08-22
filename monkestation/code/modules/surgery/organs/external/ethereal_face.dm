/obj/item/organ/external/ethereal_face
	name = "ethereal brand"
	desc = "A strange metallic structure that ethereals wear on their faces."
	icon_state = "ethereal_face"
	icon = 'monkestation/icons/obj/medical/organs/organs.dmi'

	preference = "feature_ethereal_face"
	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_EXTERNAL_FRILLS

	// use_mob_sprite_as_obj_sprite = TRUE
	// bodypart_overlay = /datum/bodypart_overlay/mutant/goblin_ears

/datum/bodypart_overlay/mutant/ethereal_face
	layers = EXTERNAL_ADJACENT | EXTERNAL_FRONT
	feature_key = "ethereal_face"

/datum/bodypart_overlay/mutant/ethereal_face/get_global_feature_list()
	return GLOB.ethereal_face_list

/datum/bodypart_overlay/mutant/ethereal_face/get_base_icon_state()
	return sprite_datum.icon_state

/datum/bodypart_overlay/mutant/ethereal_face/can_draw_on_bodypart(mob/living/carbon/human/human)
	return TRUE
