/// @description Handle Enter keypress

if is_computer_on && !is_processing {
    var input = string_lower(string_trim(player_input));
    player_input = "";
    
    if display_type == DisplayType.Pause {
        // Define commands and synonyms for the Pause menu
        var commands_synonyms = [
            [PauseCommand.Help, ["help", "h", "jelp"]],
            [PauseCommand.MainMenu, ["main menu", "men", "menu'", "main menu'", "mainmenu", "main"]],
            [PauseCommand.Pause, ["pause", "p"]],
            [PauseCommand.Fullscreen, ["fullscreen", "full-screen", "full screen", "full"]],
            [PauseCommand.Quit, ["quit"]],
            [PauseCommand.Back, ["back", "b", "return", "exit", "fuck off"]],
            [PauseCommand.Mute, ["mute"]]
        ];

        var command = scr_parse_input(input, commands_synonyms, DisplayType.Pause);

        switch (command) {
            case PauseCommand.Help:
                scr_command_help();
                break;
            case PauseCommand.MainMenu:
                scr_command_main_menu();
                break;
            case PauseCommand.Pause:
                scr_command_pause();
                break;
            case PauseCommand.Fullscreen:
                scr_command_fullscreen();
                break;
            case PauseCommand.Quit:
                scr_command_quit();
                break;
            case PauseCommand.Back:
                scr_command_back();
                break;
            case PauseCommand.Mute:
                scr_command_mute();
                break;
            case PauseCommand.None:
                scr_command_none();
                break;
            case PauseCommand.Unrecognized:
                scr_command_unrecognized();
                break;
            default:
                break;
        }

    } else if display_type == DisplayType.Reactor {
        // Commands and synonyms for the Reactor terminal
        var reactor_commands_synonyms = [
		    [ReactorCommand.Password, ["password"]],
		    [ReactorCommand.Activate, ["activate"]],
		    [ReactorCommand.Deactivate, ["deactivate"]],
		    [ReactorCommand.CoolantPumps, ["coolant pumps", "coolant", "cool", "pumps", "pump", "cooling", "cooling pumps", "cooling pump", "coolant pump"]],
		    [ReactorCommand.HeatExchangers, ["heat exchangers", "heat", "heating", "exchangers", "exchange", "heaters"]],
		    [ReactorCommand.ControlRods, ["control rods", "control", "cont", "rods", "controll", "rod", "control rod", "control_rod_status", "rod"]],
		    [ReactorCommand.Yes, ["yes", "y"]],
		    [ReactorCommand.No, ["no", "n"]],
		    [ReactorCommand.Back, ["back", "b", "return", "exit"]],
		];

        var reactor_command = scr_parse_input(input, reactor_commands_synonyms, DisplayType.Reactor);

        // Handle the reactor terminal states
        if (!obj_terminal.is_reactor_unlocked) {
            scr_reactor_handle_locked_terminal(reactor_command, input);
        } else {
            scr_reactor_handle_commands(reactor_command, input);
        }
    }
}