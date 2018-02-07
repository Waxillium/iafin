#region makes the background to fluctuate colors
var r = scr_tsin(0, 60, 40000, 0);
color = make_color_rgb(r, 10, 24);
var bg = layer_background_get_id("background");
layer_background_blend(bg, color);
#endregion
