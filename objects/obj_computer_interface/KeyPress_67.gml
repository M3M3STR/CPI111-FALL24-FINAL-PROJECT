/// @description test display code for computer pop up render

// You can write your code in this edito
if draw_display!=1{
draw_display=1

	visible=true
sentance_length=string_length(sentance)
alarm_set(1,1)
}else{
	draw_display=0
	draw_string=string("")
	sentance_length=0
	sentance_current_length=0

	visible=false
}