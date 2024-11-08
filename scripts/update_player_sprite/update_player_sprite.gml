// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @function update_player_sprite(_xinput, _yinput, is_moving)
/// @param {real} _xinput - Horizontal input (-1 for left, 1 for right, 0 for none)
/// @param {real} _yinput - Vertical input (-1 for up, 1 for down, 0 for none)
/// @param {boolean} is_moving - Whether the player is moving or idle
function update_player_sprite(_xinput, _yinput, is_moving) {
    var move_direction = point_direction(0, 0, _xinput, _yinput);
    
    if (is_moving) {
        // Player is moving, choose the walk animation
        if (move_direction > 45 && move_direction <= 135) {
            // Moving upwards
            sprite_index = spr_player_back_walk;
        } else if (move_direction > 225 && move_direction <= 315) {
            // Moving downwards
            sprite_index = spr_player_front_walk;
        } else if (move_direction > 135 && move_direction <= 225) {
            // Moving left
            sprite_index = spr_player_left_walk;
        } else {
            // Moving right
            sprite_index = spr_player_right_walk;
        }
        image_speed = 1; // Animation speed for walking
    } else {
        // Player is idle, choose the idle animation based on current facing direction
        if (sprite_index == spr_player_front_walk) {
            sprite_index = spr_player_front_idle;
        } else if (sprite_index == spr_player_left_walk) {
            sprite_index = spr_player_left_idle;
        } else if (sprite_index == spr_player_back_walk) {
            sprite_index = spr_player_back_idle;
        } else if (sprite_index == spr_player_right_walk) {
            sprite_index = spr_player_right_idle;
        }
        image_index = 0; // Freeze on first frame when idle
        image_speed = 0;
    }
}