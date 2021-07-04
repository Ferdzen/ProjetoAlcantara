/// @description Insert description here
// You can write your code in this editor
//coletando pedras

if(place_meeting(x, y, obj_player) && !collected){
	pedras++;
	image_index = 0;
	collected = true;
}

if(collected){
	instance_destroy();
}

//gravidade

if(!tile_ver_collision(1)){
	y += 2;
}

//hsp

if(hsp != 0 ) hsp -= 0.2 * sign(hsp);

x += hsp;