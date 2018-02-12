///@description initializes the unique properties of a boss enemy
///@func scr_boss_create(enemy1, enemy2*, enemy3*, enemy4*, enemy5*);
///@param enemy1
///@param enemy2*
///@param enemy3*
///@param enemy4*
///@param enemy5*
if(timer==0){
	cur_enemy = argument[0]++;
	for(var i = 0; i < 6; i++){
		scr_enemy_create(x, y, cur_enemy);
	}
	if(cur_enemy>argument_count) cur_enemy = argument[0];
	timer = 60*3;
}