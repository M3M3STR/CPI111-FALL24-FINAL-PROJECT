if room == rm_ui_pause_menu {
    room_goto(last_room);
    interaction_type = INTERACTION.ESCAPE;
    is_shader_enabled = false;
    alarm_set(2, scr_fps());
}