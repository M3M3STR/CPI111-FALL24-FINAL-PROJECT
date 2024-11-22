function scr_init_watch_display() {
    // Set display properties
    obj_player.is_player_paused = true;
    is_watch_on = true;
    scale = font_get_size(fnt_computer_smooth);
    visible = true;

    // Configure camera and scaling
    var _camera = view_camera[0];
    cx = camera_get_view_x(_camera);
    cy = camera_get_view_y(_camera);
    _xscle = camera_get_view_width(_camera) / 128;
    _yscle = camera_get_view_height(_camera) / 96;
    cvh = camera_get_view_height(_camera);
    cvw = camera_get_view_width(_camera);

    // Set scaling (1:1 for the watch display)
    image_xscale = 1;
    image_yscale = 1;

    // Centering
    x = cx;
    y = cy;
}
