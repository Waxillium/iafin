if(keyboard_check_pressed(vk_escape)){//if press escape, pause game
	scr_pause();	
}
if(global.paused){//if paused, display what was last on screen
	draw_sprite(global.pause_sprite, 0, 0, 0);
	var pline = "[GAME PAUSED]\nPRESS ESC TO RESUME";
	var gline = "[GAME OVER]\nPRESS R TO RESTART";
	draw_set_font(font0);
	draw_set_halign(fa_center);
	if(!global.gameover){
		draw_text(room_width/2,room_height/2, pline);
	} else if(global.gameover){
		draw_text(room_width/2,room_height/2, gline);
	}
	draw_set_halign(fa_left);
}
