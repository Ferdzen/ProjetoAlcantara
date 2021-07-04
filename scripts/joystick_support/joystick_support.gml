function joystick_support() {
	//configurando controle




	var maxpads = gamepad_get_device_count();
	for(var i = 0; i< maxpads;i++){
		if(gamepad_is_connected(i)){
			gpad_A = gp_face1;
			gpad_B = gp_face2;
			gpad_X = gp_face3;
			gpad_Y = gp_face4;
		
		
		}
		}

	/*
	switch(gamepad_button_check(0, gp_start)){
		case 101://joystick direita
		if(joy_right=true){
		joy_right = false
		keyboard_check(ord("D"));
		}
		if(joy_left = true){
		joy_left = false;
		keyboard_check(ord("A"));
		}
		break;
	
		case 102: //joystick esquerda
		joy_right = true;
		keyboard_check(ord("D"));

		break;

		case 100:
		joy_left = true;
		keyboard_check(ord("A"));
	
		break;
	}
	*/


}
