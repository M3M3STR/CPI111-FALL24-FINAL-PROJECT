/// @description Insert description here
// You can write your code in this editor
	if walker_here{
	if !audio_is_playing(sfx_player_walk){
			audio_play_sound(sfx_player_walk,3,1)
	}
	}else {
	if audio_is_playing(sfx_player_walk){
			audio_stop_sound(sfx_player_walk)
	}
	}
	if obj_game_controller.mute{
	audio_pause_all()
}else{
	audio_resume_all()
}