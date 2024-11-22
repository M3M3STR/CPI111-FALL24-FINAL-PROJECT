
// You can write your code in this editor

#region check if surfaces exists
if( !surface_exists(light_surf_) ){
	light_surf_ = surface_create(128 ,128);
}
if( !surface_exists(shadow_surf_) ){
	shadow_surf_ = surface_create(room_width ,room_height);
}
if( !surface_exists(static_lightmap_surf_) ){
	static_lightmap_surf_ = surface_create(room_width,room_height);
}
#endregion

var first_light = true;
for(var i=0; i<light_count_; i++)
{	
	var light = instance_find(o_light_parent, i);
			var _mask = light.mask
		
	
	if (light.static_)
	{
		var _color = light.light_color;
		var _alpha = light.light_strength;
		var lx = light.lx_;
		var ly = light.ly_;
		var rad = light.rad_;
		var scale = light.scale_;
	
	
		//draw shadows
		surface_set_target(shadow_surf_);
			draw_clear_alpha(0,0);
			if _mask==s_light_mask_window{
			scr_project_shadow(lx, ly, rad, tilemap_window_);
			}else{
			scr_project_shadow(lx, ly, rad, tilemap_);
			}
		surface_reset_target();
	
		//draw the light
		if _mask==s_light_mask_bkg_bright{
		surface_resize(light_surf_, light.sprite_width+16, light.sprite_height+16);
		}else{
				surface_resize(light_surf_, rad, rad);
		}
		surface_set_target(light_surf_);

		if _mask=s_light_mask_HD{
		
			draw_sprite_ext(_mask, 0, 0, 0, scale, scale, obj_player.direction, _color, _alpha);
		}else if _mask==s_light_mask_bkg_bright{
			gpu_set_blendmode(bm_max)//set blendmode for bkg
				draw_sprite_ext(_mask, 0, 0,0 , light.sprite_width, light.sprite_height, 0, _color, _alpha);
		}else if _mask==s_light_mask_window{
			draw_sprite_ext(_mask, 0, 0, 0, scale, scale, 45, _color, _alpha);
		}else{
			draw_sprite_ext(_mask, 0, 0, 0, scale, scale, 0, _color, _alpha);
		}
		if _mask==s_light_mask_bkg_bright{
			draw_surface_part(shadow_surf_, lx-(light.sprite_width/2), ly-(light.sprite_height/2), light.sprite_width, light.sprite_height, 0, 0);
		surface_reset_target();
		}else if _mask!=s_light_mask_bkg_bright{
			draw_surface_part(shadow_surf_, lx-(rad/2), ly-(rad/2), rad, rad, 0, 0);
		surface_reset_target();
		}

		// copy lights on final surf 
		if _mask==s_light_mask_bkg_bright{
		var surfx = (lx) - (light.sprite_width/2);
		var surfy = (ly) - (light.sprite_height/2);
		}else{
		var surfx = (lx) - (rad/2);
		var surfy = (ly) - (rad/2);	
		}
		
	
		surface_set_target(static_lightmap_surf_);
			if (first_light){ draw_clear_alpha(0,1); first_light = false;}
			gpu_set_blendmode(bm_max);
			if _mask==s_light_mask_bkg_bright{
				draw_surface(light_surf_, surfx, surfy-16);
			}else{
				draw_surface(light_surf_, surfx, surfy);
			}
			gpu_set_blendmode(bm_normal);
		surface_reset_target();
	
		//clear surf
		surface_set_target(light_surf_);
			draw_clear_alpha(0,1);
		surface_reset_target();
		surface_set_target(shadow_surf_);
			draw_clear_alpha(0,0);
		surface_reset_target();
	}	
}
call_rerender=false
call_rerender_reactor=false