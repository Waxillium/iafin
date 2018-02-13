var lr = scr_enemy_create(-10, room_height/3, o_diver_basic);
lr.dir = 0;
lr.velocity = 4;
var rl = scr_enemy_create(room_width+10, room_height*2/3, o_diver_basic);
rl.dir = 180;
rl.velocity = 4;