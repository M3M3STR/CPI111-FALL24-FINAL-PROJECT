/// @description Pause Menu Toggle

if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (!is_computer_on && !obj_watch.is_watch_on) {
        var _pause_sentence = "Please Enter A Command Prompt...";
        scr_init_display(DISPLAY.PAUSE, _pause_sentence);
    } else if (is_computer_on) {
		scr_close_display();
		obj_player.visible = true;
        obj_light_handler.call_rerender = true;
    }
	is_loading_text = true;
}
