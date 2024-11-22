/// @description Test display code for computer pop-up render

if (!is_computer_on) {
    var _test_sentence =
        "DO YOU SPEAK ENGLISH?.. YES I DO MY DEAR TEACHER I SPEAK ENGLISH VERY WELL!" +
        "\n\nКакое действие вы хотели бы осуществить?";
    scr_init_display(DISPLAY.TESTING, _test_sentence);
} else if (is_computer_on) {
    scr_close_display();
}
