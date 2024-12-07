if (instance_exists(obj_o2)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 100) {
			if(!instance_exists(obj_textbox)) {
			instance_create_layer(0, 0, "idk_important", obj_textbox);
			}
			obj_textbox.crew_name = "Inventory";
			obj_textbox.dialogue = "Oxygen Canister collected. Your Oxygen levels have been reset to 100%.";
			obj_player.oxygen = 200;
			instance_destroy();
        }
    }
}
