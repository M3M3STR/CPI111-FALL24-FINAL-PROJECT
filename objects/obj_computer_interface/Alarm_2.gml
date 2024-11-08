/// @boot sequence

// You can write your code in this editor
if instance_exists(obj_terminal) &&!obj_terminal.reactor_term_unlock{
	o_sentance_current_length=0
		obj_terminal.reactor_term_unlock=true
			o_draw_string=blank
	o_sentance_length=0
		alarm_set(1,1)
		alarm_set(0,1)
}
if instance_exists(obj_terminal) && obj_terminal.reactor_term_unlock{
	o_sentance_current_length=0
		o_draw_string=blank
	o_sentance_length=0
		alarm_set(1,1)
		alarm_set(0,1)




sentance=string("Reactor Status:")
sentance_length=string_length(sentance)
if instance_exists(obj_reactor){
if obj_reactor.coolant_pumps{
	var coolant="Online"
}else{
	var coolant="Offline"
	}
	if obj_reactor.heat_exchangers{
	var heat="Online"
}else{
	var heat="Offline"
	}


output=(string(obj_reactor.power_production)+"/kWh \nTemprature:"+ string(obj_reactor.temprature)+".C \nCoolant Pumps: " +string(coolant)+ "\nControl Rods: "+ string(obj_reactor.controll_rods)+  "\nHeat Exchangers: "+string(heat))
o_sentance_length=string_length(output)

}else{
	output="Fatal Error"

	o_sentance_length=string_length(output)
}
}