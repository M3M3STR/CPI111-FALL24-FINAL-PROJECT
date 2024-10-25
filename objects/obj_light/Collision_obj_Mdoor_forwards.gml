/// @description go to rooms with doors, twards front

// You can write your code in this editor

if keyboard_check_pressed(vk_enter)==true{
	obj_game_controller.player_direction=obj_light.direction
	obj_game_controller.Entry_type=string("doorF")
	 if room==(rm_ca2_MD){
		room_goto(rm_ca1_MD)
	}else if room=(rm_engine_MD){
		room_goto(rm_ca2_MD)
	}else if room=(rm_ca1_MD){
		room_goto(rm_hp_Hallway)
	}else if room=(rm_hp_Hallway){
		room_goto(rm_front_MD)
	}
}