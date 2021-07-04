/// @description Insert description here
// You can write your code in this editor

	if(alarm[0] == 0){
		show_message("O tempo acabou");
		game_restart();
	}else if(place_meeting(x, y, obj_player)){
		alarm = instance_destroy();
	}
	