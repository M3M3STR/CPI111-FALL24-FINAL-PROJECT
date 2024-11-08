/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_gray);
draw_set_alpha(0.5);
var box_x_positions = [545, 650, 755];
var box_y = 700;
var box_width = 100;
var box_height = 75;

	for (var i = 0; i < 3; i++) {
	draw_rectangle(box_x_positions[i], box_y, box_x_positions[i] + box_width, box_y + box_height, false);
}
draw_set_alpha(1);

if (instance_exists(obj_light)) {
	for (var i = 0; i < min(3, array_length(obj_light.inventory)); i++) {
		var item = obj_light.inventory[i];
		
		if (item != undefined && item.sprite_index != noone) {
			var sprite_x = box_x_positions[i] + 20;
			var sprite_y = box_y;
			
			draw_sprite(item.sprite_index, 0, sprite_x, sprite_y);
		}
	}
}