/// @description Pause Menu Toggle

if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (!is_computer_on) {
        var _pause_sentence = "Please Enter A Command Prompt...";
        scr_init_display(DISPLAY.PAUSE, _pause_sentence);
    } else if (is_computer_on) {
        scr_close_display();
        obj_light_handler.call_rerender = true;
    }
}
