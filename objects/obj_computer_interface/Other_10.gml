/// @description Open reactor computer when terminal entered on

if (!is_computer_on) {
    if (!obj_terminal.is_reactor_unlocked) {
		var reactor_sentence = "This Terminal is Password Protected";
		scr_init_display(DisplayType.Reactor, reactor_sentence);
	} else {
		scr_init_display(DisplayType.Reactor, "Loading...");
		alarm_set(2, scr_fps())
	}
} else if (is_computer_on) {
    scr_close_display();
}