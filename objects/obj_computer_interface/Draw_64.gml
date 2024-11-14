/// @description draw computer display
// You can write your code in this editor

if room!=rm_ui_Main_menu{
if draw_display{
	
		draw_set_font(ft_computer_2)

	draw_set_color(c_lime)
	image_alpha=0.1


	if display_type==1{

	//im eating grapes right now straight fire!!!
	draw_set_halign(textalign_center)
	draw_text((sprite_width/2)+camera_get_view_x(view_camera[0])-x,text_y,"TEST COMPUTER" )
	draw_set_halign(textalign_left)
		draw_text_ext(text_x,text_y+64,draw_string,scale*2,text_x_end)
		draw_text_ext(text_x,(sprite_height/2)+camera_get_view_y(view_camera[0])-y,player_input,scale*2,text_x_end)
	}else if display_type==2{
			draw_set_halign(textalign_center)
	draw_text((sprite_width/2)+x-camera_get_view_x(view_camera[0]),text_y,"Paused" )
	draw_set_halign(textalign_left)
		draw_text_ext(text_x,text_y+64,draw_string,scale*2,text_x_end)
		draw_text_ext(text_x,text_y+128,o_draw_string,scale*2,text_x_end)
		draw_text_ext(text_x,(sprite_height/2)+y-camera_get_view_y(view_camera[0]),player_input,scale*2,text_x_end)
		
	}else if display_type==3{
		draw_set_halign(textalign_center)
	draw_text((sprite_width/2)+x-camera_get_view_x(view_camera[0]),text_y,"Reactor Terminal" )
	draw_set_halign(textalign_left)
		draw_text_ext(text_x,text_y+64,draw_string,scale*2,text_x_end)
			draw_text_ext(text_x,text_y+32,obj_reactor.temprature,scale*2,text_x_end)
		draw_text_ext(text_x,text_y+128,o_draw_string,scale*2,text_x_end)
		draw_text_ext(text_x,(sprite_height/2)+y-camera_get_view_y(view_camera[0]),player_input,scale*2,text_x_end)
		
	}		
}
}