/// @description Insert description here
// You can write your code in this editor
//joystick_support();

switch(state){
	
	case st.normal:
	//input
	
	
	
	hsp = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")));
	hsp *= move_speed;
	
	var jump = (keyboard_check(ord("W")));
	
	//jump
	if(jump && tile_ver_collision(1)) vsp = -jump_speed;
	
	//gravity
	if(vsp < 10) vsp += grav;
	
	//movement
	if(tile_hor_collision(hsp)){
		while(!tile_hor_collision(sign(hsp))){
		x += sign(hsp);
		}
		hsp = 0;
	}
	if(tile_ver_collision(vsp)){
		while(!tile_ver_collision(sign(vsp))){
			y += sign(vsp);
		}
		vsp = 0;
	}
	
	x += hsp;
	y += vsp;
	
	//animation
	if(!tile_ver_collision(1)){
		if(vsp<0) sprite_index = spr_player_jump;
		else sprite_index = spr_player_fall;
	}
	else if(hsp!=0){
		sprite_index = spr_player_move;
		image_xscale = sign(hsp);
	}
	else{
		sprite_index = spr_player_idl;	
	}
	
	
	break;
	
	case st.car:
	
	if(keyboard_check_pressed(vk_backspace)){
		instance_deactivate_object(obj_player);
	}
	
	break;
	
}