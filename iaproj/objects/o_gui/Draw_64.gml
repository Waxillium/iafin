#region
var h = window_get_height();
var w = window_get_width();
var r = room_width/room_height;
var scale = 1; if(w>h) scale = h/room_height; else if(h>w) scale = w/room_width;
#endregion
var wid = (w-(scale*room_width));
if(w>h && instance_exists(o_background)){
	draw_line_width_color(0, -10, 0, h+10, wid, o_background.color, o_background.color);
	draw_line_width_color(wid+scale*room_width, -10, wid+scale*room_width, h+10, wid, o_background.color, o_background.color);
	draw_line_width_color(wid/2, 0, wid/2, h, 1, o_player.color, o_player.color);
	draw_line_width_color(w-(wid/2), 0, w-(wid/2), h, 1, o_player.color, o_player.color);
	draw_line_width_color(wid/2, 0, w-(wid/2), 0, 1, o_player.color, o_player.color);
	draw_line_width_color(wid/2, h-1, w-(wid/2), h-1, 1, o_player.color, o_player.color);
}
draw_set_color(c_white);
draw_set_font(font0)
var str = "SCORE: " + string(global.points) + "\nFPS:   " + string(fps) + "\nTIME:  " +string(global.time);
draw_text_transformed(5, h - (string_height(str)*scale) - 5, str, scale, scale, 0);//draw the fps and score onto the screen