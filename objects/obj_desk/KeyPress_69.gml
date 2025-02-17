if (instance_exists(obj_desk)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < obj_player.interaction_distance) {
			audio_stop_sound(snd_sfx_jet);
            obj_player.x_speed = 0;
			obj_player.y_speed = 0;
			
			scr_init_search()
		alarm_set(0,20)

        }
    }
}