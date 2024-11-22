/// @description Prompt user about Heat Exchangers
function scr_reactor_heat_exchangers_prompt() {
    scr_reset_display();
    var status = scr_conditional(obj_reactor.is_heat_exchanging, "Online", "Offline");
    var action = scr_conditional(obj_reactor.is_heat_exchanging, "Deactivate", "Activate");
    scr_set_sentence("Heat Exchangers are currently " + 
		status + 
		".\nWould you like to " + 
		action + 
		" them? (yes/no)");
}