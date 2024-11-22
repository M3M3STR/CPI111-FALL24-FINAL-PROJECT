function scr_draw_watch(_text1, _text2, _text3) {
    // Set font and color
    draw_set_font(fnt_computer_smooth);
    draw_set_color(c_lime);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    // Use the stored watch position and scaling
    var _x = watch_x;
    var _y = watch_y;
    var _watch_width = 1280;
    var _watch_height = 960;

    // Offset variables for fine-tuning
    var x_offset = -240;
    var y_offset = 295;

    // Calculate text positions relative to the watch
    var _start_x = _x + _watch_width / 2 + x_offset;
    var _start_y = _y + y_offset;

    var _line_spacing = 30;

    // Draw text lines
    draw_text(_start_x, _start_y, _text1);
    draw_text(_start_x, _start_y + _line_spacing, _text2);
    draw_text(_start_x, _start_y + _line_spacing * 2, _text3);
}
