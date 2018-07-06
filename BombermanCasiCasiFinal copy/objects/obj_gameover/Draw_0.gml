/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_gameover);
draw_set_color(c_white);
draw_text(room_width/2,room_height/2,"Game Over");
draw_set_font(fnt_playerwins);

if(!instance_exists(obj_player1) and !instance_exists(obj_player2)){
	draw_text(room_width/2,room_height/2+80,"It's a tie!");
}
else if(!instance_exists(obj_player1)){
	draw_text(room_width/2,room_height/2+80,"Player 2 Wins!");
}
else if(!instance_exists(obj_player2)){
	draw_text(room_width/2,room_height/2+80,"Players 1 Wins!");
}

if instance_exists(obj_player2){
	show_debug_message("si existo");
}