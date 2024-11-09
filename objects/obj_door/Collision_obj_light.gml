/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter))
{
	obj_game_controller.player_direction=obj_light.direction
	var target_door = global.doors[door_number + door_direction]
	global.playerx = target_door.x_out
	global.playery = target_door.y_out
	room_goto(target_door.location)
}