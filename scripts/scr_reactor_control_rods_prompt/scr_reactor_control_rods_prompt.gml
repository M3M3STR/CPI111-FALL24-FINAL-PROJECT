/// @description Prompt user about Control Rods
function scr_reactor_control_rods_prompt() {
    if obj_reactor.is_reactor_working {
        scr_reset_display();
        scr_set_sentence("The Control Rods are currently " + 
			string(obj_reactor.control_rod_level) + 
			"% inserted." + 
			"\nPlease enter a number between 0 and 100 to adjust:");
    } else {
        scr_set_output("Error: .");
        reactor_screen = 0;
    }
}