draw_set_color(c_white);
draw_set_font(font0)
var str = "SCORE: " + string(global.points);
var f = "FPS: " + string(fps);
draw_text_transformed(10,5, str + "\n" + f, 1, 1, 0);//draw the fps and score onto the screen
//makes the background to fluctuate colors
var r = scr_tsin(0, 60, 40000, 0);
var bg = layer_background_get_id("background");
layer_background_blend(bg,make_color_rgb(r, 10, 24));