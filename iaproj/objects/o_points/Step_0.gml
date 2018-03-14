//if touches the player, increases the players points and deletes itself
if(place_meeting(x,y, o_player)){
	o_player.charge+=1;
	if(o_player.charge>30) o_player.charge = 30;
	instance_destroy();
}
//if the player is not holding down the left mouse button, goes to the player
if(!keyboard_check(vk_space)){
	x = lerp(x, o_player.x, .6 * global.dt);
	y = lerp(y, o_player.y, .6 * global.dt);
}
//if the player does not collect it within the timer amount, disappear
if(timer<=0){
	instance_destroy();	
}
timer -= global.dt;