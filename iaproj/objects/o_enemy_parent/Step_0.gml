if(place_meeting(x,y, o_bullet_player) && y>0){//if hit by player bullet, die
	instance_create_layer(x,y, "Instances", o_points);
	global.points++;
	instance_destroy();
}
if(y<10){//if above screen from top, go down
	y+=5*global.dt;	
}
if(y>room_height){//if goes past bottom, destroy self
	instance_destroy();	
}
