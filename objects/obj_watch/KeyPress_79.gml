if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (!obj_computer.is_computer_on) {
        if (is_watch_on) {
            // Close the watch display
			audio_play_sound(snd_sfx_watch_close, 1, false);
			scr_close_watch_display();
			obj_player.is_player_paused=false
        } else {
            // Initialize the watch display
            audio_play_sound(snd_sfx_watch_open, 1, false);
			scr_init_watch_display();
			obj_player.is_player_paused=true
        }
    }
}
