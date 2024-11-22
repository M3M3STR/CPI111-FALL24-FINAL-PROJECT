/// @description Close Display

function scr_close_display() {
    scr_reset_display();
    obj_player.is_player_paused = false;
    is_computer_on = false;
    visible = false;
    obj_crt.visible = false;
    obj_crt_black.visible = false;

    switch (display_type) {
        case DisplayType.Pause:
            o_light_handler.call_rerender = true;
            break;
        case DisplayType.Reactor:
            break;
        case DisplayType.Testing:
            break;
        default:
            break;
    }
}