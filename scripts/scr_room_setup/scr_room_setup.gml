function scr_room_setup(_interaction) {
    var _target_x = obj_player.x;
    var _target_y = obj_player.y;
    var _update_camera = true; // Default to updating the camera

    switch (_interaction) {
        case INTERACTION.LADDER:
            _target_x = obj_ladder.x;
            _target_y = obj_ladder.y;
            break;

        case INTERACTION.DOOREAST:
            _target_x = obj_door_west.x + 32;
            _target_y = obj_door_west.y;
            break;

        case INTERACTION.DOORWEST:
            _target_x = obj_door_east.x - 32;
            _target_y = obj_door_east.y;
            break;

        case INTERACTION.STAIRS:
            _target_x = obj_stair.x - 32;
            _target_y = obj_stair.y;
            break;

        case INTERACTION.STAIRSUP:
            _target_x = obj_stair_down.x + obj_game_controller.stair_x_offset;
            _target_y = obj_stair_down.y + obj_game_controller.stair_y_offset;
            break;

        case INTERACTION.STAIRSDOWN:
            _target_x = obj_stair_up.x + obj_game_controller.stair_x_offset;
            _target_y = obj_stair_up.y + obj_game_controller.stair_y_offset;
            break;

        case INTERACTION.ESCAPE:
            _target_x = obj_game_controller.player_x;
            _target_y = obj_game_controller.player_y;
            break;

        default:
            _update_camera = false; // No camera update for unknown interactions
            break;
    }

    // Update player position
    obj_player.x = _target_x;
    obj_player.y = _target_y;

    // Update camera position if required
    if (_update_camera) {
        camera_set_view_pos(view_camera[0], _target_x, _target_y);
    }

    // Update player direction
    obj_player.direction = obj_game_controller.player_direction;
}
