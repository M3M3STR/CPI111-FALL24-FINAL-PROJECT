/// @description Typing effect for sentence text

if (is_computer_on && sentence_length > sentence_current_length) {
    is_processing = true;
    alarm_set(1, 0.02 * scr_fps());
    sentence_current_length++;
    draw_string += string_char_at(sentence, sentence_current_length);
} else {
    is_processing = false;
}