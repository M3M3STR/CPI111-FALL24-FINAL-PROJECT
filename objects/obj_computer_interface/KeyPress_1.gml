if (!is_processing) {
    if (keyboard_check(vk_backspace)) {
        var input_length = string_length(player_input);
        if (input_length > 0) {
            player_input = string_delete(player_input, input_length, 1);
        }
    } else if (keyboard_check(vk_delete)) {
        player_input = "";
    } else if (!keyboard_check(vk_enter) && !keyboard_check(vk_shift) && !keyboard_check(vk_escape)) {
        player_input += keyboard_lastchar;
    }
}