/// @description shader fullscreen fix

is_shader_enabled = true;

if (instance_exists(o_light_handler)) {
	o_light_handler.call_rerender = true;
}