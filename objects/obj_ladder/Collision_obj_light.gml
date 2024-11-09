/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_enter))
{
	obj_game_controller.player_direction=obj_light.direction
	var target_ladder = global.ladders[ladder_number - ladder_direction]
	global.playerx = target_ladder.x_out
	global.playery = target_ladder.y_out
	room_goto(target_ladder.location)
}