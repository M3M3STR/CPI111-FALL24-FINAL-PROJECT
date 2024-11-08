/// @description Insert description here
// You can write your code in this editor
if obj_game_controller.Entry_type==string("ladder"){
		obj_light.x=obj_ladder.x
		obj_light.y=obj_ladder.y
}else if obj_game_controller.Entry_type==string("doorF"){
	obj_light.x=obj_Mdoor_forwards.x+32
		obj_light.y=obj_Mdoor_forwards.y
}else if obj_game_controller.Entry_type==string("doorA"){
	obj_light.x=obj_Mdoor_forwards.x-32
		obj_light.y=obj_Mdoor_forwards.y
}else if obj_game_controller.Entry_type==string("stairs"){
}else{
}
Flashlight = false;

global.inventory = [];
