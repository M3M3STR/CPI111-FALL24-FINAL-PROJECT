/// @description Boot sequence or delayed actions

function reactor_status() {
    return scr_conditional(obj_reactor.is_reactor_working, "Activated", "Deactivated");
}

if (instance_exists(obj_terminal) && !is_reactor_unlocked) {
    scr_reset_display();
    is_reactor_unlocked = true;

    scr_set_sentence("Reactor Status: " + reactor_status());
}

if (instance_exists(obj_terminal) && is_reactor_unlocked) {
    scr_reset_display();
    scr_set_sentence("Reactor Status: " + reactor_status());
    if (instance_exists(obj_reactor)) {
        var _coolant = scr_conditional(obj_reactor.are_pumps_cooling, "Online", "Offline");
        var _heat = scr_conditional(obj_reactor.is_heat_exchanging, "Online", "Offline");

        output =
            "\n" +
            "\nCoolant Pumps: " +
            _coolant +
            "\nControl Rods: " +
            string(obj_reactor.control_rod_status) +
            "\nHeat Exchangers: " +
            _heat;
        o_sentence_length = string_length(output);
        alarm_set(0, 1);
        is_loading_text = false;
    } else {
        scr_set_output("Fatal Error: Reactor not found");
    }
}
