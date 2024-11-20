if (instance_exists(obj_terminal)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 100) {
            with (obj_computer) {
                event_user(0);
            }
        }
    }
}