/// @description Initialize Display
/// @param _display_type - The type of display to initialize (e.g., DisplayType.Pause, DisplayType.Reactor, DisplayType.Testing)
/// @param _sentence - The sentence to display on the screen

function scr_init_display(_display_type, _sentence) {
    // Reset display-related variables
    scr_reset_display();

    // Set display properties
    obj_player.is_player_paused = true;
    sentence = _sentence;
    is_computer_on = true;
    display_type = _display_type;
    scale = font_get_size(ft_computer_2);
    visible = true;
    obj_crt.visible = true;
    obj_crt_black.visible = true;
    sentence_length = string_length(sentence);
    alarm_set(1, 1);

    // Configure camera and scaling
    var camera = view_camera[0];
    cx = camera_get_view_x(camera);
    cy = camera_get_view_y(camera);
    _xscle = camera_get_view_width(camera) / 128;
    _yscle = camera_get_view_height(camera) / 96;
    cvh = camera_get_view_height(camera);
    cvw = camera_get_view_width(camera);

    text_x = (_xscle * 128) / (cvw / 192);
    text_y = (_yscle * 80) / (cvh / 192);

    // Adjust object scaling and positioning
    obj_crt.image_xscale = _xscle;
    obj_crt.image_yscale = _yscle;
    obj_crt_black.image_xscale = _xscle / 10;
    obj_crt_black.image_yscale = _yscle / 10;
    obj_computer_interface.image_xscale = _xscle / 10;
    obj_computer_interface.image_yscale = _yscle / 10;

    x = cx + _xscle * 12.8;
    y = cy + _yscle * 9.6;
    text_x_end = text_x + ((_xscle * 320) / (_xscle / 2));
    obj_crt.x = x - _xscle * 12.8;
    obj_crt.y = y - _yscle * 9.6;
    obj_crt_black.x = x;
    obj_crt_black.y = y;
}