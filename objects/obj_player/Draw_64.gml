/// @description Insert description here
// You can write your code in this editor

var draw_grav_x = 49;
var draw_grav_y = 24;

var draw_ped_x = 146;
var draw_ped_y = 24;

var draw_oxi_x = 193;
var draw_oxi_y = -24;


//Componentes da tela
draw_sprite(spr_layout_grav, 0, draw_grav_x, draw_grav_y);
draw_sprite(spr_layout_pedra, 0, draw_ped_x, draw_ped_y);
draw_sprite(spr_layout_oxi, 0, draw_oxi_x, draw_oxi_y);

//draw fonte txt pedras
draw_set_font(ft_gui);

//draw cor font
draw_set_color(c_black);

//draw pedras txt
draw_text(draw_ped_x - 5, draw_ped_y - 23, pedras);

//draw gravidade txt
draw_text(draw_grav_x - 15, draw_grav_y - 23, "0,62");

//tempo printado na tela
draw_set_font(ft_gui);
draw_set_color(c_black);
draw_text(220, -8.5, string(obj_main.alarm[0]/room_speed));



