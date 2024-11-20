function scr_reactor_activate() {
    if (obj_reactor.is_reactor_working) {
        scr_set_output("Reactor is already active.");
    } else {
        obj_reactor.temp_working = true;
        scr_set_output("Activating Reactor...");
        with (obj_reactor) {
				alarm_set(0, scr_fps() * 4.9);
		}
		alarm_set(2, scr_fps() * 5);
    }
}