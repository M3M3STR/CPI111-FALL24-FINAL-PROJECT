event_inherited();

scale_ = 1;
static_ = false;
_direction_up = 0;
_direction_down = 0;
go_up = false;
go_down = false;
is_on_stair = true;
is_player_paused = true;

lx_ = x + (sprite_width / 2);
ly_ = y + (sprite_height / 2);
rad_ = 1280; // edit for light bounding box, how far away light can be drawn (LAG!!!!)
rad_default_ = 1280; // edit for light bounding box (LAG!!!!)
light_color = c_white;
light_strength = 1;

tilemap = layer_tilemap_get_id("Walls");
default_speed = 10;
player_speed = default_speed;
turn_speed = 15;

mask = spr_light_mask_hd;
is_moving = false;
obj_game_controller.alarm[0] = 0.25 * scr_fps();

health = 100; // Starting health
oxygen = 200; // Starting oxygen
oxygen_depletion_rate = 0.01; // Oxygen depletion per step
health_depletion_rate = 0.05; // Health depletion per step when oxygen is zero

// Play background music if not already playing
if (!audio_is_playing(snd_music_ambience_1)) {
    audio_play_sound(snd_music_ambience_1, 3, true); // Play and loop the sound
}
//if (!audio_is_playing(snd_mus_calm_theme_loop)) {
//    audio_play_sound(snd_mus_calm_theme_loop, 4, true); // Play and loop the sound
//}