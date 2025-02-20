// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_close_search(){
    obj_player.is_player_paused = false;
    obj_game_controller.search_mode = 0;
    obj_Desk_search.visible = false;
	 obj_Desk_Bottom.visible = false;
	obj_player.visible = true;

	
	
for (var i = instance_number(obj_search_object_parent) - 1; i >= 0; i--) {
    instance_destroy(instance_find(obj_search_object_parent, i));
}
    //bj_crt_black.visible = false;
}