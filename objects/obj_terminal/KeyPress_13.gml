if (instance_exists(obj_terminal)) {
	obj_player.x_speed = 0;
	obj_player.y_speed = 0;
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 100) {
            obj_player.visible = false;
			with (obj_computer) {
                event_user(0);
            }
        }
    }
}