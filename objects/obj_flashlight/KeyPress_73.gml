if (distance_to_object(obj_light) < 32) {
	obj_light.add_to_inventory(self)
	array_push(global.collected_items, item_id);
	array_push(obj_light.inventory2, "flashlight");
	show_text("You picked up a flashlight! It can be toggled on and off with 'f'.");
	instance_destroy();
}
