/// @description Insert description here
// You can write your code in this editor
//show_debug_message("p")
if (keyboard_check_pressed(vk_enter))
{
	obj_game_controller.player_direction=obj_light.direction
	room_goto(destination_room)
	show_debug_message(room_get_name(destination_room))
	obj_light.x = landing_x
	obj_light.y = landing_y
	
}

