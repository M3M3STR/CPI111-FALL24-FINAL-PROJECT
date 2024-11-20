/// @description Handle Reactor Deactivation
function scr_reactor_deactivate() {
    if (!obj_reactor.is_reactor_working) {
        scr_set_output("Reactor is already inactive.");
    } else {
		obj_reactor.temp_working = false;
		obj_reactor.temp_rod_level = 100;
		obj_reactor.temp_cooling = false;
		obj_reactor.temp_heating = false;
        scr_set_output("Deactivating Reactor...");
		with (obj_reactor) {
			alarm_set(0, scr_fps() * 4.9);
		}
		alarm_set(2, 5 * scr_fps());
    }
}