/// @description Load Function
// You can write your code in this editor
if(file_exists(_name)){
	var _file = file_text_open_read(_name)
	var _string = file_text_read_string(_file)
	var _json = json_parse(_string)
	global.playerx = _json.player_x
	global.playery = _json.player_y
	room_goto(_json.last_room)
	//room.
	//instance_create_layer(_json.player_x,_json.player_y,"Lights",obj_light)
	//instance_create_layer(100,100,"Lights",obj_game_controller)
	//show_debug_message(_json.player_x)
	//if instance_exists(obj_light) show_debug_message("player exists")
}