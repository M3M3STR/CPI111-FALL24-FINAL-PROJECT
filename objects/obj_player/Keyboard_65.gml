/// @description Insert description here
// You can write your code in this editor
if !obj_computer_interface.draw_display{
	if direction < 180 {
	
	direction=direction+turn_speed
	} else if direction > 180 {
		direction=direction-turn_speed
	}
}
walker_here=true