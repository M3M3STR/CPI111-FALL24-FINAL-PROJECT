/// @description Insert description here
// You can write your code in this editor
if draw_display && o_sentance_length>o_sentance_current_length{

	alarm_set(0,0.02*game_get_speed(gamespeed_fps))
	o_sentance_current_length++
	o_draw_string=(string(o_draw_string)+string_char_at(output,o_sentance_current_length))
}