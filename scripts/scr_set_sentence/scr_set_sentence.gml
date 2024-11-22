/// @description Set the sentence text for display
function scr_set_sentence(_text) {
    sentence = _text;
    sentence_length = string_length(sentence);
    draw_string = "";
    sentence_current_length = 0;
    alarm_set(1, 1);
}