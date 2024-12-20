// Ensures angles are within the range [0, 360)
function wrap_angle(_angle) {
    _angle = _angle mod 360;
    if (_angle < 0) _angle += 360;
    return _angle;
}

// Main direction adjustment script
function scr_adjust_direction() {
    var _target_direction = -1;

    // Determine target direction based on keyboard input
    if (keyboard_check(ord("A"))) {
        _target_direction = 180;
    } else if (keyboard_check(ord("D"))) {
        _target_direction = 0;
    } else if (keyboard_check(ord("W"))) {
        _target_direction = 90;
    } else if (keyboard_check(ord("S"))) {
        _target_direction = 270;
    }

    // Proceed only if a key is pressed
    if (_target_direction != -1) {
        // Calculate shortest parth to target direction
        var _angle_difference = ((_target_direction - direction + 540) % 360) - 180;

        // Adjust the direction towards the target
        if (abs(_angle_difference) <= turn_speed) {
            // If within turn_speed, snap to target direction
            direction = _target_direction;
        } else {
            // Move towards the target direction by turn_speed
            if (_angle_difference > 0) {
                direction += turn_speed;
            } else {
                direction -= turn_speed;
            }
            direction = wrap_angle(direction);
        }
		jet_direction = wrap_angle(direction + 180);
    }
}
