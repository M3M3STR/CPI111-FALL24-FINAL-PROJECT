/// @description Save Function

var _file = file_text_open_write(_name)

var _player = 
{
	player_x : global.playerx,
	player_y : global.playery,
	last_room : obj_game_controller.Last_room
}

var _string = json_stringify(_player)
file_text_write_string(_file,_string)
file_text_close(_file)


