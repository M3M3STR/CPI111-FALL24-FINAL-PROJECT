if (instance_exists(obj_door)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 50) {
            if ((sprite_index = spr_door_closed)) {
                sprite_index = spr_door_open;
                solid = false;
            } else {
                sprite_index = spr_door_closed;
                solid = true;
            }
        }
    }
}
