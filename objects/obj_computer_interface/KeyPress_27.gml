/// @description Pause Menu Toggle

if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (!is_computer_on) {
        var pause_sentence = "Please Enter A Command Prompt...";
        scr_init_display(DisplayType.Pause, pause_sentence);
    } else if (is_computer_on) {
        scr_close_display();
        o_light_handler.call_rerender = true;
    }
}