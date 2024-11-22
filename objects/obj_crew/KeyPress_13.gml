/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_crew)) {
    if (!obj_player.is_player_paused) {
        if (distance_to_object(obj_player) < 100) {
			instance_create_layer(0, 0, "computer", obj_textbox);
			obj_textbox.crew_name = crew_name;
			obj_textbox.dialogue = dialogue;
        }
    }
}