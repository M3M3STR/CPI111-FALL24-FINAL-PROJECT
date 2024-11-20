/// @description shader fullscreen fix

is_shader_enabled = true;

if (instance_exists(obj_light_handler)) {
	obj_light_handler.call_rerender = true;
}