/// Reactor temperature and power output update logic

if (is_reactor_working) {
    // Update power production to "0" initially
    power_output = "0";

    // Update control rods display status
    control_rod_status = string(control_rod_level) + "%";

    // Coolant pumps reduce temperature at a static rate
    if (are_pumps_cooling) {
        temperature -= coolant_reduction * rate; // Reduce temp
        // Clamp temperature to a minimum of -100
        if (temperature < -100) {
            temperature = -100;
        }
    }

    // Update power output if the reactor is heat exchanging and above 600 degrees
    if (is_heat_exchanging && temperature >= 600) {
        power_output = string(temperature / heat_generation);
    }
} else {
    // Reactor is not working
    control_rod_status = "Error";
    power_output = "Null";
}

// Define maximum temperature change per step
var _max_delta_temperature = 10 * rate; // Adjust this value as needed

// Update temperature based on control rod level and rate
var _adjusted_temperature = 1601 - control_rod_level * 16;

var _denominator = 101 + temperature;
if (_denominator < 1) {
    _denominator = 1; // Prevent denominator from being less than 1
}

var _first_term = _adjusted_temperature / _denominator;
var _second_term = control_rod_level / 100;

var _delta_temperature = (_first_term - _second_term) * rate;

// Limit the maximum delta temperature
if (_delta_temperature > _max_delta_temperature) {
    _delta_temperature = _max_delta_temperature;
} else if (_delta_temperature < -_max_delta_temperature) {
    _delta_temperature = -_max_delta_temperature;
}

temperature += _delta_temperature;

if (temperature < -100) {
    temperature = -100;
}

// Optional: Output debug message to monitor temperature
// show_debug_message("Temperature: " + string(temperature));
