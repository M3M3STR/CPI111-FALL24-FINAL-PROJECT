/// @description Typing effect for output text

if (is_computer_on && o_sentence_length > o_sentence_current_length) {
    is_processing = true;
    alarm_set(0, 0.02 * scr_fps());
    o_sentence_current_length++;
    o_draw_string += string_char_at(output, o_sentence_current_length);
} else {
    is_processing = false;
}