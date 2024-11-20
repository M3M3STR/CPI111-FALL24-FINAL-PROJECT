/// @description Handle Reactor Terminal commands when unlocked
function scr_reactor_handle_commands(_command, _input) {
    if !instance_exists(obj_reactor) {
        scr_set_output("Reactor not found");
        return;
    }
    
    switch (reactor_screen) {
        case RSCREEN.MAIN:
            switch (_command) {
                case RCOMMAND.ACTIVATE:
                    scr_reactor_activate();
                    break;
                case RCOMMAND.DEACTIVATE:
                    scr_reactor_deactivate();
                    break;
                case RCOMMAND.COOLANTPUMPS:
                    reactor_screen = RSCREEN.COOLANT;
                    scr_reactor_coolant_pumps_prompt();
                    break;
                case RCOMMAND.HEATEXCHANGERS:
                    reactor_screen = RSCREEN.HEATER;
                    scr_reactor_heat_exchangers_prompt();
                    break;
                case RCOMMAND.CONTROLRODS:
                    reactor_screen = RSCREEN.RODS;
					if obj_reactor.is_reactor_working {
                        scr_reactor_control_rods_prompt();
                    } else {
                        scr_set_output("Error: Reactor is not active.");
                    }
                    break;
                case RCOMMAND.BACK:
					scr_close_display();
                    break;
                case RCOMMAND.UNRECOGNIZED:
                    scr_command_unrecognized();
                    break;
                default:
                    scr_command_unrecognized();
                    break;
            }
            break;

        case RSCREEN.COOLANT:
            scr_reactor_handle_yes_no(_command, "coolant_pumps");
            break;

        case RSCREEN.HEATER:
            scr_reactor_handle_yes_no(_command, "heat_exchangers");
            break;

        case RSCREEN.RODS:
		    scr_reactor_adjust_control_rods(_command, _input);
		    break;

        default:
            reactor_screen = RSCREEN.MAIN;
            scr_reset_display();
            break;
    }
}