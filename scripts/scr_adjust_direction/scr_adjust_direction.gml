// Ensures angles are within the range [0, 360)
function wrap_angle(angle) {
    if (angle < 0) return angle + 360;
    if (angle >= 360) return angle - 360;
    return angle;
}

// Main direction adjustment script
function scr_adjust_direction() {
    var target_direction = -1;
    
    // Determine target direction based on keyboard input
    if (keyboard_check(ord("A"))) {
        target_direction = 180;
    } else if (keyboard_check(ord("D"))) {
        target_direction = 0;
    } else if (keyboard_check(ord("W"))) {
        target_direction = 90;
    } else if (keyboard_check(ord("S"))) {
        target_direction = 270;
    }

    // Proceed only if a key is pressed
    if (target_direction != -1) {
        // Calculate shortest parth to target direction
        var _angle_difference = ((target_direction - direction + 540) % 360) - 180;
		
        // Adjust the direction towards the target
        if (abs(_angle_difference) <= turn_speed) {
            // If within turn_speed, snap to target direction
            direction = target_direction;
        } else {
            // Move towards the target direction by turn_speed
            if (_angle_difference > 0) {
                direction += turn_speed;
            } else {
                direction -= turn_speed;
            }
            direction = wrap_angle(direction);
        }
    }
}