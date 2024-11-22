if (keyboard_check_pressed(vk_enter) && !is_player_paused) {
    
    audio_play_sound(snd_sfx_player_use_ladder, 3, false);
    
    obj_game_controller.player_direction = obj_player.direction;
    obj_game_controller.interaction_type = INTERACTION.LADDER;
    
    is_player_paused = true;
    obj_game_controller.alarm[0] = 3 * scr_fps();
    
	visible = false;
	obj_game_controller.is_flashlight_on = false;
	
    alarm_set(0, scr_fps() * 1.15)
}