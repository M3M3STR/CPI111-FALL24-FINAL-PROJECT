if (window_get_fullscreen()) {
    window_set_fullscreen(false);
} else {
    window_set_fullscreen(true);
}

is_shader_enabled = false;
alarm_set(2, scr_fps());