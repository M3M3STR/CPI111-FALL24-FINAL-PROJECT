/// @description Insert description here
// You can write your code in this editor
if !obj_computer_interface.draw_display{
if direction<90{
	
direction=direction+5
} else if direction>270{
	direction = direction+5
	if direction >= 450{
	direction = 90
	}
} else if direction>90{
	direction=direction-5

}
}
walker_here=true