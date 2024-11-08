/// @description Insert description here
// You can write your code in this editor
if (array_length(global.inventory)) > 0 {
	array_copy(inventory, 0, global.inventory, 0, array_length(global.inventory));
}