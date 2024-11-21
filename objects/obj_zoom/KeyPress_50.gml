/// @description Insert description here
// You can write your code in this editor
if is_zoom{
		is_zoom=false;
	camera_set_view_size(view_camera[0], 1280, 960)
}else{
	is_zoom=true;
	camera_set_view_size(view_camera[0], 640, 480)
}