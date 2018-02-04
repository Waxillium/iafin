draw_set_color(c_white);
draw_set_font(font0)
var str = "SCORE: " + string(global.points) + "\nFPS:   " + string(fps) + "\nTIME:   " +string(get_timer()/1000000);
var h = window_get_height();
var w = window_get_width();
var r = room_width/room_height;
if(w/h == r){
	draw_text_transformed(5, room_height - string_height(str) - 5, str, 1, 1, 0);//draw the fps and score onto the screen
} else if(w>h){
	var offset =  5-(w/h - r)/2 * room_width;
	draw_text_transformed(offset, room_height - string_height(str) - 5, str, 1, 1, 0);//draw the fps and score onto the screen
} else if (h>w){
	var offset =  -string_height(str) + (h/w - r)/2 * room_height + room_height;
	draw_text_transformed(5, offset, str, 1, 1, 0);//draw the fps and score onto the screen
}
//makes the background to fluctuate colors
var r = scr_tsin(0, 60, 40000, 0);
var bg = layer_background_get_id("background");
layer_background_blend(bg,make_color_rgb(r, 10, 24));