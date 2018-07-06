//show_debug_message("cambio de state");

sprite_index = spr_dead;
image_speed = walkspeed / 3;

show_debug_message(image_index);

if(image_index>=image_number-2){
	instance_create_layer(0,0,"lyr_gameover",obj_gameover);
	instance_destroy();
}
