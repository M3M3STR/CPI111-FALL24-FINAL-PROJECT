///@description go to rooms with ladders
// You can write your code in this editor
if keyboard_check_pressed(vk_enter)==true && player_pause==false{
	
			audio_play_sound(sfx_player_use_ladder,3,0)
	obj_game_controller.player_direction=obj_player.direction
	obj_game_controller.Entry_type=string("ladder")
	player_pause=true
	obj_game_controller.alarm[0]=3*game_get_speed(gamespeed_fps)
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