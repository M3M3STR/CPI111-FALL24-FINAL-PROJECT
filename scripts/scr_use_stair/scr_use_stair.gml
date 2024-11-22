function scr_use_stair(current_room, _direction) {
    switch (_direction) {
		case StairDirection.Up:
	        switch (current_room) {
	            case rm_front_main_deck: return rm_front_upper_deck;
	            case rm_front_floor_2: return rm_front_main_deck;
	            case rm_front_floor_3: return rm_front_floor_2;
	            default: return current_room;
	        }
	    case StairDirection.Down:
	        switch (current_room) {
	            case rm_front_main_deck: return rm_front_floor_2;
	            case rm_front_floor_2: return rm_front_floor_3;
	            case rm_front_upper_deck: return rm_front_main_deck;
	            default: return current_room;
	        }
	}
}