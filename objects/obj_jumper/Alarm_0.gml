/// @description Insert description here
// You can write your code in this editor

	obj_player.x_speed=obj_player.x_speed+self.hspeed/(abs(obj_player.x_speed)+1)
	obj_player.y_speed=obj_player.y_speed+self.vspeed/(abs(obj_player.y_speed)+1)

instance_destroy(self)