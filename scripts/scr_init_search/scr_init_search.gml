// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_search(){
    // Reset display-related variables

    // Set display properties
	obj_player.visible = false;
    obj_player.is_player_paused = true;
    obj_Desk_search.visible = true;
    //obj_crt_black.visible = true;

    // Configure camera and scaling
    var _camera = view_camera[0];
    cx = camera_get_view_x(_camera);
    cy = camera_get_view_y(_camera);
    _xscle = camera_get_view_width(_camera) / 128;
    _yscle = camera_get_view_height(_camera) / 96;
    cvh = camera_get_view_height(_camera);
    cvw = camera_get_view_width(_camera);

 

    // Adjust object scaling and positioning
    obj_Desk_search.image_xscale = _xscle;
    obj_Desk_search.image_yscale = _yscle;
    //obj_crt_black.image_xscale = _xscle / 10;
    //obj_crt_black.image_yscale = _yscle / 10;
    //obj_computer.image_xscale = _xscle / 10;
    //obj_computer.image_yscale = _yscle / 10;

    x = cx + _xscle * 12.8;
    y = cy + _yscle * 9.6;
    obj_Desk_search.x = x - _xscle * 12.8;
    obj_Desk_search.y = y - _yscle * 9.6;
 //   obj_crt_black.x = x;
   // obj_crt_black.y = y;

}