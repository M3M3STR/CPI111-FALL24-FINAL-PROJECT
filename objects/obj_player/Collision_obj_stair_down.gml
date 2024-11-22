// Set is_on_stair and adjust player speed
if (!is_on_stair) {
    player_speed /= 2;
    is_on_stair = true;
}

// Determine stair movement based on direction
switch (_direction_down) {
    case 180:
    case 0:
        obj_game_controller.stair_x_offset = x - obj_stair_down.x;
        go_down = scr_check_stair_condition(
            obj_game_controller.stair_x_offset, 
            obj_stair_down.sprite_width / 8, 
            _direction_down == 180
        );
        break;

    case 90:
    case 270:
        obj_game_controller.stair_y_offset = y - obj_stair_down.y;
        go_down = scr_check_stair_condition(
            obj_game_controller.stair_y_offset, 
            obj_stair_down.sprite_width / 8, 
            _direction_down == 270
        );
        break;
}

// Handle room transition if moving down the stairs
if (go_down) {
    obj_game_controller.stair_y_offset = y - obj_stair_down.y;
    obj_game_controller.stair_x_offset = x - obj_stair_down.x;

    obj_game_controller.player_direction = direction;
    obj_game_controller.interaction_type = INTERACTION.STAIRSDOWN;

    room_goto(scr_use_stair(room, STAIRDIRECTION.DOWN));
}