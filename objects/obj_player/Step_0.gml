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
	
        if (!scr_back_of_ship()) {
            // Antigravity Movement

            // Normalize input
            var _input_length = sqrt(_xinput * _xinput + _yinput * _yinput);
            if (_input_length != 0) {
                _xinput /= _input_length;
                _yinput /= _input_length;
            }

            // Accelerate based on input
            x_speed += _xinput * acceleration;
            y_speed += _yinput * acceleration;

            // Apply deceleration
            x_speed *= deceleration;
            y_speed *= deceleration;

            // Limit speed to max speed
            var _current_speed = sqrt(x_speed * x_speed + y_speed * y_speed);
            if (_current_speed > player_max_speed) {
                var _speed_scale = player_max_speed / _current_speed;
                x_speed *= _speed_scale;
                y_speed *= _speed_scale;
            }

            // Move and collide
            scr_move_player(x_speed, y_speed);
            move_bounce_solid(false);

            // Set if the player is moving
            // is_moving = (abs(x_speed) > 0.1) || (abs(y_speed) > 0.1);
			is_move_key_pressed = scr_is_move_key_pressed(_xinput, _yinput);
			
			// Jet position relative to the player
		    var _jet_x = x + lengthdir_x(0, direction);
			var _jet_y = y + lengthdir_y(0, direction);

		    // Emit particles
		    if (is_move_key_pressed) {
				part_type_direction(jet_particle_type, jet_direction - 15, jet_direction + 15, 0, 0);
				part_emitter_region(jet_system, jet_emitter, _jet_x, _jet_x, _jet_y, _jet_y, ps_shape_ellipse, ps_distr_linear);
			    part_emitter_burst(jet_system, jet_emitter, jet_particle_type, 10);
				//if (irandom(3) == 0) { // Random chance to burst
			    //    part_emitter_burst(jet_system, jet_emitter, jet_particle_type, irandom_range(5, 15));
			    //}
				if (!audio_is_playing(snd_sfx_jet)) {
					audio_play_sound(snd_sfx_jet, 3, true);
				}
			} else {
				part_emitter_clear(jet_system, jet_emitter);
				if (audio_is_playing(snd_sfx_jet)) {
					audio_stop_sound(snd_sfx_jet);
				}
			}
        } else {
            // Normal Walking Movement
            move_and_collide(_xinput * player_speed_walk, _yinput * player_speed_walk, tilemap);
            move_bounce_solid(false);

            // Set if the player is moving
            is_move_key_pressed = scr_is_move_key_pressed(_xinput, _yinput);
        }
    }
	
	// Adjust direction based on movement
	scr_adjust_direction();
		
	// Update the sprite based on movement
	scr_update_player_sprite(_xinput, _yinput, is_move_key_pressed);
}

// Manage health and oxygen depletion
scr_manage_health_oxygen();

// Check if the player is on a stair object
if (place_meeting(x, y, obj_stair_down) || place_meeting(x, y, obj_stair_up)) {
    if (!is_on_stair) {
        player_speed_walk /= 2; // Reduce speed when stepping onto stairs
        is_on_stair = true;
    }
} else {
    if (is_on_stair) {
        player_speed_walk = default_speed; // Reset speed when stepping off stairs
        is_on_stair = false;
    }
}

// Handle audio muting
if (obj_game_controller.is_muted) {
    audio_pause_all();
} else {
    audio_resume_all();
}
