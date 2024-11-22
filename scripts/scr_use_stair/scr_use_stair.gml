function scr_use_stair(_current_room, _direction) {
    switch (_direction) {
        case STAIRDIRECTION.UP:
            switch (_current_room) {
                case rm_front_main_deck:
                    return rm_front_upper_deck;
                case rm_front_floor_2:
                    return rm_front_main_deck;
                case rm_front_floor_3:
                    return rm_front_floor_2;
                default:
                    return _current_room;
            }
        case STAIRDIRECTION.DOWN:
            switch (_current_room) {
                case rm_front_main_deck:
                    return rm_front_floor_2;
                case rm_front_floor_2:
                    return rm_front_floor_3;
                case rm_front_upper_deck:
                    return rm_front_main_deck;
                default:
                    return _current_room;
            }
    }
}
