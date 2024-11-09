/// @description Insert description here
// You can write your code in this editor
if room!=rm_ui_Pause_menu{
	Last_room=room
	show_debug_message(room)
	global.playerx=obj_light.x
	global.playery=obj_light.y
	show_debug_message(string(global.playerx) + "||" + string(global.playery))
room_goto(rm_ui_Pause_menu)
}else if room== rm_ui_Pause_menu{
	room_goto(Last_room)
	Entry_type=string("Esc")
}