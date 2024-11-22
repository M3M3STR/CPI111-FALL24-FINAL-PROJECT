if (is_zoomed) {
    is_zoomed = false;
    camera_set_view_size(view_camera[0], 1280, 960);
} else {
    is_zoomed = true;
    camera_set_view_size(view_camera[0], 640, 480);
}
