function scr_use_ladder(_current_room) {
    switch (_current_room) {
        case rm_ca_a_floor_2:
            return rm_ca_a_main_deck;
        case rm_ca_a_main_deck:
            return rm_ca_a_floor_2;
        case rm_ca_b_main_deck:
            return rm_ca_b_floor_2;
        case rm_ca_b_floor_2:
            return rm_ca_b_main_deck;
        case rm_engine_main_deck:
            return rm_engine_floor_2;
        case rm_engine_floor_2:
            return rm_engine_main_deck;
        default:
            return _current_room;
    }
}
