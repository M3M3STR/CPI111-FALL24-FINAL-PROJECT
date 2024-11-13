/// @description Insert description here
// You can write your code in this editor
if draw_display{
			output=blank

var input=player_input
player_input=string("")


if display_type==2{//pause menu or other terminal
	

if input==string("help")||input==string("h")||input==string("jelp"){
	alarm_set(0,1)
	o_draw_string=blank

	o_sentance_current_length=0


	output=string(":Main Menu \n:Mute \n:Fullscreen \n:Pause \n:Quit \n:Save \n:Back")
		o_sentance_length=string_length(output)
}else if input==string("main menu")|| input==string("men") || input==string("menu'")|| input==string("main menu'")||input==string("mainmenu")||input==string("main"){
		

		draw_display=false
	draw_string=blank
player_input=blank
	sentance_length=0
	sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0

	visible=false
		obj_crt.visible=false
		obj_crt_black.visible=false
			room_goto(rm_ui_Main_menu)
}else if input==string(""){
	
	if irandom_range(1,10000)==1{
		alarm_set(0,1)
	o_draw_string=blank

	o_sentance_current_length=0
	output=string("Loser")
			o_sentance_length=string_length(output)
	}else{
		alarm_set(0,1)
	o_draw_string=blank

	o_sentance_current_length=0
		output=string("Please Enter A Command")	
				o_sentance_length=string_length(output)
	}
	
}else if input==string("pause")||input==string("p"){
		draw_display=false
		obj_player.player_pause=false
	draw_string=blank
player_input=blank
	sentance_length=0
	sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0

	visible=false
		obj_crt.visible=false
		obj_crt_black.visible=false
			obj_game_controller.Last_room=room
	obj_game_controller.player_x=obj_player.x
	obj_game_controller.player_y=obj_player.y
			room_goto(rm_ui_Pause_menu)
	
}else if input==string("fullscreen")||input==string("full-screen")||input==string("full screen")||input==string("full"){
	if window_get_fullscreen(){
	window_set_fullscreen(false);
}else{
	window_set_fullscreen(true);
}
}else if input==string("quit"){
		game_end(all)
}else if input==string("back")||input==string("b")||input==string("return")||input==string("exit")||input==string("fuck off"){
	draw_display=false
	draw_string=blank
player_input=blank
	sentance_length=0
	sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	obj_player.player_pause=false

	visible=false
		obj_crt.visible=false
		obj_crt_black.visible=false
		
	
}else if input==string("mute"){
if obj_game_controller.mute{
	alarm_set(0,1)
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	output=string("Un-muted :)")	
			o_sentance_length=string_length(output)
obj_game_controller.mute=false
}else{
	obj_game_controller.mute=true
	alarm_set(0,1)
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	output=string("Muted :(")	
			o_sentance_length=string_length(output)
}

}else{
		player_input=string("")
		alarm_set(0,1)
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	output=string("Unrecognized Command... type help for more")	
			o_sentance_length=string_length(output)

}

}if display_type==3{//reactor terminal code
	

if !obj_terminal.reactor_term_unlock{
if input==string("password")&& obj_terminal.lockout>=1{
	
sentance=string("")
draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0

output=string("Initializng Boot Sequence...")
alarm_set(0,1)
		o_sentance_length=string_length(output)
alarm_set(2,5*game_get_speed(gamespeed_fps))
}else if obj_terminal.lockout>=1 && input!=string(""){
	
	player_input=string("")
obj_terminal.lockout--
alarm_set(0,1)
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
output=("Incorrect Pasword " + string(obj_terminal.lockout)+ " Attempts Remaining")
		o_sentance_length=string_length(output)
}else if input!=string(""){
		player_input=string("")

alarm_set(0,1)
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
output=("Locked Out (pasword is password)")
		o_sentance_length=string_length(output)
}
}else if instance_exists(obj_reactor){//reactor unlocked code
if obj_reactor.coolant_pumps{
	var coolant="Online"
}else{
	var coolant="Offline"
	}
	if obj_reactor.coolant_pumps{
	var heat="Online"
}else{
	var heat="Offline"
}
	if area=0 && (input==string("deactivate")){//remove at some point
		alarm_set(2,1)

	obj_reactor.reactor_working=false
}else if area==0 && (input==string("activate")){//remove at some point
obj_reactor.reactor_working=true
alarm_set(2,1)
}else if area==0 &&(input==string("coolant pumps")||input==string("coolant")||input==string("cool")||input==string("pumps")||input==string("pump")||input==string("cooling")||input==string("cooling pumps")||input==string("cooling pump")||input==string("coolant pump")){
area=1
		if obj_reactor.coolant_pumps{

draw_string=blank
player_input=blank
o_sentance_current_length=0
draw_string=blank
o_sentance_length=0
sentance_current_length=0
sentance=blank
	draw_string=blank
		alarm_set(1,1)
		alarm_set(0,1)
sentance="Cooling Pumps Are Currently "+string(coolant) +" Would You Like To Deactivate Them?"
		}else{
			output=blank
			draw_string=blank
player_input=blank
			o_sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	sentance=blank
	draw_string=blank
			sentance_current_length=0
		alarm_set(1,1)
		alarm_set(0,1)
			sentance="Cooling Pumps Are Currently "+string(coolant) +" Would You Like To Activate Them?"
		}

sentance_length=string_length(sentance)
}else if area==1 && (input==string("yes")||input==string("y")){
	if obj_reactor.coolant_pumps{
		sentance=string("")
draw_string=blank
player_input=blank

	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
		obj_reactor.coolant_pumps=false
		output="Deactivating Coolant Pumps..."

		
						o_sentance_length=string_length(output)
						alarm_set(2,5*game_get_speed(gamespeed_fps))
		alarm_set(0,1)
				area=0
	}else{
sentance=string("")
draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
				output="Activating Coolant Pumps..."
				o_sentance_length=string_length(output)
			obj_reactor.coolant_pumps=true	
			alarm_set(0,1)
			alarm_set(2,5*game_get_speed(gamespeed_fps))
			area=0
			
	}
}else if area==1 && (input==string("no")||input==string("n")){
	alarm_set(2,1*game_get_speed(gamespeed_fps))
			area=0
	draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
}else if area==0 && (input==string("heat exchangers")||input==string("heat")||input==string("heating")||input==string("exchangers")||input==string("exchange")||input==string("heaters")){
	area=2
		if obj_reactor.heat_exchangers{

draw_string=blank
player_input=blank
o_sentance_current_length=0
draw_string=blank
o_sentance_length=0
sentance_current_length=0
sentance=blank
	draw_string=blank
		alarm_set(1,1)
		alarm_set(0,1)
sentance="Heat Exchangers Are Currently "+string(heat) +" Would You Like To Deactivate Them?"
		}else{
			draw_string=blank
player_input=blank
			o_sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
	sentance=blank
	draw_string=blank
			sentance_current_length=0
		alarm_set(1,1)
		alarm_set(0,1)
			sentance="Heat Exchangers Are Currently "+string(heat) +" Would You Like To Activate Them?"
		}

sentance_length=string_length(sentance)
}else if (area==2) && (input==string("yes")||input==string("y")){
	if obj_reactor.heat_exchangers{
		sentance=string("")
draw_string=blank
player_input=blank

	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
		obj_reactor.heat_exchangers=false
		output="Deactivating Heat Exchangers..."
		area=0
		
						o_sentance_length=string_length(output)
						alarm_set(2,5*game_get_speed(gamespeed_fps))
		alarm_set(0,1)
	}else{
sentance=string("")
draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
				output="Activating Heat Exchangers..."
				o_sentance_length=string_length(output)
			obj_reactor.heat_exchangers=true	
			alarm_set(0,1)
			alarm_set(2,5*game_get_speed(gamespeed_fps))
			area=0
			
	}
}else if area==2 && (input==string("no")||input==string("n")){
	alarm_set(2,1*game_get_speed(gamespeed_fps))
			area=0
	draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
	
	

}else if area==0 &&(input==string("control rods")||input==string("control")||input==string("cont")||input==string("rods")||input==string("controll")||input==string("rod")||input==string("control rod")||input==string("controlrods")||input==string("rod")){

	if string(obj_reactor.reactor_working){

	draw_string=blank
player_input=blank
input=""
o_sentance_current_length=0
draw_string=blank
o_draw_string=blank
o_sentance_length=0
output=blank
sentance_current_length=0
sentance=blank
	draw_string=blank

		
sentance="The Control Rods are Currently "+string(obj_reactor.controll_rods) +" Inserted"
sentance_length=string_length(sentance)
output="Please Enter A number 1-100"
o_sentance_length=string_length(output)
	alarm_set(1,1)
		alarm_set(0,1)
				area=3
	}
}else if area==3 && input!=string(""){
var HELP=string_digits(input)
if HELP!=""{
	if HELP<=100 && HELP>=0{
	obj_reactor.controlrod=real(HELP)
		draw_string=blank
player_input=blank
o_sentance_current_length=0
o_draw_string=blank
draw_string=blank
o_sentance_length=0
sentance_current_length=0
sentance=blank
	draw_string=blank
		alarm_set(1,1)
		alarm_set(0,1)
			alarm_set(2,5*game_get_speed(gamespeed_fps))
	sentance=""
sentance_length=string_length(sentance)
output="Adjusting Control Rods..."
o_sentance_length=string_length(output)
	area=0
	}
}
		
	}else if area==3 && (input==string("back")||input==string("")){
			alarm_set(2,1*game_get_speed(gamespeed_fps))
			area=0
	draw_string=blank
player_input=blank
	sentance_length=0
	o_draw_string=blank
	o_sentance_length=0
	o_sentance_current_length=0
	sentance_current_length=0
	
}
}
}
player_input=string("")
}