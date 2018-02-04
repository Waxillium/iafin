/// @description creates a bullet pattern object
/// @func scr_bullet_pattern_create(bullet_sprite_index, num_bullets, fire_rate, bullet_speed, angle, angle_range, angle_change,wiggle, wiggle_interval)
/// @param bullet_sprite_index
/// @param num_bullets
/// @param fire_rate
/// @param bullet_speed
/// @param angle
/// @param angle_range
/// @param angle_change
/// @param wiggle
/// @param wiggle_interval
var inst = instance_create_layer(x, y, "Instances", o_bullet_pattern);
inst.bullet_sprite_index = argument[0];
inst.num_bullets = argument[1];
inst.fire_rate = argument[2];
inst.bullet_speed = argument[3];
inst.angle = argument[4];
inst.angle_range = argument[5];
inst.angle_change = argument[6];
inst.wiggle = argument[7];
inst.wiggle_interval = argument[8];
inst.target = self;
return inst;