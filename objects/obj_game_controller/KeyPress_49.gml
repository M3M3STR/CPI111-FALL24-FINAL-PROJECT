/// @description cheat code for turning on ship lights

if (!obj_game_controller.is_ship_powered) {
    obj_game_controller.is_ship_powered = true;
	light_cheat = true;
} else {
    obj_game_controller.is_ship_powered = false;
	light_cheat = false;
}

show_debug_message(string(obj_game_controller.is_ship_powered));
