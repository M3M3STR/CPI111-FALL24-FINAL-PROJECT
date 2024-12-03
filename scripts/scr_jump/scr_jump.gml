// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_jump(x_speed,y_speed,x,y,is_on_wall){
if is_on_wall=false{
if place_meeting(x+20,y+20,obj_furnature_parent){
	x_speed=0;
	y_speed=0;
}
if place_meeting(x-20,y-20,obj_furnature_parent){
	x_speed=0;
	y_speed=0;
}
if place_meeting(x-20,y-20,tilemap){
	x_speed=0;
	y_speed=0;
}
if place_meeting(x+20,y+20,tilemap){
	x_speed=0;
	y_speed=0;
}
is_on_wall=true;
}else{

is_on_wall=false;
}
}