// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_respawn_item(){
    var _camera = view_camera[0];
   //vars for summoning desk items
	var cx = camera_get_view_x(_camera);
    var cy = camera_get_view_y(_camera);	
    var cvh = obj_Desk_search.sprite_width
    var cvw = obj_Desk_search.sprite_height

    var boxadjustx = (cvw/10)
    var boxadjusty = (cvh/10)
   
	var X1 = cx+boxadjustx
	var Y1 = cy+boxadjusty
	var X2 = cx+cvw-boxadjustx
	var Y2 = cy+cvh-boxadjusty*2
	
scr_spawn_items(X1, Y1, X2, Y2, self.object_index);
instance_destroy(self)
}