// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_respawn_item(){
    var _camera = view_camera[0];
	
	self._respawn +=1;
   //vars for summoning desk items
	var cx = camera_get_view_x(_camera);
    var cy = camera_get_view_y(_camera);	
    var cvh = camera_get_view_height(_camera)
    var cvw = camera_get_view_width(_camera)
	
	

    var boxadjustx = (cvw/3)
    var boxadjusty = (cvh/3)
   
	var X1 = cx+boxadjustx/3
	var Y1 = cy+boxadjusty/2
	var X2 = cx+cvw-boxadjustx/3
	var Y2 = cy+cvh-boxadjusty/2
	if 	obj_Desk_search.open=true{
		if self._respawn<=5{
scr_spawn_items(X1, Y1, X2, Y2, self.object_index, self._respawn);

		}else if self._respawn==6{
scr_spawn_items(X1, Y1, X2, Y2, self.object_index, self._respawn);
	
		}
	}
}