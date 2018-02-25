if(!instance_exists(o_wave)){
	wavenum++;
	if(wavenum<el){
		current_wave = easy[wavenum];
	} else if(hnum<3){
		hnum++;
		current_wave = hard[irandom_range(0, hl-1)];
	} else if(hnum>2){
		current_wave = hard[3];
		hnum = 0;
	}
	scr_wave_create(current_wave);
}