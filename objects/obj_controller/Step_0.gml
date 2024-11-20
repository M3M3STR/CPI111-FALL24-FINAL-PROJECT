/// @description Update camera position based on keyboard input
var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]);
var _camera_width = camera_get_view_width(view_camera[0]);
var _camera_height = camera_get_view_height(view_camera[0]);

// Adjust camera position based on keyboard input
if (keyboard_check(vk_right)) {
    _camera_x += 3;
} else if (keyboard_check(vk_down)) {
    _camera_y += 3;
} else if (keyboard_check(vk_left)) {
    _camera_x -= 3;
} else if (keyboard_check(vk_up)) {
    _camera_y -= 3;
}

// Clamp camera position to ensure it stays within room bounds
_camera_x = clamp(_camera_x, 0, room_width - _camera_width);
_camera_y = clamp(_camera_y, 0, room_height - _camera_height);

// Apply updated camera position
camera_set_view_pos(view_camera[0], _camera_x, _camera_y);
