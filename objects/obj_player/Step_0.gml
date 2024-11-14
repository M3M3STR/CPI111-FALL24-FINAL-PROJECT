/// @description Insert description here

// You can write your code in this editor
event_inherited();

rad_ = rad_default_ * scale_;
lx_ = x;
ly_ = y;

// Initialize _xinput and _yinput to ensure they are defined
var _xinput = 0;
var _yinput = 0;

if (!obj_computer_interface.draw_display) {
    if (!obj_player.player_pause) {
        _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
        _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
        move_and_collide(_xinput * player_speed, _yinput * player_speed, tilemap);
    }
    
    // Dhruv
    // Determine if the player is moving
    var is_moving = (_xinput != 0) || (_yinput != 0);

    // Update the sprite based on movement
    update_player_sprite(_xinput, _yinput, is_moving);

    // Manage health and oxygen depletion
    manage_health_oxygen();
}

if (!obj_player.happy && !place_meeting(x, y, obj_stair_down)) {
    obj_player.player_speed = obj_player._speed;
    obj_player.happy = true;
}