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