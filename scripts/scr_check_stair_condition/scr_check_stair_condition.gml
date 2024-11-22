function scr_check_stair_condition(
    _axis_value,
    _sprite_width_divisor,
    _direction_check
) {
    return scr_conditional(
        _direction_check,
        _axis_value > _sprite_width_divisor,
        _axis_value < _sprite_width_divisor
    );
}
