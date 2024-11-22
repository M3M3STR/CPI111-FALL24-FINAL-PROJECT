/// @description Handle empty input
function scr_command_none() {
    if irandom_range(1, 10000) == 1 {
        scr_set_output("Loser");
    } else {
        scr_set_output("Please Enter A Command");
    }
}