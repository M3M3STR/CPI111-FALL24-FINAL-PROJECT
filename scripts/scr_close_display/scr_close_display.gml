/// @description Close Display

function scr_close_display() {
    scr_reset_display();
    obj_player.is_player_paused = false;
    is_computer_on = false;
    visible = false;
    obj_crt.visible = false;
    obj_crt_black.visible = false;

    switch (display_type) {
        case DISPLAY.PAUSE:
            obj_light_handler.call_rerender = true;
            break;
        case DISPLAY.REACTOR:
            break;
        case DISPLAY.TESTING:
            break;
        default:
            break;
    }
}