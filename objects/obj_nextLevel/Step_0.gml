/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, obj_player) && room_exists(room_next(room))){
	room_goto_next();
}
else if(place_meeting(x, y, obj_player) && room_exists(room_previous(room))){
	room_goto_previous();
}


