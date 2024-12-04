/// @description Insert description here
// You can write your code in this editor
lx_ = x+(sprite_width/2);
ly_ = y+(sprite_height/2);
rad_ = 128
rad_default_ = 128;
light_color = c_red

if (obj_game_controller.is_ship_powered) {
    light_strength = 1;
} else {
    light_strength = 0;
}

mask= spr_light_mask_low_tapered_fade