/// @description Parse input string and return command identifier
function scr_parse_input(_input_string, _commands_synonyms, _display_type) {
    var input = _input_string;
    var command;

    switch (_display_type) {
        case DisplayType.Pause:
            command = PauseCommand.None;
            break;
        case DisplayType.Reactor:
            command = ReactorCommand.None;
            break;
        default:
            command = PauseCommand.None;
            break;
    }

    var cmd_list_length = array_length(_commands_synonyms);
    for (var i = 0; i < cmd_list_length; i++) {
        var cmd_entry = _commands_synonyms[i];
        var cmd_id = cmd_entry[0];
        var synonyms = cmd_entry[1];
        var syn_length = array_length(synonyms);
        for (var j = 0; j < syn_length; j++) {
            if (input == synonyms[j]) {
                return cmd_id;
            }
        }
    }

    if (input == "") {
        return command;
    } else {
        switch (_display_type) {
            case DisplayType.Pause:
                return PauseCommand.Unrecognized;
            case DisplayType.Reactor:
                return ReactorCommand.Unrecognized;
            default:
                return PauseCommand.Unrecognized;
        }
    }
}