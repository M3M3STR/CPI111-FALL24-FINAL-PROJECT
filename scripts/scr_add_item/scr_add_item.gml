function scr_add_item(_item) {
    // Ensure there's space in the inventory
    if (array_length(obj_inventory.items) < obj_inventory.max_items) {
        array_push(obj_inventory.items, _item); // Add item
        return true; // Item successfully added
    } else {
        // Inventory full
        return false;
    }
}