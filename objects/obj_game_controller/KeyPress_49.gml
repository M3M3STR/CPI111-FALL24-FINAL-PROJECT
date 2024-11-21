/// @description cheat code for turning on ship lights

if (!obj_game_controller.is_ship_powered) {
    obj_game_controller.is_ship_powered = true;
} else {
    obj_game_controller.is_ship_powered = false;
}
show_debug_message(string(obj_game_controller.is_ship_powered));
