function scr_reactor_adjust_control_rods(_command, _input) {
    if ((_command == ReactorCommand.Back) || (_input == "")) {
        scr_reset_display();
        alarm_set(2, scr_fps());
        reactor_screen = ReactorScreen.Main;
    } else {
        if (!obj_reactor.is_reactor_working) {
            scr_set_output("Error: Reactor is not active.");
            reactor_screen = ReactorScreen.Main;
            alarm_set(2, scr_fps());
            return;
        }

        var rod_level = real(string_digits(_input));
        if ((rod_level >= 0) && (rod_level <= 100)) {
		    obj_reactor.control_rod_level = rod_level;
		    scr_reset_display();
		    scr_set_output("Adjusting Control Rods...");
		    show_debug_message("Rod Level: " + string(rod_level));
		    obj_reactor.is_temperature_stable = false;
		    with (obj_reactor) {
				alarm_set(0, scr_fps() * 0.1);
			}
		} else {	
            scr_set_output("Please enter a valid number between 0 and 100");
        }
    }
}