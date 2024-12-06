var dir = irandom(3);
var step_size = 32 * 1.4; // Movement distance increased by 40%
moving_right = false;
moving_left = false;
moving_front = false;
moving_back = false;


// Set the target position based on direction, with collision handling
switch (dir) {
    case 0: if (place_free(x, y - step_size)) target_y = y - step_size; break; // Move up
    case 1: if (place_free(x + step_size, y)) target_x = x + step_size; break; // Move right
    case 2: if (place_free(x, y + step_size)) target_y = y + step_size; break; // Move down
    case 3: if (place_free(x - step_size, y)) target_x = x - step_size; break; // Move left
}

// Reset the alarm for the next movement, with random timing
alarm[0] = room_speed * random_range(2.5, 5);
