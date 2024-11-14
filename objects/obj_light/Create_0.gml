/// @description Insert description here
// You can write your code in this editor
event_inherited();
lx_ = x+(sprite_width/2);
ly_ = y+(sprite_height/2);
rad_ = 1280;//edit for light bounding box, how far away light can be drawn (LAG!!!!)
rad_default_ = 1280;//edit for light bounding box (LAG!!!!)
Light_color = c_white
Light_strength = 1

tilemap=layer_tilemap_get_id("Walls")
player_speed = 10;

inventory = [];
inventory2 = [];

function add_to_inventory(item) {
	array_push(inventory, item);
	array_push(global.inventory, item);
}

near_item = false;
