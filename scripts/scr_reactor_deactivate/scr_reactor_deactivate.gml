/// @description Handle Reactor Deactivation
function scr_reactor_deactivate() {
    if (!obj_reactor.is_reactor_working) {
        scr_set_output("Reactor is already inactive.");
    } else {
        obj_reactor.is_reactor_working = false;
        scr_set_output("Deactivating Reactor...");
        alarm_set(2, 5 * scr_fps());
    }
}