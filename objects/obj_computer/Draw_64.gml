if (room != rm_ui_main_menu) {
    if (is_computer_on) {
        show_debug_message(string(DISPLAY.DEFAULT) + " | " + string(DISPLAY.REACTOR));
        show_debug_message(string(display_type));

        // Set font and color for display
        draw_set_font(fnt_computer_smooth);
        draw_set_color(c_lime);
        image_alpha = 0.1;

        // Draw content based on display type
        switch (display_type) {
            case DISPLAY.TESTING:
            case DISPLAY.DEFAULT:
                scr_draw_centered("Krasnoye Echo", draw_string, player_input, "");
                break;

            case DISPLAY.PAUSE:
                scr_draw_centered("Paused", draw_string, o_draw_string, player_input);
                break;

            case DISPLAY.REACTOR:
                var _temp_text =
                    "\n\n\n" +
                    "Reactor Temperature: " +
                    string(obj_reactor.temperature) +
                    " C | " +
                    string(obj_reactor.power_output) +
                    "  kwH";

                _temp_text = scr_conditional(
                    obj_terminal.is_reactor_unlocked && reactor_screen == RSCREEN.MAIN && !is_loading_text,
                    _temp_text,
                    ""
                );

                scr_draw_centered("Reactor Terminal", draw_string, o_draw_string, player_input, _temp_text);
                break;
        }
    }
}
