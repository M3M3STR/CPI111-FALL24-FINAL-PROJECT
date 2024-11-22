function scr_back_of_ship() {
    var _floor_2 = room == rm_front_floor_2;
    var _floor_3 = room == rm_front_floor_3;
    var _main_deck = room == rm_front_main_deck;
    var _upper_deck = room == rm_front_upper_deck;

    return _floor_2 || _floor_3 || _main_deck || _upper_deck;
}
