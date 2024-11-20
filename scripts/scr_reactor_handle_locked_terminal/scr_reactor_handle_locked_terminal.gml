/// @description Handle Reactor Terminal when locked
function scr_reactor_handle_locked_terminal(_command, _input) {
    if (_command == RCOMMAND.PASSWORD && obj_terminal.lockout >= 1) {
        scr_reset_display();
        scr_set_output("Initializing Boot Sequence...");
        alarm_set(2, 5 * scr_fps()); // Boot sequence alarm
    } else if (obj_terminal.lockout >= 1 && _input != "") {
        obj_terminal.lockout--;
        scr_set_output("Incorrect Password " + string(obj_terminal.lockout) + " Attempts Remaining");
    } else if (_input != "") {
        scr_set_output("Locked Out (password is 'password')");
    }
}