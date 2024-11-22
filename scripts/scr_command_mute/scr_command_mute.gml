/// @description Handle the Mute command
function scr_command_mute() {
    if obj_game_controller.is_muted {
        obj_game_controller.is_muted = false;
        scr_set_output("Un-muted :)");
    } else {
        obj_game_controller.is_muted = true;
        scr_set_output("Muted :(");
    }
}