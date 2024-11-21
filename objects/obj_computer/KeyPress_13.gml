/// @description Handle Enter keypress

if (is_computer_on && !is_processing) {
    var _input = string_lower(string_trim(player_input));
    player_input = "";
    var _commands_synonyms = [];
    var _command = -1;

    if (display_type == DISPLAY.PAUSE) {
        // Define commands and synonyms for the Pause menu
        _commands_synonyms = [
            [PCOMMAND.HELP, ["help", "h", "jelp"]],
            [PCOMMAND.MAINMENU, ["main menu", "men", "menu'", "main menu'", "mainmenu", "main"]],
            [PCOMMAND.PAUSE, ["pause", "p"]],
            [PCOMMAND.FULLSCREEN, ["fullscreen", "full-screen", "full screen", "full"]],
            [PCOMMAND.QUIT, ["quit"]],
            [PCOMMAND.BACK, ["back", "b", "return", "exit", "fuck off"]],
            [PCOMMAND.MUTE, ["mute"]]
        ];

        _command = scr_parse_input(_input, _commands_synonyms, DISPLAY.PAUSE);

        switch (_command) {
            case PCOMMAND.HELP:
                scr_command_help();
                break;
            case PCOMMAND.MAINMENU:
                scr_command_main_menu();
                break;
            case PCOMMAND.PAUSE:
                scr_command_pause();
                break;
            case PCOMMAND.FULLSCREEN:
                scr_command_fullscreen();
                break;
            case PCOMMAND.QUIT:
                scr_command_quit();
                break;
            case PCOMMAND.BACK:
                scr_command_back();
                break;
            case PCOMMAND.MUTE:
                scr_command_mute();
                break;
            case PCOMMAND.NONE:
                scr_command_none();
                break;
            case PCOMMAND.UNRECOGNIZED:
                scr_command_unrecognized();
                break;
            default:
                break;
        }
    } else if (display_type == DISPLAY.REACTOR) {
        // Commands and synonyms for the Reactor terminal
        _commands_synonyms = [
            [RCOMMAND.PASSWORD, ["password"]],
            [RCOMMAND.ACTIVATE, ["activate"]],
            [RCOMMAND.DEACTIVATE, ["deactivate"]],
            [
                RCOMMAND.COOLANTPUMPS,
                [
                    "coolant pumps",
                    "coolant",
                    "cool",
                    "pumps",
                    "pump",
                    "cooling",
                    "cooling pumps",
                    "cooling pump",
                    "coolant pump"
                ]
            ],
            [
                RCOMMAND.HEATEXCHANGERS,
                ["heat exchangers", "heat", "heating", "exchangers", "exchange", "heaters"]
            ],
            [
                RCOMMAND.CONTROLRODS,
                [
                    "control rods",
                    "control",
                    "cont",
                    "rods",
                    "controll",
                    "rod",
                    "control rod",
                    "control_rod_status",
                    "rod"
                ]
            ],
            [RCOMMAND.YES, ["yes", "y"]],
            [RCOMMAND.NO, ["no", "n"]],
            [RCOMMAND.BACK, ["back", "b", "return", "exit"]]
        ];

        _command = scr_parse_input(_input, _commands_synonyms, DISPLAY.REACTOR);

        // Handle the reactor terminal states
        if (!obj_terminal.is_reactor_unlocked) {
            scr_reactor_handle_locked_terminal(_command, _input);
        } else {
            scr_reactor_handle_commands(_command, _input);
        }
    }
	is_loading_text = true;
}
