/// @description go to rooms with doors, twards back
// You can write your code in this editor
if keyboard_check_pressed(vk_enter)==true{

	obj_game_controller.player_direction=obj_player.direction
	obj_game_controller.Entry_type=string("doorA")
	 if room==(rm_ca1_MD){
		room_goto(rm_ca2_MD)
	}else if room=(rm_ca2_MD){
		room_goto(rm_engine_MD)
	}else if room=(rm_hp_Hallway){
		room_goto(rm_ca1_MD)
	}else if room=(rm_front_MD){
		room_goto(rm_hp_Hallway)
	}
}