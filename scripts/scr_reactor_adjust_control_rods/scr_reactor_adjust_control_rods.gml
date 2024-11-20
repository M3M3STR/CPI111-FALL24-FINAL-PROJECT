function scr_reactor_adjust_control_rods(_command, _input) {
    if (_command == RCOMMAND.BACK || _input == "") {
        scr_reset_display();
        alarm_set(2, scr_fps());
        reactor_screen = RSCREEN.MAIN;
    } else {
        if (!obj_reactor.is_reactor_working) {
            scr_set_output("Error: Reactor is not active.");
            reactor_screen = RSCREEN.MAIN;
            alarm_set(2, scr_fps());
            return;
        }

        var _rod_level = real(string_digits(_input));
        if (_rod_level >= 0 && _rod_level <= 100) {
            obj_reactor.temp_rod_level = _rod_level;
            scr_reset_display();
            scr_set_output("Adjusting Control Rods...");
            show_debug_message("Rod Level: " + string(_rod_level));
            reactor_screen = RSCREEN.MAIN;
			with (obj_reactor) {
				alarm_set(0, scr_fps() * 3.9);
			}
			alarm_set(2, scr_fps() * 4);
        } else {
            scr_set_output("Please enter a valid number between 0 and 100");
        }
    }
}
