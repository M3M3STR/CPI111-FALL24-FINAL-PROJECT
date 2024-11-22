/// @description Insert description here

// Inherit the parent event
event_inherited();
if (obj_game_controller.is_ship_powered) {
    light_strength = 1;
} else {
    light_strength = 0;
}
mask = spr_light_mask_low_tapered_fade;
