global.gamepad_id = -1;
for (var i = -100; i < 100; i++) 
{

	if (gamepad_is_connected(i))
	{
		show_debug_message(i);
		show_debug_message(gamepad_is_connected(i));
	    global.gamepad_id = i;
		control_mode="controller";
	}
}