if (distance_to_object(obj_light) < 32) {
	obj_light.add_to_inventory(self)
	show_text("You picked up a flashlight! It can be toggled on and off with 'f'.");
	instance_destroy();
}
