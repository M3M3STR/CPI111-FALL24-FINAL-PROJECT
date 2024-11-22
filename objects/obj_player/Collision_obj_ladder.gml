if (keyboard_check_pressed(vk_enter) && !is_player_paused) {
    
    audio_play_sound(sfx_player_use_ladder, 3, false);
    
    obj_game_controller.player_direction = obj_player.direction;
    obj_game_controller.interaction_type = InteractionType.Ladder;
    
    is_player_paused = true;
    obj_game_controller.alarm[0] = 3 * scr_fps();
    
    // Handle room transitions based on the current room
    room_goto(scr_use_ladder(room))
}