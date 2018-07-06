/// @description Insert description here
// You can write your code in this editor

size = ((auxiliar.timer-20)/(auxiliar.initial_timer-20))

if (size<0) {
	size =0;
}

if(!instance_exists(obj_player1) and !instance_exists(obj_player2)){
	show_debug_message("its a tie")
	auxiliar.altura=993;
	instance_destroy();
}
else if(!instance_exists(obj_player1)){
	show_debug_message("player2 wins")
	auxiliar.altura=993;
	instance_destroy();
}
else if(!instance_exists(obj_player2)){
	show_debug_message("player1wins")
	auxiliar.altura=993;
	instance_destroy();
}

image_xscale = size