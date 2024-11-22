/// @description Handle Yes/No response for Reactor prompts
function scr_reactor_handle_yes_no(_command, _component) {
    if (_command == RCOMMAND.YES) {
        scr_reset_display();
        var _action;
        switch (_component) {
            case "coolant_pumps":
                obj_reactor.temp_cooling = !obj_reactor.are_pumps_cooling;
                _action = scr_conditional(!obj_reactor.are_pumps_cooling, "Activating", "Deactivating");
                scr_set_output(_action + " Coolant Pumps...");
                break;
            case "heat_exchangers":
                obj_reactor.temp_heating = !obj_reactor.is_heat_exchanging;
                _action = scr_conditional(!obj_reactor.is_heat_exchanging, "Activating", "Deactivating");
                scr_set_output(_action + " Heat Exchangers...");
                break;
        }
		with (obj_reactor) {
            alarm_set(0, scr_fps() * 3.9);
        }
        alarm_set(2, 4 * scr_fps());
        reactor_screen = RSCREEN.MAIN;
    } else if (_command == RCOMMAND.NO) {
        scr_reset_display();
        reactor_screen = RSCREEN.MAIN;
        alarm_set(2, scr_fps());
    } else {
        scr_command_unrecognized();
    }
}
