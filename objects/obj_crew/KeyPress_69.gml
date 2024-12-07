
if (instance_exists(obj_crew)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < obj_player.interaction_distance) {
			if(!instance_exists(obj_textbox)) {
			instance_create_layer(0, 0, "idk_important", obj_textbox);
			}
			obj_textbox.crew_name = crew_name;
			obj_textbox.dialogue = dialogue;
        }
    }
}
