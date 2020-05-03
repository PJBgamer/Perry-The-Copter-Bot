if has_control {	
    if control_mode = "keyboard" {
        pad_left = keyboard_check(vk_left);
        pad_right = keyboard_check(vk_right);
        pad_up = keyboard_check(vk_up);
		pad_up_pressed = keyboard_check_pressed(vk_up);
        pad_down =  keyboard_check(vk_down);
		pad_down_pressed =  keyboard_check_pressed(vk_down);
        button_jump = keyboard_check_pressed(ord("Z"));
        button_shoot = keyboard_check(ord("X"));
        button_pause = keyboard_check_pressed(vk_enter);
    }
    if control_mode = "controller" {
		pad_left = gamepad_button_check(global.gamepad_id,gp_padl);
        pad_right = gamepad_button_check(global.gamepad_id,gp_padr);
        pad_up = gamepad_button_check(global.gamepad_id,gp_padu);
        pad_up_pressed = gamepad_button_check_pressed(global.gamepad_id,gp_padu);
		pad_down = gamepad_button_check(global.gamepad_id,gp_padd);
		pad_down_pressed = gamepad_button_check_pressed(global.gamepad_id,gp_padd);
        button_jump = gamepad_button_check_pressed(global.gamepad_id,gp_face1);
        button_shoot = gamepad_button_check(global.gamepad_id,gp_face4);
        button_pause = gamepad_button_check(global.gamepad_id,gp_start);
    }
}