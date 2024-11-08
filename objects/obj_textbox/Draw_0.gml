/// @description Insert description here
// You can write your code in this editor
if (visible) {
    var width = 600;
    var height = 40;
    draw_set_color(c_black);
    draw_rectangle(x - width / 2, y, x + width / 2, y + height, false);
    draw_set_color(c_white);
    draw_text(x - width / 2 + 10, y + 10, text);
}