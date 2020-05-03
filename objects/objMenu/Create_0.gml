#macro SaveFile "Save Data.sav"
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;
menu_x = gui_width;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 16;
menu_font = fntMenu;
menu_item_height = font_get_size(fntMenu);
menu_committed = -1;
menu_control = true;
menu[2] = "Free Play";
menu[1] = "High Scores";
menu[0] = "Exit To Desktop";
menu_items = array_length_1d(menu);
menu_cursor = 2;