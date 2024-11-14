/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_light) < 32) {
	obj_light.add_to_inventory(self)
	array_push(global.collected_items, item_id);
	array_push(obj_light.inventory2, "keycard");
	show_text("You picked up a Keycard! What could it be used to unlock?");
	instance_destroy();
}