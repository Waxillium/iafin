#region pause the game and draw screenshots
if(!global.gameover && keyboard_check_pressed(vk_escape)){//if press escape, pause game
	scr_pause();	
}
if(global.paused){//if paused, display what was last on screen
	var h = window_get_height();
	var w = window_get_width();
	var r = room_width/room_height;
	var scale = 1;
	if(w/h = r){
		draw_sprite(global.pause_sprite, 0, 0, 0); 
	} else if(w>h){
		var scale = h/room_height;
		var offset =  w - scale*room_width;
		draw_sprite_stretched(global.pause_sprite, 0, offset/2, 0, scale*room_width, h); 
	} else if(h>w){
		var scale = w/room_width;
		var offset =  h - scale*room_height;
		draw_sprite_stretched(global.pause_sprite, 0, 0, offset/2, w, scale*room_height); 
	}
	var pline = "[GAME PAUSED]\nESC TO RESUME\nR TO RESTART";
	var gline = "[GAME OVER]\nR TO RESTART\nSCORE: "+ string(global.points);
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if(!global.gameover){
		draw_text_transformed(w/2, h/2, pline, scale, scale, 0);
	} else if(global.gameover){
		draw_text_transformed(w/2, h/2, gline, scale, scale, 0);
	}
	draw_set_halign(fa_left);
}
#endregion
#region setup gui window variables
var h = window_get_height();
var w = window_get_width();
var r = room_width/room_height;
var scale = 1; if(w>h) scale = h/room_height; else if(h>w) scale = w/room_width;
var wid = 0;
#endregion
#region draw the background gui on the screen
if(!global.paused){
	bcolor = o_background.color;
	lcolor = o_player.color;
	charge = o_player.charge;
}
if(w>h){
	wid = (w-(scale*room_width));//draw the background colors ontop of the black bars on the sides of the game
	draw_line_width_color(0, -1, 0, h+1, wid, bcolor, bcolor);
	draw_line_width_color(wid+scale*room_width-1, -1, wid+scale*room_width-1, h+1, wid, bcolor, bcolor);
	draw_line_width_color(wid/2, 0, wid/2, h, 1, lcolor, lcolor);//draw the play colors around the square of the game
	draw_line_width_color(w-(wid/2)-1, 0, w-(wid/2)-1, h, 1, lcolor, lcolor);
	draw_line_width_color(wid/2, 0, w-(wid/2), 0, 1, lcolor, lcolor);
	draw_line_width_color(wid/2, h-1, w-(wid/2), h-1, 1, lcolor, lcolor);
} else if (h>w){
	wid = (h-(scale*room_width));
	draw_line_width_color(0, 0, w, 0, wid, bcolor, bcolor);
	draw_line_width_color(0, wid+scale*room_height-1, w, wid+scale*room_height-1, wid, bcolor, bcolor);
	draw_line_width_color(0, wid/2, 0, h-wid/2, 1, lcolor, lcolor);
	draw_line_width_color(w-1, wid/2, w-1, h-wid/2, 1, lcolor, lcolor);
	draw_line_width_color(0, wid/2, w, wid/2, 1, lcolor, lcolor);
	draw_line_width_color(0, h-wid/2-1, w, h-wid/2-1, 1, lcolor, lcolor);
}
draw_set_color(c_white);
draw_set_font(font0)
var str = "SCORE: " + string(global.points) + "\nFPS:   " + string(fps) + "\nTIME:  " +string(global.time);
var strhei = h - (string_height(str)*scale) - 5;
draw_text_transformed(5, strhei, str, scale, scale, 0);//draw the fps and score onto the screen
#endregion
#region draw the charge bar for the players charged bullets
if(w>h){
	var width = string_width(str)*scale;
	var boxcol = merge_color(bcolor, c_black, .5);
	var g = 142;
	var b = 204;
	var len = strhei - h/3 - 35;
	var col1 = make_color_rgb(0, g, b);
	var col2 = make_color_rgb(255, g, b);
	draw_rectangle_color(5, h/3, width, strhei-5, boxcol, boxcol, boxcol, boxcol, false);
	if(charge>0){
		draw_rectangle_color(20, h/3+15, width-15, strhei-20, col1, col1, col2, col2, false);
		draw_line_width_color(5, h/3+len/3+7, width-15, h/3+len/3+7, 15, boxcol, boxcol);
		draw_line_width_color(5, h/3+len*2/3+7, width-15, h/3+len*2/3+7, 15, boxcol, boxcol);
		var chargeleft = (30-charge)/30;
		draw_rectangle_color(5, h/3, width, h/3+(chargeleft*len), boxcol, boxcol, boxcol, boxcol, false);
	}
}
#endregion