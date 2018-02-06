//delta timing prevents variable framerate from affecting gamespeed
global.dt = delta_time*(60/1000000);//time in minutes between frames
if(global.paused && keyboard_check_pressed(ord("R"))){
	instance_activate_all();
	sprite_delete(global.pause_sprite);
	game_restart();
	global.time = 0;
}
global.time += global.dt/60;
if(!instance_exists(o_wave)){
	wavenum++;
	if(wavenum<el){
		current_wave = easy[wavenum];
	} else if(wavenum<ml){
		current_wave = medium[wavenum];
	} else{
		current_wave = irandom_range(0, hl-1);
	}
	scr_wave_create(current_wave);
}