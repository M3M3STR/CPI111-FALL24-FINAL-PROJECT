function scr_draw_centered(title, text1, text2, player_input, extra_text = "") {
    draw_set_halign(textalign_center);
    draw_text((sprite_width / 2) + x - camera_get_view_x(view_camera[0]), text_y, title);

    draw_set_halign(textalign_left);
    draw_text_ext(text_x, text_y + 64, text1, scale * 2, text_x_end);

    if (extra_text != "") {
        draw_text_ext(text_x, text_y + 32, extra_text, scale * 2, text_x_end);
    }

    draw_text_ext(text_x, text_y + 128, text2, scale * 2, text_x_end);
    draw_text_ext(text_x, (sprite_height / 2) + y - camera_get_view_y(view_camera[0]), player_input, scale * 2, text_x_end);
}