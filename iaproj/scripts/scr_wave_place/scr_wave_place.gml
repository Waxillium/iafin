///@description places enemies around the room spaced evenly
///@func scr_wave_place(num_e, offset, enemy, angle*, angle_range*, angle_change*, wiggle*, wiggle_interval*)
///@param num_e
///@param offset
///@param enemy
///@param angle*
///@param angle_range*
///@param angle_change*
///@param wiggle*
///@param wiggle_interval*
for(var i = 0; i < argument[0]; i++){
	var en = scr_enemy_create(argument[1] + i*(room_width-argument[1]*2)/(argument[0]-1), -100, argument[2]);
	if(argument_count>3){
		en.bp.angle = argument[3];
		en.bp.angle_range = argument[4];
		en.bp.angle_change = argument[5];
	}
	if(argument_count>6){
		en.bp.wiggle = argument[6];
		en.bp.wiggle_interval = argument[7];	
	}
}