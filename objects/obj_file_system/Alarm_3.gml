/// @description Load Player
// You can write your code in this editor
if(_reactor.reactor_exists){
	room_goto(rm_engine_main_deck)
	obj_file_system.alarm[2] = 5
}
else{
	obj_game_controller.player_x = obj_game_controller.player_x_saved;
	obj_game_controller.player_y = obj_game_controller.player_y_saved;
	obj_game_controller.interaction_type = INTERACTION.ESCAPE;
	room_goto(obj_game_controller.room_to_load);
	}