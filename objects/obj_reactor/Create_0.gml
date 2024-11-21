is_reactor_working = false;

temperature = -100;
rate = 15;

are_pumps_cooling = false;
randomize();
coolant_reduction = random_range(0.3, 1);

is_heat_exchanging = false;
heat_generation = 0.1;

power_output = "Null";
control_rod_level = 100;
control_rod_status = "Error";

temp_working = false;
temp_rod_level = 100;
temp_heating = false;
temp_cooling = false;
