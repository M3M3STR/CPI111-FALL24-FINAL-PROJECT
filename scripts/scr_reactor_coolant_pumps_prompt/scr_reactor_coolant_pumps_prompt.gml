/// @description Prompt user about Coolant Pumps
function scr_reactor_coolant_pumps_prompt() {
    scr_reset_display();
    var _status = scr_conditional(
        obj_reactor.are_pumps_cooling,
        "Online",
        "Offline"
    );
    var _action = scr_conditional(
        obj_reactor.are_pumps_cooling,
        "Deactivate",
        "Activate"
    );
    scr_set_sentence(
        "Cooling Pumps are currently " +
            _status +
            ".\nWould you like to " +
            _action +
            " them? (yes/no)"
    );
}
