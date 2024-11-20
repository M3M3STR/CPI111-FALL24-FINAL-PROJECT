function scr_find_item(_item_name) {
    for (var _i = 0; _i < array_length(obj_inventory.items); _i++) {
        if (obj_inventory.items[_i].item_name == _item_name) {
            return obj_inventory.items[_i]; // Return the found item
        }
    }
    return null; // Item not found
}
