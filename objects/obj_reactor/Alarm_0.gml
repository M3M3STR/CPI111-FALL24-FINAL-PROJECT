if (!is_temperature_stable) {
    var desired_temp = -100 + (control_rod_level * 2);
    var rate = 1;
    var _direction = sign(desired_temp - temperature);
    var delta_temp = rate * _direction;

    temperature += delta_temp;
	show_debug_message(string(temperature));

    if ((_direction > 0 && temperature >= desired_temp) || (_direction < 0 && temperature <= desired_temp)) {
        temperature = desired_temp;
        is_temperature_stable = true;
        with (obj_computer_interface) { 
            alarm_set(2, scr_fps());
        }
        obj_computer_interface.reactor_screen = ReactorScreen.Main;
    } else {
        alarm_set(0, scr_fps() * 0.1);
    }
}