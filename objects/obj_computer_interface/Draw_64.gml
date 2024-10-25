/// @description draw computer display
// You can write your code in this editor


if draw_display==1{
	var cvh=camera_get_view_height(view_camera[0])
var cvw=camera_get_view_width(view_camera[0])
var cx=camera_get_view_x(view_camera[0])
	var cy=camera_get_view_y(view_camera[0])
	draw_set_color(c_purple)
	draw_set_alpha(0.5)
	draw_rectangle(64,64,(cvw-64),(cvh-64),0)
	
	draw_set_font(ft_computer_2)
	draw_set_alpha(0.9)
	draw_set_color(#FFC0CB)
	image_alpha=0.5
	x=cx+64
	y=cy+64
	//im eating grapes right now straight fire!!!
	draw_set_halign(textalign_center)
	draw_text(640,128,"HELP" )
	draw_set_halign(textalign_left)
		draw_text_ext(128,256,draw_string,64,(cvw-256))
}