if (room != rm_ui_main_menu) {
    if (is_computer_on) {
        // Set font and color for display
        draw_set_font(ft_computer_2);
        draw_set_color(c_lime);
        image_alpha = 0.1;

        // Draw content based on display type
        switch (display_type) {
            case DisplayType.Testing:
                scr_draw_centered("TEST COMPUTER", draw_string, player_input, "");
                break;

            case DisplayType.Pause:
                scr_draw_centered("Paused", draw_string, o_draw_string, player_input);
                break;

            case DisplayType.Reactor:
                var temp_text = "Current Temperature: " + string(obj_reactor.temperature) + " C";
				var temp = scr_conditional(obj_reactor.is_temperature_stable, "", temp_text);
				
				scr_draw_centered("Reactor Terminal", draw_string, o_draw_string, player_input, temp);
                break;
        }
    }
}