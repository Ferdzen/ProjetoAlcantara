/// @description Insert description here
// You can write your code in this editor
//draw choices

for(var i=0; i< array_length_1d(menu_items); i++){
	if(menu_selected != i) draw_set_alpha(0.7)
	
	draw_text(x, y +24*i, menu_items[i]);
	
	draw_set_alpha(1);
}