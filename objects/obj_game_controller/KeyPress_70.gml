if (!obj_player.is_player_paused && !obj_computer_interface.is_computer_on) {
	is_flashlight_on = scr_conditional(is_flashlight_on, false, true)
}