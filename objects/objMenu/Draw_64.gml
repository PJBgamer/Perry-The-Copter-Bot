draw_set_font(fntMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
for (var i = 0; i < menu_items; i += 1) {
	var offset = 2;
	var txt = menu[i];
	if menu_cursor == i {
		txt = string_insert("->", txt, 0);
		var col =  c_white;
	}
	else var col = c_gray;
	var xx = menu_x;
	var yy = menu_y - (menu_item_height * (i * 1.5));
	draw_set_colour(c_white)
	draw_text(xx,yy,txt);
}