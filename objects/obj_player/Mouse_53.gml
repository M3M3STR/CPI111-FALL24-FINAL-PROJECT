/// @description Insert description here
// You can write your code in this editor

if place_meeting(x+17,y+17,obj_furnature_parent){
instance_create_layer(x,y,"Lights",obj_jumper)
}
if place_meeting(x-17,y-17,obj_furnature_parent){
instance_create_layer(x,y,"Lights",obj_jumper)
}
if place_meeting(x-17,y-17,tilemap){
instance_create_layer(x,y,"Lights",obj_jumper)
}
if place_meeting(x+17,y+17,tilemap){
instance_create_layer(x,y,"Lights",obj_jumper)
}
