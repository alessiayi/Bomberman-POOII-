/// @description Insert description here
// You can write your code in this editor
var i=0;
repeat(botones){
	
	draw_set_font(menu_font);
	draw_set_halign(fa_center);
	draw_set_color(c_orange);
	
	if (menu_index==i && i==0){draw_set_color(c_black);}
	if (menu_index==i && i==1){draw_set_color(c_white);}
	if (menu_index==i && i==2){draw_set_color(c_yellow);}
	if (menu_index==i && i==3){draw_set_color(c_black);}
	
	draw_text(menu_x,menu_y+boton_h*i,boton[i]);
	i++;
}