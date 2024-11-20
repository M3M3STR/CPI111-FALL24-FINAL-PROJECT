/// @description Insert description here
// You can write your code in this editor

if window_get_fullscreen(){
	window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
}
obj_game_controller.is_shader_enabled=false
alarm_set(0,scr_fps())