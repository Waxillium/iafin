#region movement
up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
slow = keyboard_check(vk_shift);
if(slow) spd = init/2; else spd = init;
x = lerp(x, x+(spd*(right-left)), lerp_amt*global.dt);
y = lerp(y, y+(spd*(down-up)), lerp_amt*global.dt);
//prevent the player from moving out of the room
if(x<0) x=0; if(x>room_width) x = room_width;
if(y<0) y=0; if(y>room_height) y = room_height;
#endregion
#region shoot bullets
var xvel = (x-xprevious)/global.dt; //get horizontal velocity of player
if(keyboard_check(vk_space) && bullet_timer==0){
	bullet_timer = 3.5;
	var bul = instance_create_layer(x, y, "Instances", o_bullet_player);
	bul.color = color; 
	bul.xvel = xvel; //give a portion of the players horizontal velocity to the bullet
}
bullet_timer -= min(global.dt, bullet_timer);
#endregion
#region stores the player position variables for a trail to be drawn behind the player
trail_timer += global.dt;
while(trail_timer>=1){
	var point = array_create(2, 0);
	point[0] = x;
	point[1] = y+12;
	ds_list_add(trail, point);
	trail_timer--;
}
while(ds_list_size(trail)>=trail_length){
	ds_list_delete(trail, 0);	
}
for(var i = 0; i<ds_list_size(trail)-1; i++){
	var temp = trail[|i];
	temp[1] += (spd*global.dt);
	ds_list_set(trail, i, temp);
}
#endregion
#region pause the game if shot or hit
if(place_meeting(x,y,o_enemy_parent) || place_meeting(x,y,o_bullet)){
	scr_pause();
	global.gameover = true;
}
#endregion
