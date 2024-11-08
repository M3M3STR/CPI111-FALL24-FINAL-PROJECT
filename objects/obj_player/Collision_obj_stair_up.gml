/// @description Insert description here
// You can write your code in this editor
if obj_player.happy==true{
obj_player.player_speed=obj_player._speed/2
	obj_player.happy=false
}

if _directionu==180{
obj_game_controller.stairvarx=(obj_player.x-obj_stair_up.x)
	if obj_game_controller.stairvarx>(obj_stair_up.sprite_width/8){
		go_up=true
	}
} else if _directionu==0{
obj_game_controller.stairvarx=(obj_player.x-obj_stair_up.x)
	if obj_game_controller.stairvarx<(obj_stair_up.sprite_width/8){
		go_up=true
	}
} else if _directionu==270{
	obj_game_controller.stairvar=(obj_player.y-obj_stair_up.y)
	if obj_game_controller.stairvar<(obj_stair_up.sprite_width/8){
		go_up=true
	}
} else if _directionu==90 {
	obj_game_controller.stairvar=(obj_player.y-obj_stair_up.y)
	if obj_game_controller.stairvar>(obj_stair_up.sprite_width/8){
		go_up=true
	}
}

if go_up{
obj_game_controller.stairvar=(obj_player.y-obj_stair_up.y)
obj_game_controller.stairvarx=(obj_player.x-obj_stair_up.x)
	obj_game_controller.player_direction=obj_player.direction
	obj_game_controller.Entry_type=string("stairsU")
	 if room==(rm_front_MD){
		room_goto(rm_front_upper1)
	}else if room=(rm_front_F2){
		room_goto(rm_front_MD)
	}else if room=(rm_front_F3){
		room_goto(rm_front_F2)
	}
}