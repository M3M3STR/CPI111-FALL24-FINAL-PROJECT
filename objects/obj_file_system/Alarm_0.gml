/// @description Save Game
// You can write your code in this editor
_game_obj = {
	player_x : obj_game_controller.player_x,
	player_y : obj_game_controller.player_y,
	last_room : obj_game_controller.last_room,
	player_direction : obj_game_controller.player_direction,
	is_flashlight_on : obj_game_controller.is_flashlight_on,
	is_shader_enabled : obj_game_controller.is_shader_enabled,
	stair_x_offset : obj_game_controller.stair_x_offset,
	stair_y_offset : obj_game_controller.stair_y_offset,
	is_muted : obj_game_controller.is_muted,
	is_ship_powered : obj_game_controller.is_ship_powered,
	light_cheat : obj_game_controller.light_cheat
}

if(instance_exists(obj_reactor)){
	_reactor = {
		reactor_exists : true,
		is_reactor_working : obj_reactor.is_reactor_working,
		temperature : obj_reactor.temperature,
		rate : obj_reactor.rate,
		are_pumps_cooling : obj_reactor.are_pumps_cooling,
		coolant_reduction : obj_reactor.coolant_reduction,
		is_heat_exchanging : obj_reactor.is_heat_exchanging,
		heat_generation : obj_reactor.heat_generation,
		power_output : obj_reactor.power_output,
		control_rod_level : obj_reactor.control_rod_level,
		control_rod_status : obj_reactor.control_rod_status,
		temp_working : obj_reactor.temp_working,
		temp_rod_level : obj_reactor.temp_rod_level,
		temp_heating : obj_reactor.temp_heating,
		temp_cooling : obj_reactor.temp_cooling
	}
}
else{
	_reactor = {
		reactor_exists : false
	}
}

var _json_obj = [_game_obj,_reactor]
var _json_data = json_stringify(_json_obj)


var _file = file_text_open_write(_name);
file_text_write_string(_file, _json_data);
file_text_close(_file);