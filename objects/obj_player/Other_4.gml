go_down = false
go_up = false
tilemap = layer_tilemap_get_id("Walls");
scale_ = 1;
static_ = false;
_direction_up = 0;
_direction_down = 0;
go_up = false;
go_down = false;
is_on_stair = true;
is_player_paused = false;
is_on_wall = false;

lx_ = x + sprite_width / 2;
ly_ = y + sprite_height / 2;
rad_ = 1280; // edit for light bounding box, how far away light can be drawn (LAG!!!!)
rad_default_ = 1280; // edit for light bounding box (LAG!!!!)
light_color = c_white;
light_strength = 1;


default_speed = 5;
player_speed_walk = default_speed;
player_speed = 0;
player_max_speed = 15;
acceleration = 0.2;
deceleration = 1;
x_speed = 0;
y_speed = 0;
turn_speed = 15;

mask = spr_light_mask_hd;
is_move_key_pressed = false;

jet_direction = (direction + 180) % 360;


oxygen_depletion_rate = 0.01; // Oxygen depletion per step
health_depletion_rate = 0.05; // Health depletion per step while oxygen is zero

// Play background music if not already playing
if (!audio_is_playing(snd_music_ambience_1)) {
    audio_play_sound(snd_music_ambience_1, 3, true); // Play and loop the sound
}
//if (!audio_is_playing(snd_mus_calm_theme_loop)) {
//    audio_play_sound(snd_mus_calm_theme_loop, 4, true); // Play and loop the sound
//}

// Create the particle system and emitter
jet_system = part_system_create();
layer_id_jet_stream = layer_get_id("Jet_Stream");
part_system_layer(jet_system, layer_id_jet_stream);

jet_particle_type = part_type_create();

// _article for a white smoke jet effect
part_type_shape(jet_particle_type, pt_shape_flare);
part_type_color1(jet_particle_type, c_white);
part_type_alpha3(jet_particle_type, 0.4, 0.2, 0.0);
part_type_speed(jet_particle_type, 18, 30, 0, 0);
part_type_direction(jet_particle_type, 0, 0, 0, 0); // Updates in step event
part_type_size(jet_particle_type, 0.2, 0.5, -0.01, 0);
part_type_life(jet_particle_type, 5, 10);
part_type_blend(jet_particle_type, false); // Keep off to prevent glow

// Create the emitter
jet_emitter = part_emitter_create(jet_system);

if instance_exists(obj_stair_up) {
	_direction_up = obj_stair_up.image_angle
} else if instance_exists(obj_stair_down) {
	_direction_down = obj_stair_down.image_angle
}
