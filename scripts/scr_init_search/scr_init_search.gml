// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_search(){
    // Reset display-related variables
	var num
	//tempvar for declaring how many items to spawn in said desk
	var junk = 10
	//number of junk items
	var junkammount = 40
    // Set display properties
	obj_player.visible = false;
    obj_player.is_player_paused = true;
    obj_Desk_search.visible = true;
	obj_Desk_Bottom.visible = true;
    //obj_crt_black.visible = true;

    // Configure camera and scaling
    var _camera = view_camera[0];
	var view = view_current

    cx = camera_get_view_x(_camera);
    cy = camera_get_view_y(_camera);
    _xscle = camera_get_view_width(_camera) / 128;
    _yscle = camera_get_view_height(_camera) / 96;
	
	
	
	obj_Desk_search.image_xscale = _xscle;
    obj_Desk_search.image_yscale = _yscle;
	obj_Desk_Bottom.image_xscale = _xscle;
    obj_Desk_Bottom.image_yscale = _yscle;
	
	
	
    cvw = camera_get_view_width(_camera)
    cvh = camera_get_view_height(_camera)

	layer_depth(layer_get_id("SearchItemLayer"),((layer_get_depth(layer_get_id("Back_of_search")))-100))

    // Adjust object scaling and positioning
    obj_Desk_search.image_xscale = _xscle;
    obj_Desk_search.image_yscale = _yscle;
	 obj_Desk_Bottom.image_xscale = _xscle;
    obj_Desk_Bottom.image_yscale = _yscle;

    //obj_crt_black.image_xscale = _xscle / 10;
    //obj_crt_black.image_yscale = _yscle / 10;
    //obj_computer.image_xscale = _xscle / 10;
    //obj_computer.image_yscale = _yscle / 10;


    obj_Desk_search.x = cx;
    obj_Desk_search.y = cy;
	obj_Desk_Bottom.x = obj_Desk_search.x;
    obj_Desk_Bottom.y = obj_Desk_search.y;
 //   obj_crt_black.x = x;
   // obj_crt_black.y = y;
   
   //ADJUSTMENT FOR BOX FIXXXXX!!!!!!!!!!!

   var boxadjustx = (cvw/5)
   var boxadjusty = (cvh/5)
   
   
   //vars for summoning desk items
	var X1 = cx+boxadjustx/3
	var Y1 = cy+boxadjusty/2
	var X2 = cx+cvw-boxadjustx/3
	var Y2 = cy+cvh-boxadjusty/2
	
	
	//debug for show item spawn bounding box uncomment if needed
	instance_create_layer(X1,Y1, layer_get_id("Watch"), debugpoint);
	instance_create_layer(X2-64,Y2-64, layer_get_id("Watch"), debugpoint);
	
	var item
	
	for (var i = 0; i < junk; i++) {
		num = irandom_range(1,50)
		if num == 1 {
			item=obj_junk_calculator
		}else if num == 2{
			item=obj_junk_clips
		}else if num < 5{
			item=obj_junk_paper1
		}else if num < 15{
			item=obj_junk_paper2
		}else if num < 25{
			item=obj_junk_paper3
		}else if num < 35{
			item=obj_junk_paperclip
		}else if num < 40{
			item=obj_junk_pen1
		}else if num < 45{
			item=obj_junk_pen2
		}else if num < 47{
			item=obj_junk_pencil
		}else if num < 49{
			item=obj_junk_scissors
		}else if num == 49{
			item=obj_junk_stapler
		}else if num == 50{
			item=obj_junk_tape
		}
		if obj_Desk_search.open=true{
    scr_spawn_items(X1, Y1, X2, Y2, item);
		}
}
if obj_Desk_search.open=true{
scr_spawn_items(X1, Y1, X2, Y2, obj_keycard_blue);
}
}