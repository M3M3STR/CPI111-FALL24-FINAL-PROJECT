/// @description Insert description here
// You can write your code in this editor
if obj_player.happy==true{
obj_player.player_speed=obj_player._speed/2
	obj_player.happy=false
}

if _direction==180{
	obj_game_controller.stairvarx=(obj_player.x-obj_stair_down.x)
	if obj_game_controller.stairvarx>(obj_stair_down.sprite_width/8){
		go_down =true
	}
}else if _direction==0{
	obj_game_controller.stairvarx=(obj_player.x-obj_stair_down.x)
	if obj_game_controller.stairvarx<(obj_stair_down.sprite_width/8){
		go_down =true
	}
} else if _direction==90{
	obj_game_controller.stairvar=(obj_player.y-obj_stair_down.y)
	if obj_game_controller.stairvar<(obj_stair_down.sprite_width/8){
		go_down =true
	}
}else if _direction==270{
	obj_game_controller.stairvar=(obj_player.y-obj_stair_down.y)
	if obj_game_controller.stairvar>(obj_stair_down.sprite_width/8){
		go_down =true
	}
}
if go_down==true{
obj_game_controller.stairvar=(obj_player.y-obj_stair_down.y)
obj_game_controller.stairvarx=(obj_player.x-obj_stair_down.x)

	obj_game_controller.player_direction=obj_player.direction
	obj_game_controller.Entry_type=string("stairsD")
	 if room==(rm_front_MD){
		room_goto(rm_front_F2)
	}else if room=(rm_front_F2){
		room_goto(rm_front_F3)
	}else if room=(rm_front_upper1){
		room_goto(rm_front_MD)
	}
}