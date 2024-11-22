/// @description Prompt user about Coolant Pumps
function scr_reactor_coolant_pumps_prompt() {
    scr_reset_display();
    var status = scr_conditional(obj_reactor.are_pumps_cooling, "Online", "Offline");
    var action = scr_conditional(obj_reactor.are_pumps_cooling, "Deactivate", "Activate");
    scr_set_sentence("Cooling Pumps are currently " + status + ".\nWould you like to " + action + " them? (yes/no)");
}