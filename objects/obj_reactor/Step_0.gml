if (is_reactor_working) {
    power_output = string(obj_reactor.control_rod_level * 10);
    control_rod_status = string(control_rod_level) + "%";
} else {
    control_rod_status = "Error";
    power_output = "Null";
}