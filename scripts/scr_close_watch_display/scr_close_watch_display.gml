function scr_close_watch_display() {
    // Reset display properties
    obj_player.is_player_paused = false;
    is_watch_on = false;
    visible = false;

    watch_xscale = 1;
    watch_yscale = 1;
    watch_x = 0;
    watch_y = 0;
}
