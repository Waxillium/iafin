///@description initializes the unique properties of a boss enemy
///@func scr_boss_spawn(enemy1, enemy2*, enemy3*, enemy4*, enemy5*);
///@param enemy1
///@param enemy2*
///@param enemy3*
///@param enemy4*
///@param enemy5*
if(timer==0){
	cur_enemy = argument[ce];
	for(var i = 1; i<4; i++){
		for(var j = 0; j<3; j++){
			var bob;
			if(i==1 && j!=2)	bob = scr_enemy_create(x+12*(j+1), y+10, cur_enemy);
			else if(i==2)	bob = scr_enemy_create(x+6+(j*12), y+18, cur_enemy);
			else if(i==3 && j!=2)	bob = scr_enemy_create(x+12+(j*12), y+26, cur_enemy);
		}
	}
	if(argument_count>0){
		ce++;
		if(ce+1>argument_count)	ce = 0;
	}
	timer = 60/spawnrate;
}