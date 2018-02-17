if(!instance_exists(o_wave)){
	wavenum++;
	if(wavenum<4){
		current_wave = easy[wavenum];
	} else if(wavenum<ml+el){
		current_wave = medium[wavenum-el];
	} else{
		current_wave = irandom_range(0, hl-1);
	}
	scr_wave_create(current_wave);
}