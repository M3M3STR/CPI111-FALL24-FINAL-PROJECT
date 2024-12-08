/// @description Load Reactor Object

show_debug_message("msg after roomgoto engine")
		obj_reactor.is_reactor_working = _reactor.is_reactor_working;
		obj_reactor.temperature = _reactor.temperature;
		obj_reactor.rate = _reactor.rate;
		obj_reactor.are_pumps_cooling = _reactor.are_pumps_cooling;
		obj_reactor.coolant_reduction = _reactor.coolant_reduction;
		obj_reactor.is_heat_exchanging = _reactor.is_heat_exchanging;
		obj_reactor.heat_generation = _reactor.heat_generation;
		obj_reactor.power_output = _reactor.power_output;
		obj_reactor.control_rod_level = _reactor.control_rod_level;
		obj_reactor.control_rod_status = _reactor.control_rod_status;
		obj_reactor.temp_working = _reactor.temp_working;
		obj_reactor.temp_rod_level = _reactor.temp_rod_level;
		obj_reactor.temp_heating = _reactor.temp_heating;
		obj_reactor.temp_cooling = _reactor.temp_cooling;
		obj_game_controller.player_x = obj_game_controller.player_x_saved;
		obj_game_controller.player_y = obj_game_controller.player_y_saved;
		obj_game_controller.interaction_type = INTERACTION.ESCAPE;
		room_goto(obj_game_controller.room_to_load);