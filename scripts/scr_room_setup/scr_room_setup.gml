function scr_room_setup(interaction) {
    var target_x = obj_player.x;
    var target_y = obj_player.y;
    var update_camera = true; // Default to updating the camera

    switch (interaction) {
        case InteractionType.Ladder:
            target_x = obj_ladder.x;
            target_y = obj_ladder.y;
            break;

        case InteractionType.DoorEast:
            target_x = obj_door_west.x + 32;
            target_y = obj_door_west.y;
            break;

        case InteractionType.DoorWest:
            target_x = obj_door_east.x - 32;
            target_y = obj_door_east.y;
            break;

        case InteractionType.Stairs:
            target_x = obj_stair.x - 32;
            target_y = obj_stair.y;
            break;

        case InteractionType.StairsUp:
            target_x = obj_stair_down.x + obj_game_controller.stair_x_offset;
            target_y = obj_stair_down.y + obj_game_controller.stair_y_offset;
            break;

        case InteractionType.StairsDown:
            target_x = obj_stair_up.x + obj_game_controller.stair_x_offset;
            target_y = obj_stair_up.y + obj_game_controller.stair_y_offset;
            break;

        case InteractionType.Escape:
            target_x = obj_game_controller.player_x;
            target_y = obj_game_controller.player_y;
            break;

        default:
            update_camera = false; // No camera update for unknown interactions
            break;
    }

    // Update player position
    obj_player.x = target_x;
    obj_player.y = target_y;

    // Update camera position if required
    if (update_camera) {
        camera_set_view_pos(view_camera[0], target_x, target_y);
    }

    // Update player direction
    obj_player.direction = obj_game_controller.player_direction;
}