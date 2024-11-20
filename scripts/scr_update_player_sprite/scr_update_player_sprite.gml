/// @function update_player_sprite(_xinput, _yinput, is_moving)
/// @param {real} _xinput - Horizontal input (-1 for left, 1 for right, 0 for none)
/// @param {real} _yinput - Vertical input (-1 for up, 1 for down, 0 for none)
/// @param {bool} _is_moving - Whether the player is moving or idle

function scr_update_player_sprite(_xinput, _yinput, _is_moving) {
    var _move_direction = point_direction(0, 0, _xinput, _yinput);

    if (_is_moving) {
        // Play the walking sound if it's not already playing
        if (!audio_is_playing(snd_sfx_walk)) {
            audio_play_sound(snd_sfx_walk, 1, true); // Loop the sound
        }

        // Player is moving, choose the walk animation
        if (_move_direction > 45 && _move_direction <= 135) {
            // Moving upwards
            sprite_index = spr_player_back_walk;
        } else if (_move_direction > 225 && _move_direction <= 315) {
            // Moving downwards
            sprite_index = spr_player_front_walk;
        } else if (_move_direction > 135 && _move_direction <= 225) {
            // Moving left
            sprite_index = spr_player_left_walk;
        } else {
            // Moving right
            sprite_index = spr_player_right_walk;
        }
        image_speed = 0.8; // Animation speed for walking
    } else {
        // Stop the walking sound if it is playing
        if (audio_is_playing(snd_sfx_walk)) {
            audio_stop_sound(snd_sfx_walk);
        }

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
