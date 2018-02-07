last = scr_wave_create(tl_wave1);
wavenum = 0;
current_wave = tl_wave1;
easy = [tl_wave1, tl_wave2, tl_wave3];
medium = [tl_wave4, tl_wave5, tl_wave6];
hard = [tl_wave7, tl_wave8, tl_wave9];
el = array_length_1d(easy);
ml = array_length_1d(medium);
hl = array_length_1d(hard);

instance_create_layer(room_width/2, room_height/2, "Instances", o_pause);
instance_create_layer(room_width/2, room_height/2, "Instances", o_player);
instance_create_layer(x, y, "Instances", o_game_variables);
instance_create_layer(x, y, "Instances", o_stars);
instance_create_layer(x, y, "Instances", o_background);
//display_set_gui_size(room_width, room_height);
display_set_gui_maximise();