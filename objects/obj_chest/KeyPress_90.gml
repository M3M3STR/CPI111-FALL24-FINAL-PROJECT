/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(obj_light) < 32) {
	if (!is_unlocked) {
		if (array_length(obj_light.inventory) > 1) {
			is_unlocked = true;
			show_text("The chest opened! You found a golden key!");
			array_push(obj_light.inventory, obj_goldkey);
		} else { 
			show_text("You need a keycard to open this chest.");
		}
	}
}