/// @description Insert description here
// You can write your code in this editor
event_inherited();
lx_ = x+(sprite_width/2);
ly_ = y+(sprite_height/2);
rad_ = 1280;//edit for light bounding box, how far away light can be drawn (LAG!!!!)
rad_default_ = 1280;//edit for light bounding box (LAG!!!!)
light_color = c_white
light_strength = 1

tilemap=layer_tilemap_get_id("Walls")
player_speed = 5;
turn_speed = 15;
obj_player.player_speed=obj_player._speed
mask= s_light_mask_HD
walker_here=false
	obj_game_controller.alarm[0]=.25*game_get_speed(gamespeed_fps)
	
health = 100; // Starting health
oxygen = 200; // Starting oxygen
oxygen_depletion_rate = 0.01; // Oxygen depletion per step
health_depletion_rate = 0.05; // Health depletion per step when oxygen is zero

if (!audio_is_playing(music_ambience_1)) {
    audio_play_sound(music_ambience_1, 3, true); // Play and loop the sound
}
