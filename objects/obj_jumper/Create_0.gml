/// @description Insert description here
// You can write your code in this editor
var jump_speed=0.001*(distance_to_point(mouse_x,mouse_y)+1)*10
if jump_speed<2{
	jump_speed=2
}
if jump_speed>4{
	jump_speed=4
}
move_towards_point(mouse_x,mouse_y,jump_speed)
alarm_set(0,0.1*game_get_speed(gamespeed_fps))