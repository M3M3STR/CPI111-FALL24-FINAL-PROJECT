/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_light) < 32) {
	obj_light.add_to_inventory(self)
	show_text("You picked up a Keycard! What could it be used to unlock?");
	instance_destroy();
}