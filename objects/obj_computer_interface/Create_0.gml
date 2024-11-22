// Display-related state
is_computer_on = false;
display_type = DisplayType.Default;
scale = 0;
output = "";

// Typing-related state
is_processing = false;
sentence = "";
sentence_length = 0;
sentence_current_length = 0;
o_sentence_length = 0;
o_sentence_current_length = 0;
draw_string = "";
o_draw_string = "";

// Input-related state
player_input = "";

// Camera-related state
cx = 0;
cy = 0;
_xscle = 0;
_yscle = 0;
cvh = 0;
cvw = 0;

// Text positioning
text_x = 0;
text_y = 0;

// Reactor-specific state
reactor_screen = ReactorScreen.Main;