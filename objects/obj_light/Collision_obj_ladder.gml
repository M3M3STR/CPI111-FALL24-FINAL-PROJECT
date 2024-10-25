///@description go to rooms with ladders
// You can write your code in this editor
if keyboard_check_pressed(vk_enter)==true{
	obj_game_controller.player_direction=obj_light.direction
	obj_game_controller.Entry_type=string("ladder")
	if room==(rm_ca1_F2_FIRST_ROOM){
		room_goto(rm_ca1_MD)
	}else if room==(rm_ca1_MD){
		room_goto(rm_ca1_F2_FIRST_ROOM)
	}else if room==(rm_ca2_MD){
		room_goto(rm_ca2_F2)
	}else if room==(rm_ca2_F2){
		room_goto(rm_ca2_MD)
	}else if room==(rm_engine_MD){
		room_goto(rm_engine_F2)
		}else if room==(rm_engine_F2){
		room_goto(rm_engine_MD)
		}
	
}