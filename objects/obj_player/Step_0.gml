/// @description Insert description here
// You can write your code in this editor
event_inherited();
rad_ = rad_default_ * scale_;
lx_ = x;
ly_ = y;



if !obj_computer_interface.draw_display{
	if obj_player.player_pause==false{
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
move_and_collide(_xinput * player_speed, _yinput * player_speed, tilemap);
	}

}

if obj_player.happy==false && !place_meeting(x,y,obj_stair_down) && !place_meeting(x,y,obj_stair_down){
	obj_player.player_speed=obj_player._speed
	obj_player.happy=true
}

