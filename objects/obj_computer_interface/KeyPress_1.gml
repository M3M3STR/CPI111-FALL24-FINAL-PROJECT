/// @description Insert description here
// You can write your code in this editor
if typing{
	if keyboard_check(vk_backspace){
		string_delete(player_input,(string_length(player_input)-2),2)
		player_input=string_delete(player_input,(string_length(player_input)),1)
	}else if keyboard_check(vk_delete){
		player_input=string("")
	}else if !keyboard_check(vk_enter) && !keyboard_check(vk_shift) && !keyboard_check(vk_escape){

player_input=string(player_input)+keyboard_lastchar

	}
}