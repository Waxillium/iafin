/// @description creates the wave
/// @func scr_wave_create(timeline)
/// @param timeline
//creates the wave object
var inst = instance_create_layer(0, 0, "Instances", o_wave);
inst.timeline_index = argument0;
inst.timeline_running = true;
return inst;