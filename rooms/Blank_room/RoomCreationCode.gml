if obj_game_controller.Entry_type==string("ladder"){
		obj_light.x=obj_ladder.x
		obj_light.y=obj_ladder.y
				camera_set_view_pos(view_camera[0],obj_light.x,obj_light.y)
}else if obj_game_controller.Entry_type==string("doorA"){
	obj_light.x=obj_Mdoor_forwards.x+32
		obj_light.y=obj_Mdoor_forwards.y
				camera_set_view_pos(view_camera[0],obj_light.x,obj_light.y)
}else if obj_game_controller.Entry_type==string("doorF"){
	obj_light.x=obj_Mdoor_aft.x-32
		obj_light.y=obj_Mdoor_aft.y
				camera_set_view_pos(view_camera[0],obj_light.x,obj_light.y)
}else if obj_game_controller.Entry_type==string("stairs"){
			camera_set_view_pos(view_camera[0],obj_light.x,obj_light.y)
}else{
}