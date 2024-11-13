/// @description open reactor computer when terminal entered on
// You can write your code in this editor
if !draw_display{
		output=blank
	obj_player.player_pause=true
	player_input=string("")
	sentance=string("This Terminal is Password Protected")
			player_input=blank
draw_display=true
display_type=3//reactor display
scale=font_get_size(ft_computer_2)
	visible=true
	obj_crt.visible=true
	obj_crt_black.visible=true
sentance_length=string_length(sentance)
alarm_set(1,1)
	if draw_display{
cx=camera_get_view_x(view_camera[0])
cy=camera_get_view_y(view_camera[0])
_xscle=(camera_get_view_width(view_camera[0])/128)
_yscle=(camera_get_view_height(view_camera[0])/96)
cvh=camera_get_view_height(view_camera[0])
cvw=camera_get_view_width(view_camera[0])
text_x=((_xscle*128)/(cvw/192))
text_y=((_yscle*80)/(cvh/192))

	obj_crt.image_xscale=_xscle
		obj_crt.image_yscale=_yscle
			obj_crt_black.image_xscale=(_xscle/10)
		obj_crt_black.image_yscale=(_yscle/10)
					obj_computer_interface.image_xscale=(_xscle/10)
		obj_computer_interface.image_yscale=(_yscle/10)
	x=cx+_xscle*12.8
	
	y=cy+_yscle*9.6
	text_x_end=text_x+((_xscle*320)/(_xscle/2))
	obj_crt.x=x-_xscle*12.8
	obj_crt.y=y-_yscle*9.6
		obj_crt_black.x=x
	obj_crt_black.y=y


	}

}else if draw_display{
	obj_player.player_pause=false
	draw_display=false
	draw_string=blank
	sentance_length=0
	sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0

	visible=false
		obj_crt.visible=false
		obj_crt_black.visible=false
}