function scr_move_player(_dx, _dy) {
    // Attempt to move and collide
    var _colliders = [tilemap, obj_furnature_parent];
    var _collision = move_and_collide(_dx, _dy, _colliders);

    if (array_length(_collision) > 0) {
        // Collision occurred
        // Horizontal collision
        if (place_meeting(x + _dx, y, _colliders)) {
            x_speed = 0;
        }

        // Vertical collision
        if (place_meeting(x, y + _dy, _colliders)) {
            y_speed = 0;
        }
    }
}