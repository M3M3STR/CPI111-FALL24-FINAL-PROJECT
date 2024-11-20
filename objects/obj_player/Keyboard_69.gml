if (!obj_computer_interface.is_computer_on) {
    direction -= turn_speed;
    if direction < 0 {
        direction += 360; // Wrap around to keep direction within 0-359
    }
}