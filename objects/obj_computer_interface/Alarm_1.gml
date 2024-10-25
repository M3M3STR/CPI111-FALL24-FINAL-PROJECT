/// @description cool text drawing alarm

// You can write your code in this editor
if draw_display==1 && sentance_length>sentance_current_length{
	alarm_set(1,0.05*game_get_speed(gamespeed_fps))
	sentance_current_length++
	draw_string=(string(draw_string)+string_char_at(sentance,sentance_current_length))
}