var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]);
var _surface = obj_light_handler.light_surf_;

if (surface_exists(_surface)) {
    gpu_set_blendmode_ext(bm_dest_color, bm_zero);
    shader_set(sh_ambient_light);
    shader_set_uniform_f(u_ambient_light_, ambient_light_);
    draw_surface(obj_light_handler.light_surf_, _camera_x, _camera_y);
    shader_reset();
    gpu_set_blendmode(bm_normal);
}
