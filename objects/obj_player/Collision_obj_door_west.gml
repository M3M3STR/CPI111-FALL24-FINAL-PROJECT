if keyboard_check_pressed(vk_enter) == true && is_player_paused == false {
    audio_play_sound(snd_sfx_player_use_door, 3, 0);
    obj_game_controller.player_direction = obj_player.direction;
    obj_game_controller.interaction_type = INTERACTION.DOORWEST;
    is_player_paused = true;
    obj_game_controller.alarm[0] = 3 * scr_fps();
	
	room_goto(scr_use_door(room, DIRECTION.WEST));
}