/// @description Handle the Pause command
function scr_command_pause() {
    scr_close_display();
    obj_player.is_player_paused = false;
    obj_game_controller.last_room = room;
    obj_game_controller.player_x = obj_player.x;
    obj_game_controller.player_y = obj_player.y;
    room_goto(rm_ui_pause_menu);
}