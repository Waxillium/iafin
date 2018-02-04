//initialize variables available to all objects
global.enemy_speed = 1;
global.points = 0;
global.dt = 1;
global.paused = false;
global.pause_sprite = noone;
global.gameover = false;
global.minfirerate = 60;
instance_deactivate_object(o_game_object);
instance_activate_object(o_game_object);