// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_respawn_item(){
    var _camera = view_camera[0];
	
   //vars for summoning desk items
	var cx = camera_get_view_x(_camera);
    var cy = camera_get_view_y(_camera);	
    var cvh = camera_get_view_height(_camera)
    var cvw = camera_get_view_width(_camera)
	
	
    var _xscle = camera_get_view_width(_camera) / 128;
    var _yscle = camera_get_view_height(_camera) / 96;
	
    var boxadjustx = (cvw/5)
    var boxadjusty = (cvh/5)
   
	var X1 = cx+boxadjustx/3
	var Y1 = cy+boxadjusty/2
	var X2 = cx+cvw-boxadjustx/3
	var Y2 = cy+cvh-boxadjusty/2
	if 	obj_Desk_search.open=true{
scr_spawn_items(X1, Y1, X2, Y2, self.object_index);
	instance_destroy(self)	
		}
	}