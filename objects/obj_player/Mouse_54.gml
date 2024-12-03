/// @description Insert description here
// You can write your code in this editor
if is_on_wall=false{
if place_meeting(x+17,y+17,obj_furnature_parent){
	x_speed=0;
	y_speed=0;
	is_on_wall=true;
}
if place_meeting(x-17,y-17,obj_furnature_parent){
	x_speed=0;
	y_speed=0;
	is_on_wall=true;
}
if place_meeting(x-17,y-17,tilemap){
	x_speed=0;
	y_speed=0;
	is_on_wall=true;
}
if place_meeting(x+17,y+17,tilemap){
	x_speed=0;
	y_speed=0;
	is_on_wall=true;
}

}else if is_on_wall{

is_on_wall=false;
}