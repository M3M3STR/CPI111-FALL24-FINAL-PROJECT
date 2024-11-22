function scr_check_stair_condition(axis_value, sprite_width_divisor, direction_check) {
    return scr_conditional(direction_check, axis_value > sprite_width_divisor, axis_value < sprite_width_divisor);
}