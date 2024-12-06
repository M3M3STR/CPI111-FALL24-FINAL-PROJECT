if (!instance_exists(obj_textbox)) {
    // Horizontal movement
    if (x != target_x) {
        if (x < target_x) {
            x += slide_speed;
            if (x > target_x) x = target_x; // Clamp to target_x to prevent overshooting
            moving_right = true;
        } else if (x > target_x) {
            x -= slide_speed;
            if (x < target_x) x = target_x; // Clamp to target_x to prevent overshooting
            moving_left = true;
        }
    } else if (y != target_y) { // Only check vertical if horizontal is complete
        if (y < target_y) {
            y += slide_speed;
            if (y > target_y) y = target_y; // Clamp to target_y to prevent overshooting
            moving_front = true; // Moving forward
        } else if (y > target_y) {
            y -= slide_speed;
            if (y < target_y) y = target_y; // Clamp to target_y to prevent overshooting
            moving_back = true; // Moving backward
        }
    }
}

// Update sprite based on movement direction
if (moving_right) {
    sprite_index = spr_crew_right_idle;
} else if (moving_left) {
    sprite_index = spr_crew_left_idle;
} else if (moving_front) {
    sprite_index = spr_crew_front_idle;
} else if (moving_back) {
    sprite_index = spr_crew_back_idle;
}

