event_inherited();

rad_ = rad_default_ * scale_;
lx_ = x;
ly_ = y;

var _xinput = 0;
var _yinput = 0;

if (!obj_computer.is_computer_on) {
    if (!obj_player.is_player_paused) {
        _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
        _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
        move_and_collide(_xinput * player_speed, _yinput * player_speed, tilemap);
        move_bounce_solid(false);
    }

    // Set if the player is moving
    is_moving = scr_is_moving(_xinput, _yinput);

    // Adjust direction based on keyboard input
    scr_adjust_direction();
	
	// Update the sprite based on movement
    scr_update_player_sprite(_xinput, _yinput, is_moving);
}

// Manage health and oxygen depletion
scr_manage_health_oxygen();

// Check if the player is on a stair object
if (place_meeting(x, y, obj_stair_down) || place_meeting(x, y, obj_stair_up)) {
    if (!is_on_stair) {
        player_speed /= 2; // Reduce speed when stepping onto stairs
        is_on_stair = true;
    }
} else {
    if (is_on_stair) {
        player_speed = default_speed; // Reset speed when stepping off stairs
        is_on_stair = false;
    }
}

// Handle audio muting
if (obj_game_controller.is_muted) {
    audio_pause_all();
} else {
    audio_resume_all();
}