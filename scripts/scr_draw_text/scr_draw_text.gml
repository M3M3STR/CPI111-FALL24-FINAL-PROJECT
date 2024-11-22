
function scr_draw_text(){
var crew_name = argument0;
var dialogue = argument1;

draw_set_color(c_black);

var screen_width = display_get_width();
var screen_height = display_get_height();
var border_thickness = 4;
var rect_height = 500;

// Draw the black rectangle
draw_set_color(c_black);
draw_rectangle(0, screen_height - rect_height, screen_width, screen_height, false);

// Draw the borders
draw_set_color(c_white);
// Top
draw_rectangle(0, screen_height - rect_height - border_thickness, screen_width, screen_height - rect_height, false);
// Bottom
draw_rectangle(0, screen_height - 317, screen_width, screen_height + border_thickness, false);
// Left
draw_rectangle(0, screen_height - rect_height, 0 + border_thickness, screen_height, false);
// Right
draw_rectangle(screen_width - border_thickness - 557, screen_height - rect_height, screen_width, screen_height, false);

// Draw the dialogue text
var text_x = 20;
var text_y = screen_height - rect_height - border_thickness + 20;
draw_set_color(c_white);
draw_text_ext(text_x, text_y, dialogue, -100, 1330);

// Draw the NPC name at the top-left of the border
draw_text(10, screen_height - rect_height - border_thickness - 20, crew_name);
draw_text(screen_width - border_thickness - 790, screen_height - 350, "Press Enter to Continue");
}