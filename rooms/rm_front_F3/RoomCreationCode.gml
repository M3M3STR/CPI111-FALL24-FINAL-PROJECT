if obj_game_controller.Entry_type==string("ladder"){
		obj_player.x=obj_ladder.x
		obj_player.y=obj_ladder.y
				camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
}else if obj_game_controller.Entry_type==string("doorA"){
	obj_player.x=obj_Mdoor_forwards.x+32
		obj_player.y=obj_Mdoor_forwards.y
				camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
}else if obj_game_controller.Entry_type==string("doorF"){
	obj_player.x=obj_Mdoor_aft.x-32
		obj_player.y=obj_Mdoor_aft.y
				camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
}else if obj_game_controller.Entry_type==string("stairsU"){
	obj_player.x=obj_stair_down.x+obj_game_controller.stairvarx
obj_player.y=(obj_stair_down.y+obj_game_controller.stairvar)
	camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
	}else if obj_game_controller.Entry_type==string("stairsD"){
	obj_player.x=obj_stair_up.x+obj_game_controller.stairvarx
		obj_player.y=(obj_stair_up.y+obj_game_controller.stairvar)
	camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
	
}else if obj_game_controller.Entry_type==string("Esc"){
obj_player.x=obj_game_controller.player_x
obj_player.y=obj_game_controller.player_y
camera_set_view_pos(view_camera[0],obj_player.x,obj_player.y)
}
obj_player.direction=obj_game_controller.player_direction;