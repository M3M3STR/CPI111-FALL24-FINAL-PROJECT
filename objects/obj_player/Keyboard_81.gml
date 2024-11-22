if (!obj_computer.is_computer_on) {
    direction += turn_speed;
    if (direction > 360) {
        direction -= 360; // Wrap around to keep direction within 0-359
    }
}