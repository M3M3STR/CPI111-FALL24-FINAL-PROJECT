/// @description Handle Yes/No response for Reactor prompts
function scr_reactor_handle_yes_no(_command, _component) {
    if _command == ReactorCommand.Yes {
        scr_reset_display();
        switch (_component) {
            case "coolant_pumps":
                obj_reactor.are_pumps_cooling = !obj_reactor.are_pumps_cooling;
                var action = scr_conditional(obj_reactor.are_pumps_cooling, "Activating", "Deactivating");
                scr_set_output(action + " Coolant Pumps...");
                break;
            case "heat_exchangers":
                obj_reactor.is_heat_exchanging = !obj_reactor.is_heat_exchanging;
                var action = scr_conditional(obj_reactor.is_heat_exchanging, "Activating", "Deactivating");
                scr_set_output(action + " Heat Exchangers...");
                break;
        }
        alarm_set(2, 5 * scr_fps());
        reactor_screen = ReactorScreen.Main;
    } else if _command == ReactorCommand.No {
        scr_reset_display();
        reactor_screen = ReactorScreen.Main;
        alarm_set(2, scr_fps());
    } else {
        scr_command_unrecognized();
    }
}