#region setup gui window variables
var h = display_get_gui_height();
var w = display_get_gui_width();
var r = room_width/room_height;
var scale = 1; if(w>h) scale = h/room_height; else if(h>w) scale = w/room_width;
var wid = 0;
#endregion
#region draw the background gui on the screen
var r = scr_tsin(0, 60, 40000, 0);
var flux = scr_tsin(0, 255, 10000, 0);
bgcol = make_color_rgb(r, 10, 24);
boxcol = make_color_rgb(flux, g, b);
if(w>h){
	wid = (w-(scale*room_width));//draw the background colors ontop of the black bars on the sides of the game
	draw_line_width_color(0, -1, 0, h+1, wid, bgcol, bgcol);
	draw_line_width_color(wid+scale*room_width-1, -1, wid+scale*room_width-1, h+1, wid, bgcol, bgcol);
	draw_rectangle_color(wid/2, 2, w-wid/2, h-2, boxcol, boxcol, boxcol, boxcol, true);
} else if (h>w){
	wid = (h-(scale*room_width));
	draw_line_width_color(0, 0, w, 0, wid, bgcol, bgcol);
	draw_line_width_color(0, wid+scale*room_height-1, w, wid+scale*room_height-1, wid, bgcol, bgcol);
	draw_rectangle_color(1, wid/2, w-2, h-wid/2, boxcol, boxcol, boxcol, boxcol, true);
} else if (w==h){
	draw_rectangle_color(1,2,w-2,h-2, boxcol, boxcol, boxcol, boxcol, true);
}
draw_set_color(boxcol);
draw_set_font(font0);
if(room == r_instructions){
	var str = "[W][A][S][D] OR ARROW KEYS TO MOVE\n\nHOLD [SHIFT] TO MOVE SLOWER\n\nSPACE TO SHOOT\n\nHOLD [ENTER] TO CHARGE A MORE POWERFUL SHOT, AND \nRELEASE ENTER TO RELEASE THE BLAST\n\nPRESS [ESC] TO PAUSE\n\nPRESS [R] WHEN PAUSED TO RESTART\n\nPRESS [E] WHEN PAUSED TO RETURN TO MAIN MENU\n\nPRESS [ESC] WHEN PAUSED TO RESUME\n\nPRESS [ESC] TO GO BACK TO THE MAIN MENU";
	draw_text_transformed(wid/2+5, 5, str, scale, scale, 0);//draw the instructions onto the screen
	if(keyboard_check_pressed(vk_escape)){
		room_goto(r_menu);	
	}
} else if(room == r_menu){
	var d = (keyboard_check_pressed(vk_down));
	var u = (keyboard_check_pressed(vk_up));
	var e = (keyboard_check_pressed(vk_enter));
	if(w>h || w==h){
		var l1 = 108;
		var l2 = h/2-string_height("INSTRUCTIONS")/2;
		var l3 = h-108-string_height("EXIT")/2;
		cur += d;
		cur -= u;
		if(cur > 3)	cur = 1;
		if(cur < 1)	cur = 3;
		if(cur == 1) go = l1;
		if(cur == 2) go = l2;
		if(cur == 3) go = l3;
		draw_sprite_ext(s_arrow, 0, wid/2+36 + sprite_get_width(s_arrow), go, scale, scale, 0, boxcol, 1);
		draw_text_transformed(wid/2+40 + sprite_get_width(s_arrow), l1, "START", scale, scale, 0);
		draw_text_transformed(wid/2+40 + sprite_get_width(s_arrow), l2, "INSTRUCTIONS", scale, scale, 0);
		draw_text_transformed(wid/2+40 + sprite_get_width(s_arrow), l3, "EXIT", scale, scale, 0);
	} else if(h>w){
		var l1 = wid/2+108;
		var l2 = h/2-string_height("INSTRUCTIONS")/2;
		var l3 = h-wid/2-108-string_height("EXIT")/2;
		cur += d;
		cur -= u;
		if(cur > 3)	cur = 1;
		if(cur < 1)	cur = 3;
		if(cur == 1) go = l1;
		if(cur == 2) go = l2;
		if(cur == 3) go = l3;
		draw_sprite_ext(s_arrow, 0, 36, go, scale, scale, 0, boxcol, 1);
		draw_text_transformed(40, l1, "START", scale, scale, 0);
		draw_text_transformed(40, l2, "INSTRUCTIONS", scale, scale, 0);
		draw_text_transformed(40, l3, "EXIT", scale, scale, 0);
	}
	if(e){
		if(go==l1) room_goto(r_game);
		if(go==l2) room_goto(r_instructions);
		if(go==l3) game_end();
	}
}
#endregion