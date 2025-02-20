/// @description Insert description here
// You can write your code in this editor

    var _camera = view_camera[0];
	var cx = camera_get_view_x(_camera);
    var cy = camera_get_view_y(_camera);	
	var cvw = camera_get_view_width(_camera)
    var cvh = camera_get_view_height(_camera)

	
	if ((self.x <= cx) || (self.y <= cy)||(self.x >= (cx+cvw)) || (self.y >= (cy+cvh))){
		scr_respawn_item()
	}