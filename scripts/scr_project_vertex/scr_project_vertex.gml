function scr_project_vertex(
    _vertex_buffer,
    _point_a_x,
    _point_a_y,
    _point_b_x,
    _point_b_y,
    _light_x,
    _light_y,
    _color
) {
    // Shadows are infinite - almost, just enough to go off-screen
    var _shadow_length = 1000;

    var _projected_a_x,
        _projected_a_y,
        _projected_b_x,
        _projected_b_y,
        _length_scaler;

    // Calculate unit vector length to point A
    _projected_a_x = _point_a_x - _light_x;
    _projected_a_y = _point_a_y - _light_y;
    _length_scaler =
        (1.0 * _shadow_length) /
        sqrt(_projected_a_x * _projected_a_x + _projected_a_y * _projected_a_y); // Unit length scaler * shadow length
    _projected_a_x = _point_a_x + _projected_a_x * _length_scaler;
    _projected_a_y = _point_a_y + _projected_a_y * _length_scaler;

    // Calculate unit vector length to point B
    _projected_b_x = _point_b_x - _light_x;
    _projected_b_y = _point_b_y - _light_y;
    _length_scaler =
        (1.0 * _shadow_length) /
        sqrt(_projected_b_x * _projected_b_x + _projected_b_y * _projected_b_y); // Unit length scaler * shadow length
    _projected_b_x = _point_b_x + _projected_b_x * _length_scaler;
    _projected_b_y = _point_b_y + _projected_b_y * _length_scaler;

    // Build the quad
    vertex_position(_vertex_buffer, _point_a_x, _point_a_y);
    vertex_color(_vertex_buffer, _color, 1);

    vertex_position(_vertex_buffer, _point_b_x, _point_b_y);
    vertex_color(_vertex_buffer, _color, 1);

    vertex_position(_vertex_buffer, _projected_a_x, _projected_a_y);
    vertex_color(_vertex_buffer, _color, 1);

    vertex_position(_vertex_buffer, _point_b_x, _point_b_y);
    vertex_color(_vertex_buffer, _color, 1);

    vertex_position(_vertex_buffer, _projected_a_x, _projected_a_y);
    vertex_color(_vertex_buffer, _color, 1);

    vertex_position(_vertex_buffer, _projected_b_x, _projected_b_y);
    vertex_color(_vertex_buffer, _color, 1);
}
