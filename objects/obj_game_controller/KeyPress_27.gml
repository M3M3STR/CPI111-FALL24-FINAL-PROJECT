/// @description Insert description here
// You can write your code in this editor
if room!=rm_ui_Pause_menu{
	Last_room=room
	player_x=obj_player.x
	player_y=obj_player.y
room_goto(rm_ui_Pause_menu)
}else if room== rm_ui_Pause_menu{
	room_goto(Last_room)
	Entry_type=string("Esc")
}