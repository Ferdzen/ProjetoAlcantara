/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(snd_music)) audio_play_sound(snd_music, 150, true);

move_speed = 2;
jump_speed = 4;
grav = 5;

hsp = 0;
vsp = 0;

//joy_right = false;
//joy_left = false;



//states

enum st{
	normal,
	car
}

state = st.normal;
 
//camera


view_enabled = true;
view_visible[0] = true;

var width = 640, height = 360, scale = 2;

var cam = camera_create_view(0, 0, width, height, 0, obj_player, -1, -1, width/2, height/2);

view_set_camera(0, cam);

window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);

//gui
display_set_gui_size(width, height);
