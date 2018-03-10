//delta timing prevents variable framerate from affecting gamespeed
global.dt = delta_time*(60/1000000);//time in minutes between frames
if(global.paused && keyboard_check_pressed(ord("R"))){
	instance_activate_all();
	sprite_delete(global.pause_sprite);
	room_restart();
	global.time = 0;
} else if(global.paused && keyboard_check_pressed(ord("E"))){
	scr_pause();
	room_goto(r_menu);
}
if(!global.paused) global.time += global.dt/60;