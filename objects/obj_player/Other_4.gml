go_down = false
go_up = false

if instance_exists(obj_stair_up) {
	_direction_up = obj_stair_up.image_angle
} else if instance_exists(obj_stair_down) {
	_direction_down = obj_stair_down.image_angle
}