<<<<<<< HEAD
if (instance_exists(obj_door)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 50) {
            if ((sprite_index = spr_door_closed)) {
                sprite_index = spr_door_open;
                solid = false;
            } else {
                sprite_index = spr_door_closed;
                solid = true;
            }
        }
    }
}
=======
/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_door)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 50) {
			if sprite_index=spr_door_closed{
          sprite_index=spr_door_open
		  solid=false
			}else{
			 sprite_index=spr_door_closed
			 solid=true
			}
        }
    }
}
>>>>>>> 1b1ed7e51bd14add3007841e6803700214595468
