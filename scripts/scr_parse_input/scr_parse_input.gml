/// @description Parse input string and return command identifier
function scr_parse_input(_input_string, _commands_synonyms, _display_type) {
    var _input = _input_string;
    var _command;

    switch (_display_type) {
        case DISPLAY.PAUSE:
            _command = PCOMMAND.NONE;
            break;
        case DISPLAY.REACTOR:
            _command = RCOMMAND.NONE;
            break;
        default:
            _command = PCOMMAND.NONE;
            break;
    }

    var _cmd_list_length = array_length(_commands_synonyms);
    for (var _i = 0; _i < _cmd_list_length; _i++) {
        var _cmd_entry = _commands_synonyms[_i];
        var _cmd_id = _cmd_entry[0];
        var _synonyms = _cmd_entry[1];
        var _syn_length = array_length(_synonyms);
        for (var _j = 0; _j < _syn_length; _j++) {
            if (_input == _synonyms[_j]) {
                return _cmd_id;
            }
        }
    }

    if (_input == "") {
        return _command;
    } else {
        switch (_display_type) {
            case DISPLAY.PAUSE:
                return PCOMMAND.UNRECOGNIZED;
            case DISPLAY.REACTOR:
                return RCOMMAND.UNRECOGNIZED;
            default:
                return PCOMMAND.UNRECOGNIZED;
        }
    }
}
