function scr_use_door(current_room, move_direction) {
    switch (move_direction) {
        case Direction.East:
            switch (current_room) {
                case rm_ca_a_main_deck: return rm_ca_b_floor_2;
                case rm_ca_b_floor_2: return rm_engine_main_deck;
                case rm_hp_hallway: return rm_ca_a_main_deck;
                case rm_front_main_deck: return rm_hp_hallway;
                default: return current_room;
            }
        case Direction.West:
            switch (current_room) {
                case rm_ca_b_floor_2: return rm_ca_a_main_deck;
                case rm_engine_main_deck: return rm_ca_b_floor_2;
                case rm_ca_a_main_deck: return rm_hp_hallway;
                case rm_hp_hallway: return rm_front_main_deck;
                default: return current_room;
            }
        default:
            return current_room;
    }
}