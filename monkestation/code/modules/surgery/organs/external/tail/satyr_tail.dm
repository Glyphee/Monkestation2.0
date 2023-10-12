/obj/item/organ/external/satyr_tail
	name = "satyr tail"
	desc = "A short and stubby goat tail"
	icon_state = ""
	icon = 'monkestation/icons/obj/medical/organs/organs.dmi'

	preference = "feature_satyr_tail"
	zone = BODY_ZONE_HEAD
	slot = ORGAN_SLOT_EXTERNAL_TAIL

	use_mob_sprite_as_obj_sprite = TRUE
	bodypart_overlay = /datum/bodypart_overlay/mutant/satyr_tail

/datum/bodypart_overlay/mutant/satyr_tail
	layers = EXTERNAL_ADJACENT | EXTERNAL_FRONT
	feature_key = "satyr_tail"

/datum/bodypart_overlay/mutant/satyr_tail/get_global_feature_list()
	return "short"

/datum/bodypart_overlay/mutant/satyr_tail/get_base_icon_state()
	return sprite_datum.icon_state

/datum/bodypart_overlay/mutant/satyr_tail/can_draw_on_bodypart(mob/living/carbon/human/human)
	return TRUE
