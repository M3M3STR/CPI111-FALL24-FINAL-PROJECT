/// @description go to rooms with doors, twards back
// You can write your code in this editor
if keyboard_check_pressed(vk_enter)==true && player_pause==false{
			audio_play_sound(sfx_player_use_door,3,0)

	 	player_pause=true
	
	obj_game_controller.alarm[0]=3*game_get_speed(gamespeed_fps)

}