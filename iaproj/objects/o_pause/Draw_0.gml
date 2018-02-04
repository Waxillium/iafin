if(keyboard_check_pressed(vk_escape)){//if press escape, pause game
	scr_pause();	
}
if(global.paused){//if paused, display what was last on screen
	draw_sprite(global.pause_sprite, 0, 0, 0);
	var pline = "[GAME PAUSED]\nESC TO RESUME\nR TO RESTART";
	var gline = "[GAME OVER]\nR TO RESTART";
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	if(!global.gameover){
		draw_text_transformed(x, y, pline, 1, 1, 0);
	} else if(global.gameover){
		draw_text_transformed(x, y, gline, 1, 1, 0);
	}
	draw_set_halign(fa_left);
}
