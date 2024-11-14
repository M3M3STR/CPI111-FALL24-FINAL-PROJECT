/// @description Insert description here
// You can write your code in this editor

if obj_game_controller.Entry_type==string("ladder"){
		obj_player.x=obj_ladder.x
		obj_player.y=obj_ladder.y
}else if obj_game_controller.Entry_type==string("doorF"){
	obj_player.x=obj_Mdoor_forwards.x+32
		obj_player.y=obj_Mdoor_forwards.y
}else if obj_game_controller.Entry_type==string("doorA"){
	obj_player.x=obj_Mdoor_forwards.x-32
		obj_player.y=obj_Mdoor_forwards.y
}else if obj_game_controller.Entry_type==string("stairs"){
}else{
}
