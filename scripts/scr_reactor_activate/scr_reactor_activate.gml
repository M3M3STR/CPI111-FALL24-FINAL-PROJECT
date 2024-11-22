/// @description Handle Reactor Activation
function scr_reactor_activate() {
    if (obj_reactor.is_reactor_working) {
        scr_set_output("Reactor is already active.");
    } else if (obj_reactor.are_pumps_cooling && obj_reactor.is_heat_exchanging) {
        obj_reactor.is_reactor_working = true;
        scr_set_output("Activating Reactor...");
        obj_reactor.is_temperature_stable = false;
		    with (obj_reactor) {
				alarm_set(0, scr_fps() * 0.1);
			}
    } else {
        scr_set_output("Cannot activate reactor. Ensure Coolant Pumps and Heat Exchangers are online.");
    }
}