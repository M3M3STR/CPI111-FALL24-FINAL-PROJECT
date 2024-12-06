/// @description Insert description here
// You can write your code in this editor
if (!variable_instance_exists(self, "crew_name")) crew_name = "Unknown";
if (!variable_instance_exists(self, "dialogue")) dialogue = "No dialogue set.";

target_x = x; // The target position in the x-axis
target_y = y; // The target position in the y-axis
slide_speed = 4; // Speed of sliding movement
alarm[0] = room_speed * 3;

sprite_index = sprite_direction;
moving_right = false;
moving_left = false;
moving_front = false;
moving_back = false;