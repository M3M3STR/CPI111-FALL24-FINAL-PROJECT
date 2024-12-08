// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	obj_player.is_player_paused = false;
    obj_game_controller.last_room = room;
    obj_game_controller.player_x = obj_player.x;
    obj_game_controller.player_y = obj_player.y;
	obj_file_system.alarm[0] = 10
}