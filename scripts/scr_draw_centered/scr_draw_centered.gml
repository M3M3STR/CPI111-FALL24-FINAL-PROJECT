function scr_draw_centered(_title, _text1, _text2, _player_input, _extra_text = "") {
    draw_set_halign(fa_center);
    draw_text(sprite_width / 2 + x - camera_get_view_x(view_camera[0]), text_y, _title);

    draw_set_halign(fa_left);
    draw_text_ext(text_x, text_y + 64, _text1, scale * 2, text_x_end);

    if (_extra_text != "") {
        draw_text_ext(text_x, text_y + 32, _extra_text, scale * 2, text_x_end);
    }

    draw_text_ext(text_x, text_y + 128, _text2, scale * 2, text_x_end);
    draw_text_ext(
        text_x,
        sprite_height / 2 + y - camera_get_view_y(view_camera[0]),
        _player_input,
        scale * 2,
        text_x_end
    );
}
