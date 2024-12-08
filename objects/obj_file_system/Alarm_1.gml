/// @description Load Game Controller
// You can write your code in this editor

if(file_exists(_name)){
	var _file = file_text_open_read(_name)
	var _string = file_text_read_string(_file)
	var _json = json_parse(_string)
	_game_obj = _json[0]
	_reactor = _json[1]
	show_debug_message(_game_obj)
	
	
	obj_game_controller.interaction_type = INTERACTION.LOAD;
	obj_game_controller.room_to_load = _game_obj.last_room
	obj_game_controller.player_x_saved = _game_obj.player_x
	obj_game_controller.player_y_saved = _game_obj.player_y
	obj_game_controller.last_room = _game_obj.last_room
	obj_game_controller.player_direction = _game_obj.player_direction
	obj_game_controller.is_flashlight_on = _game_obj.is_flashlight_on
	obj_game_controller.is_shader_enabled = _game_obj.is_shader_enabled
	obj_game_controller.stair_x_offset = _game_obj.stair_x_offset
	obj_game_controller.stair_y_offset = _game_obj.stair_y_offset
	obj_game_controller.is_muted = _game_obj.is_muted
	obj_game_controller.is_ship_powered = _game_obj.is_ship_powered
	obj_game_controller.light_cheat = _game_obj.light_cheat
	room_goto(rm_ca_a_floor_2)
	alarm[3] = 5
}