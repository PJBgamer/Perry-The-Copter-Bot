show_debug_message(async_load[? "event_type"]);
switch(async_load[? "event_type"]) {           // Parse the async_load map to see which event has been triggered
    case "gamepad discovered":                     // A game pad has been discovered
        var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
        global.gamepad_id = pad;
		control_mode="controller";
		show_debug_message(pad);
        break;
    case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
        var pad = async_load[? "pad_index"];       // Get the pad index
        gamepad = noone;                   // Set the controller array to "noone" so it detects a new pad being connected
        control_mode="keyboard";
		break;
    }