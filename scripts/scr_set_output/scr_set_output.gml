function scr_set_output(_text) {
    alarm_set(0, 1);
    o_draw_string = "";
    o_sentence_current_length = 0;
    output = _text;
    o_sentence_length = string_length(output);
}