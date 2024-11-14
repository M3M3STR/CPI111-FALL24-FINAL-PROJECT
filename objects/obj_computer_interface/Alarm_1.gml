/// @description cool text drawing alarm

// You can write your code in this editor
if draw_display && sentance_length>sentance_current_length{
	typing=false
	alarm_set(1,0.02*game_get_speed(gamespeed_fps))
	sentance_current_length++
	draw_string=(string(draw_string)+string_char_at(sentance,sentance_current_length))
}else{
	typing=true
}