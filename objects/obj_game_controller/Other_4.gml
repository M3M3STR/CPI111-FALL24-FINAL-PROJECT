if (room != rm_ui_main_menu && room != rm_ui_pause_menu) {
    if (obj_game_controller.is_shader_enabled) {
        instance_activate_object(obj_light_handler);
        instance_activate_object(obj_light_renderer);
    } else {
        instance_deactivate_object(obj_light_handler);
        instance_deactivate_object(obj_light_renderer);
    }
}

if (room == rm_ui_main_menu) {
	
	audio_pause_sound(snd_mus_calm_theme_loop)
} else if (room == rm_ui_pause_menu) {
    // Nothing
}