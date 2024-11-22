/// @description Test display code for computer pop-up render

if (!is_computer_on) {
    var test_sentence = "DO YOU SPEAK ENGLISH?.. YES I DO MY DEAR TEACHER I SPEAK ENGLISH VERY WELL! \n \n Какое действие вы хотели бы осуществить?";
    scr_init_display(DisplayType.Testing, test_sentence);
} else if (is_computer_on) {
    scr_close_display();
}