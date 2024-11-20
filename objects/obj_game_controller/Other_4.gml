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
    // Nothing
} else if (room == rm_ui_pause_menu) {
    // Nothing
}