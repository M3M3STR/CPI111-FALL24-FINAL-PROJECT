function scr_use_door(_current_room, _move_direction) {
    switch (_move_direction) {
        case DIRECTION.EAST:
            switch (_current_room) {
                case rm_ca_a_main_deck:
                    return rm_ca_b_main_deck;
                case rm_ca_b_main_deck:
                    return rm_engine_main_deck;
                case rm_hp_hallway:
                    return rm_ca_a_main_deck;
                case rm_front_main_deck:
                    return rm_hp_hallway;
                default:
                    return _current_room;
            }
        case DIRECTION.WEST:
            switch (_current_room) {
                case rm_ca_b_main_deck:
                    return rm_ca_a_main_deck;
                case rm_engine_main_deck:
                    return rm_ca_b_main_deck;
                case rm_ca_a_main_deck:
                    return rm_hp_hallway;
                case rm_hp_hallway:
                    return rm_front_main_deck;
                default:
                    return _current_room;
            }
        default:
            return _current_room;
    }
}
