/// @description Player Movement and Animation
event_inherited();

// Movement calculations
var _xinput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _yinput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// Move the player
move_and_collide(_xinput * player_speed, _yinput * player_speed, tilemap);

// Determine if the player is moving
var is_moving = (_xinput != 0) || (_yinput != 0);

// Update the sprite based on movement
update_player_sprite(_xinput, _yinput, is_moving);

// Manage health and oxygen depletion
manage_health_oxygen();