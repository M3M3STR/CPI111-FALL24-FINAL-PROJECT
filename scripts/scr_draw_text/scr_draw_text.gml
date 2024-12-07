// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_text(){
var crew_name = argument0;
var dialogue = argument1;

draw_set_color(c_black);
draw_set_alpha(1);
draw_set_halign(fa_left);


var screen_width = view_wport;
var screen_height = view_hport;
var screen_x = view_xport
var screen_y = view_yport



// Draw the dialogue text
var text_x = screen_x+20;
var text_y = screen_y + (screen_height/2);
draw_set_color(c_white);
draw_set_alpha(1);

draw_text_ext(text_x, text_y, dialogue, -100, 1330);

// Draw the NPC name at the top-left of the border
draw_text(text_x, screen_y+(screen_height/2.2), crew_name);
draw_set_halign(fa_center);
draw_text(screen_x+(screen_width/2), screen_y+(screen_height/1.4), "Press E to Continue");

}