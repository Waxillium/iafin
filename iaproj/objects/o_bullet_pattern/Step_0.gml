//implement the scr_bulllet_pattern_create 
if(!instance_exists(target)){//if the enemy that creates it dies, destroy self
	instance_destroy();	
}
else{
	var angle_dist = 0;
	var ang = angle;
	if(num_bullets>1){
		angle_dist = angle_range/(num_bullets-1);
		ang = angle-(angle_range/2);
	}
	if(timer == 0){
		timer = global.minfirerate/fire_rate;
		for(var i = 0; i < num_bullets; i++){
			var curAngle = ang+angle_dist*i;
			var bul = instance_create_layer(x,y, "Instances", o_bullet);
			bul.xvel = lengthdir_x(bullet_speed, curAngle);
			bul.yvel = lengthdir_y(bullet_speed, curAngle);
			bul.color = target.color;
			bul.image_angle = curAngle;
			bul.wiggle = wiggle;
			bul.wiggle_interval = wiggle_interval;
			bul.velocity = bullet_speed;
		}
		angle += angle_change;
	}
	timer -= min(global.dt, timer);
	x = target.x;
	y = target.y;
}
