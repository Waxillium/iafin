/*if(!instance_exists(o_wave)){
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