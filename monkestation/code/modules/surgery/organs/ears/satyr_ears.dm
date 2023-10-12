/obj/item/organ/external/satyr_ears
	name = "satyr ears"
	desc = "you shouldnt see this"
	icon_state = ""
	icon = 'monkestation/icons/obj/medical/organs/organs.dmi'

	preference = "feature_satyr_ears"
	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_EXTERNAL_OUTER_EARS

	use_mob_sprite_as_obj_sprite = TRUE
	bodypart_overlay = /datum/bodypart_overlay/mutant/satyr_ears

/datum/bodypart_overlay/mutant/satyr_ears
	layers = EXTERNAL_ADJACENT | EXTERNAL_FRONT
	feature_key = "satyr_ears"

/datum/bodypart_overlay/mutant/satyr_ears/get_global_feature_list()
	return GLOB.satyr_ears_list

/datum/bodypart_overlay/mutant/satyr_ears/get_base_icon_state()
	return sprite_datum.icon_state

/datum/bodypart_overlay/mutant/satyr_ears/can_draw_on_bodypart(mob/living/carbon/human/human)
	return TRUE
