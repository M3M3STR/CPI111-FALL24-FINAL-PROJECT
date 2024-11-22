// Set is_on_stair and adjust player speed
if (!is_on_stair) {
    player_speed /= 2;
    is_on_stair = true;
}

// Determine stair movement based on direction
switch (_direction_up) {
    case 180:
    case 0:
        obj_game_controller.stair_x_offset = x - obj_stair_up.x;
        go_up = scr_check_stair_condition(
            obj_game_controller.stair_x_offset, 
            obj_stair_up.sprite_width / 8, 
            _direction_up == 180
        );
        break;

    case 90:
    case 270:
        obj_game_controller.stair_y_offset = y - obj_stair_up.y;
        go_up = scr_check_stair_condition(
            obj_game_controller.stair_y_offset, 
            obj_stair_up.sprite_width / 8, 
            _direction_up == 90
        );
        break;
}

// Handle room transition if moving up the stairs
if (go_up) {
    obj_game_controller.stair_y_offset = y - obj_stair_up.y;
    obj_game_controller.stair_x_offset = x - obj_stair_up.x;

    obj_game_controller.player_direction = direction;
    obj_game_controller.interaction_type = InteractionType.StairsUp;

    room_goto(scr_use_stair(room, StairDirection.Up));
}