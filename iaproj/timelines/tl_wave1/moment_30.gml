spawn = 3;
offset = 5;
for(var i = 0; i < spawn; i++){
	scr_enemy_create(offset + i*((room_width-offset*(spawn-1))/(spawn-1)), -100, o_diver_basic);	
}