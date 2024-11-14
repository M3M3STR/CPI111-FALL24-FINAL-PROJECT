/// @description Insert description here
// You can write your code in this editor
if reactor_working{
	
	power_production="0"
	controll_rods=string(controlrod)+"%"
if coolant_pumps{
	
	temprature--
	if temprature<-100{
		temprature=-100
	}

}


if temprature<-100{
		temprature=-100
	}
}else{
	controll_rods="Error"
	power_production="Null"
}
temprature=temprature+((1601-(controlrod*16))/(101+temprature)-(controlrod/100))