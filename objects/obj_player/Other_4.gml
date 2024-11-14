/// @description Insert description here
// You can write your code in this editor
go_down = false
go_up = false

if instance_exists(obj_stair_up){
_directionu=obj_stair_up.image_angle
}else if instance_exists(obj_stair_down){
_direction=obj_stair_down.image_angle
}