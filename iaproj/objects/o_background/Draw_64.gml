draw_set_color(c_white);
draw_set_font(font0)
var str = "SCORE: " + string(global.points) + "\nFPS:   " + string(fps) + "\nTIME:  " +string(global.time);
var h = window_get_height();
var w = window_get_width();
var r = room_width/room_height;
var scale = 1; if(w>h) scale = h/room_height; else if(h>w) scale = w/room_width;
draw_text_transformed(5, h - (string_height(str)*scale) - 5, str, scale, scale, 0);//draw the fps and score onto the screen
//makes the background to fluctuate colors
var r = scr_tsin(0, 60, 40000, 0);
var bg = layer_background_get_id("background");
layer_background_blend(bg,make_color_rgb(r, 10, 24));