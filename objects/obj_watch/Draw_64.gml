if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (!obj_computer.is_computer_on) {
        if (is_watch_on) {
			// Set the text to display
            watch_text1 = "Oxygen: " + string(obj_player.oxygen / 2) + "%";
            watch_text2 = "Health: " + string(health);
            watch_text3 = "Extra";
			
            // Draw the watch interface
            scr_draw_watch(watch_text1, watch_text2, watch_text3);
        }
    }
}
