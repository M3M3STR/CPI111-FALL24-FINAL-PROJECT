// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_close_search(){
    obj_player.is_player_paused = false;
    obj_game_controller.search_mode = 0;
    obj_Desk_search.visible = false;
	obj_player.visible = true;
    //bj_crt_black.visible = false;
}