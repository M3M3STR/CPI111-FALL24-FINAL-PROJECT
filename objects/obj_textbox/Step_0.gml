/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_light)) {
	x = obj_light.x;
	y = obj_light.y + 32;
}

if (timer > 0) {
	timer--;
	if (timer <= 0) {
		visible = false;
	}
}