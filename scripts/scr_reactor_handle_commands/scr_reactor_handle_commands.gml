/// @description Handle Reactor Terminal commands when unlocked
function scr_reactor_handle_commands(_command, _input) {
    if !instance_exists(obj_reactor) {
        scr_set_output("Reactor not found");
        return;
    }
    
    switch (reactor_screen) {
        case ReactorScreen.Main:
            switch (_command) {
                case ReactorCommand.Activate:
                    scr_reactor_activate();
                    break;
                case ReactorCommand.Deactivate:
                    scr_reactor_deactivate();
                    break;
                case ReactorCommand.CoolantPumps:
                    reactor_screen = ReactorScreen.Coolant;
                    scr_reactor_coolant_pumps_prompt();
                    break;
                case ReactorCommand.HeatExchangers:
                    reactor_screen = ReactorScreen.Heater;
                    scr_reactor_heat_exchangers_prompt();
                    break;
                case ReactorCommand.ControlRods:
                    reactor_screen = ReactorScreen.Rods;
					if obj_reactor.is_reactor_working {
                        scr_reactor_control_rods_prompt();
                    } else {
                        scr_set_output("Error: Reactor is not active.");
                    }
                    break;
                case ReactorCommand.Back:
					scr_close_display();
                    break;
                case ReactorCommand.Unrecognized:
                    scr_command_unrecognized();
                    break;
                default:
                    scr_command_unrecognized();
                    break;
            }
            break;

        case ReactorScreen.Coolant:
            scr_reactor_handle_yes_no(_command, "coolant_pumps");
            break;

        case ReactorScreen.Heater:
            scr_reactor_handle_yes_no(_command, "heat_exchangers");
            break;

        case ReactorScreen.Rods:
		    scr_reactor_adjust_control_rods(_command, _input);
		    break;

        default:
            reactor_screen = ReactorScreen.Main;
            scr_reset_display();
            break;
    }
}