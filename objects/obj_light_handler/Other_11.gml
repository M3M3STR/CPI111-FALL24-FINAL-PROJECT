if (!surface_exists(light_surf_)) {
    light_surf_ = surface_create(128, 128);
}
if (!surface_exists(shadow_surf_)) {
    shadow_surf_ = surface_create(room_width, room_height);
}
if (!surface_exists(static_lightmap_surf_)) {
    static_lightmap_surf_ = surface_create(room_width, room_height);
}

var _first_light = true;

for (var _i = 0; _i < light_count_; _i++) {
    var _light = instance_find(obj_light_parent, _i);
    var _mask = _light.mask;

    if (_light.static_) {
        var _color = _light.light_color;
        var _alpha = _light.light_strength;
        var _lx = _light.lx_;
        var _ly = _light.ly_;
        var _rad = _light.rad_;
        var _scale = _light.scale_;

        // Draw shadows
        surface_set_target(shadow_surf_);
        draw_clear_alpha(0, 0);

        if (_mask == spr_light_mask_window) {
            scr_project_shadow(_lx, _ly, _rad, tilemap_window_);
        } else {
		
            scr_project_shadow(_lx, _ly, _rad, tilemap_);
			if (layer_exists("sub_tile")) {
					scr_project_shadow(_lx, _ly, _rad, tilemap_sub_);
			}
        }
        surface_reset_target();

        // Draw the light
        if (_mask == spr_light_mask_bkg_bright) {
            surface_resize(light_surf_, _light.sprite_width + 16, _light.sprite_height + 16);
        } else {
            surface_resize(light_surf_, _rad, _rad);
        }

        surface_set_target(light_surf_);

        if (_mask == spr_light_mask_hd) {
            draw_sprite_ext(_mask, 0, 0, 0, _scale, _scale, obj_player.direction, _color, _alpha);
        } else if (_mask == spr_light_mask_bkg_bright) {
            gpu_set_blendmode(bm_max); // Set blend mode for background
            draw_sprite_ext(_mask, 0, 0, 0, _light.sprite_width, _light.sprite_height, 0, _color, _alpha);
        } else if (_mask == spr_light_mask_window) {
            draw_sprite_ext(_mask, 0, 0, 0, _scale, _scale, 45, _color, _alpha);
        } else {
            draw_sprite_ext(_mask, 0, 0, 0, _scale, _scale, 0, _color, _alpha);
        }

        if (_mask == spr_light_mask_bkg_bright) {
            draw_surface_part(
                shadow_surf_,
                _lx - _light.sprite_width / 2,
                _ly - _light.sprite_height / 2,
                _light.sprite_width,
                _light.sprite_height,
                0,
                0
            );
        } else {
            draw_surface_part(shadow_surf_, _lx - _rad / 2, _ly - _rad / 2, _rad, _rad, 0, 0);
        }

        surface_reset_target();

        // Copy lights to final surface
        var _surface_x = 0;
        var _surface_y = 0;

        if (_mask == spr_light_mask_bkg_bright) {
            _surface_x = _lx - _light.sprite_width / 2;
            _surface_y = _ly - _light.sprite_height / 2;
        } else {
            _surface_x = _lx - _rad / 2;
            _surface_y = _ly - _rad / 2;
        }

        surface_set_target(static_lightmap_surf_);
        if (_first_light) {
            draw_clear_alpha(0, 1);
            _first_light = false;
        }

        gpu_set_blendmode(bm_max);
        if (_mask == spr_light_mask_bkg_bright) {
            draw_surface(light_surf_, _surface_x, _surface_y - 16);
        } else {
            draw_surface(light_surf_, _surface_x, _surface_y);
        }
        gpu_set_blendmode(bm_normal);
        surface_reset_target();

        // Clear surfaces
        surface_set_target(light_surf_);
        draw_clear_alpha(0, 1);
        surface_reset_target();

        surface_set_target(shadow_surf_);
        draw_clear_alpha(0, 0);
        surface_reset_target();
    }
}

call_rerender = false;
call_rerender_reactor = false;
