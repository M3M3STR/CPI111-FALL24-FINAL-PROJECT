/// @description Insert description here
// You can write your code in this editor
event_inherited();
sprite_index = spr_player_front_idle;
lx_ = x+(sprite_width/2);
ly_ = y+(sprite_height/2);
rad_ = 1280;//edit for light bounding box, how far away light can be drawn (LAG!!!!)
rad_default_ = 1280;//edit for light bounding box (LAG!!!!)
Light_color = c_white
Light_strength = 1

tilemap=layer_tilemap_get_id("Walls")
player_speed = 10;
turn_speed = 15;

health = 100; // Starting health
oxygen = 200; // Starting oxygen
oxygen_depletion_rate = 0.01; // Oxygen depletion per step
health_depletion_rate = 0.05; // Health depletion per step when oxygen is zero