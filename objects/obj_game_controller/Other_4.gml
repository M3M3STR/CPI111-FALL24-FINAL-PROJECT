/// @description Insert description here
// You can write your code in this editor
//camera_set_view_size(view_camera[0], 640, 480)//makezoomin
if room!=rm_ui_Main_menu && room!=rm_ui_Pause_menu && obj_game_controller.shade==false{
	instance_deactivate_object(o_light_handler)
		instance_deactivate_object(o_light_drawer)
}else if room!=rm_ui_Main_menu && room!=rm_ui_Pause_menu && obj_game_controller.shade==true{
		instance_activate_object(o_light_handler)
		instance_activate_object(o_light_drawer)
}
if room==rm_ui_Main_menu{
	
	audio_pause_sound(mus_calm_theme_loop)
	} else if room==rm_ui_Pause_menu{
		

}