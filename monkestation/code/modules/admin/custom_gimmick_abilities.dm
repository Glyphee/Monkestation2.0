/datum/action/cooldown/spell/icon_change
	name = "Icon Change"
	desc = "Change your icon state."
	button_icon = 'icons/mob/actions/actions_animal.dmi'
	button_icon_state = "sniper_zoom"
	background_icon_state = "bg_alien"
	overlay_icon_state = "bg_alien_border"
	cooldown_time = 0 SECONDS
	click_to_activate = FALSE
	/// The alpha we go to when sneaking.
	var/original_icon = ""
	var/alternate_icon = ""

/datum/action/cooldown/spell/icon_change/cast(atom/cast_on)
	. = ..()
	if(owner.icon_state == original_icon)
		owner.icon_state = alternate_icon
	else
		owner.icon_state = original_icon
	return TRUE
