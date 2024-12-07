if (instance_exists(obj_terminal)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 100) {
			audio_stop_sound(snd_sfx_jet);
            obj_player.x_speed = 0;
			obj_player.y_speed = 0;
			obj_player.visible = false;
			with (obj_computer) {
                event_user(0);
            }
        }
    }
}