/// @description Open reactor computer when terminal entered on

if (!is_computer_on) {
    if (room == rm_engine_main_deck) {
        if (!is_reactor_unlocked) {
            var _reactor_sentence = "This Terminal is Password Protected";
            scr_init_display(DISPLAY.REACTOR, _reactor_sentence);
        } else {
			reactor_screen = RSCREEN.MAIN;
            scr_init_display(DISPLAY.REACTOR, "Loading...");
            alarm_set(2, scr_fps());
        }
    } else {
		scr_init_display(DISPLAY.DEFAULT, "Nothing to see here...");
	}
} else if (is_computer_on) {
    scr_close_display();
}
