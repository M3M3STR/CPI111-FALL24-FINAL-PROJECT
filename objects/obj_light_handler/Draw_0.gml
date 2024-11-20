/// @description draw lights

if (!init_) {
    event_user(1);
    init_ = true;
}

if (!surface_exists(light_surf_)) {
    light_surf_ = surface_create(128, 128);
}
if (!surface_exists(shadow_surf_)) {
    shadow_surf_ = surface_create(room_width, room_height);
}
if (!surface_exists(lightmap_surf_)) {
    lightmap_surf_ = surface_create(
        camera_get_view_width(view_camera[0]) + 128,
        camera_get_view_height(view_camera[0]) + 128
    );
}
if (!surface_exists(static_lightmap_surf_)) {
    static_lightmap_surf_ = surface_create(room_width, room_height);
}

light_count_ = instance_number(obj_light_parent);

var _camera_x = camera_get_view_x(view_camera[0]);
var _camera_y = camera_get_view_y(view_camera[0]);
var _camera_width = camera_get_view_width(view_camera[0]);
var _camera_height = camera_get_view_height(view_camera[0]);

var _first_light = true;
for (var _i = 0; _i < light_count_; _i++) {
    var _light = instance_find(obj_light_parent, _i);
    var _mask = _light.mask;

    if (!_light.static_) {
        var _color = _light.light_color;
        var _alpha = _light.light_strength;
        var _lx = _light.lx_;
        var _ly = _light.ly_;
        var _rad = _light.rad_;
        var _scale = _light.scale_;

        //draw shadows
        surface_set_target(shadow_surf_);
        draw_clear_alpha(0, 0);
        if (_mask == spr_light_mask_window) {
            scr_project_shadow(_lx, _ly, _rad, tilemap_window_);
        } else {
            scr_project_shadow(_lx, _ly, _rad, tilemap_);
        }
        surface_reset_target();

        //draw the light
        surface_resize(light_surf_, _rad, _rad);
        surface_set_target(light_surf_);
        if (_mask == spr_light_mask_hd) {
            if (obj_game_controller.is_flashlight_on) {
                draw_sprite_ext(
                    _mask,
                    0,
                    _scale * 640,
                    _scale * 640,
                    _scale,
                    _scale,
                    obj_player.direction,
                    _color,
                    _alpha
                );
            }
        } else {
            draw_sprite_ext(_mask, 0, 0, 0, _scale, _scale, 0, _color, _alpha);
        }

        draw_surface_part(shadow_surf_, _lx - _rad / 2, _ly - _rad / 2, _rad, _rad, 0, 0);
        surface_reset_target();

        // copy lights on final surf
        var _surface_x = _lx - _camera_x - _rad / 2;
        var _surface_y = _ly - _camera_y - _rad / 2;

        surface_set_target(lightmap_surf_);
        if (_first_light) {
            draw_clear_alpha(0, 1);
            _first_light = false;
        }
        gpu_set_blendmode(bm_max);
        draw_surface(light_surf_, _surface_x, _surface_y);
        gpu_set_blendmode(bm_normal);
        surface_reset_target();

        //clear light surf
        surface_set_target(light_surf_);
        draw_clear_alpha(0, 1);
        surface_reset_target();
    } else if (call_rerender) {
        event_user(1);
    }
}
//blend static and dynamic light surfaces
gpu_set_blendmode(bm_max);
surface_resize(light_surf_, _camera_width, _camera_height);
surface_set_target(light_surf_);
draw_clear_alpha(0, 0);
draw_surface(lightmap_surf_, 0, 0);
draw_surface_part(static_lightmap_surf_, _camera_x, _camera_y, _camera_width, _camera_height, 0, 0);
surface_reset_target();

// draw final surf
gpu_set_blendmode_ext(bm_dest_color, bm_zero);
shader_set(sh_ambient_light);
shader_set_uniform_f(u_ambient_light_, ambient_light_);
draw_surface(light_surf_, _camera_x, _camera_y);
shader_reset();
