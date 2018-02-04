spawn = 4;
offset = 15;
for(var i = 0; i < spawn; i++){
	scr_enemy_create(offset + i*(room_width-offset*2)/(spawn-1), -100, o_shooter_3);	
}