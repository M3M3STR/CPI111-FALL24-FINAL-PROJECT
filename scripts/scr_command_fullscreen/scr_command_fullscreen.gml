/// @description Handle the Fullscreen command
function scr_command_fullscreen() {
    if window_get_fullscreen() {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
    o_light_handler.call_rerender = true;
    obj_game_controller.is_shader_enabled = false;
    alarm_set(3, scr_fps());
}