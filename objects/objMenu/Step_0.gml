menu_x += (menu_x_target - menu_x) / menu_speed
if menu_control {
	if global.objControlId.pad_up_pressed {
		menu_cursor += 1;
		if menu_cursor >= menu_items menu_cursor = 0;
	}
	if global.objControlId.pad_down_pressed {
		menu_cursor -= 1;
		if menu_cursor < 0 menu_cursor = menu_items - 1;
	}
	if global.objControlId.button_jump {
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}
if menu_x > gui_width + 150 && menu_committed != 1 {
	switch menu_committed
	{
		case 2: scrSlideTransition(TRANS_MODE.NEXT); break;
		case 1: {
			if !file_exists(SaveFile) {
				scrSlideTransition(TRANS_MODE.NEXT);
			}
			else {
				var file = file_text_open_read(SaveFile);
				var target = file_text_read_real(file);
				file_text_close(file);
				scrSlideTransition(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 0: game_end(); break;
	}
}