#region movement
y += yvel*global.dt;
x += xvel*global.dt;
if(image_angle = 0)
xvel -= xvel * .1 * global.dt;//slow down the bullets x velocity over time
if(!point_in_rectangle(x, y, 0, 0, room_width, room_height)){//destroy self if goes outside the screen
	instance_destroy();
}
#endregion