function scr_remove_item(_item_name) {
    for (var _i = 0; _i < array_length(obj_inventory.items); _i++) {
        if (obj_inventory.items[_i].item_name == _item_name) {
            array_delete(obj_inventory.items, _i, 1); // Remove item
            return true; // Successfully removed
        }
    }
    return false; // Item not found
}
