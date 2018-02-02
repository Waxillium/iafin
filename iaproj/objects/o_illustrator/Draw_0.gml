if(keyboard_check_pressed(ord("P"))){//if press p, pause game
	scr_pause();	
}
if(global.paused){//if paused, display what was last on screen
	draw_sprite(global.pause_sprite, 0, 0, 0);
}
