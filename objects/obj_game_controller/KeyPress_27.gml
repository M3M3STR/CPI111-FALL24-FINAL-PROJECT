if room == rm_ui_pause_menu {
    room_goto(last_room);
    interaction_type = InteractionType.Escape;
    shade = false;
    alarm_set(2, scr_fps());
}