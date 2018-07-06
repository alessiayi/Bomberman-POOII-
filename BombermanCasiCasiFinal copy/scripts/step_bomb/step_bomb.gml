var key_bomb = keyboard_check_pressed(keybomb);
var brick1 = true
var brick2 = true
var brick3 = true
var brick4 = true

if (key_bomb and activate_bomb)
{
	instance_create_layer(x, y, layer, obj_bomb);
	activate_bomb=false;
	audio_play_sound(bomb_sound,1,false);

	//rigth
	if place_meeting(x+60,y,obj_brick_wood){ //Chequea si hay brick al costado
		instance_create_layer(x+60, y, layer, obj_fuegoLeft);
		brick1=false;
	}
	
	if !place_meeting(x+60,y,obj_brick_concrete){ //Chequea si NO hay un concrete costado
		instance_create_layer(x+60, y, layer, obj_fuegoLeft);
		if brick1{ //Cheque si NO esta tocando brick
			instance_create_layer(x+120, y, layer, obj_fuegoLeft);
		}
	}

	//left
	if place_meeting(x-60,y,obj_brick_wood){
		instance_create_layer(x-60, y, layer, obj_fuegoLeft);
		brick2=false;
	}
	
	if !place_meeting(x-60,y,obj_brick_concrete){
		instance_create_layer(x-60, y, layer, obj_fuegoLeft);
		if brick2{
			instance_create_layer(x-120, y, layer, obj_fuegoLeft);
		}
	}
	
	//up
	if place_meeting(x,y-60,obj_brick_wood){
		instance_create_layer(x, y-60, layer, obj_fuegoUp);
		brick3=false;
	}
	
	if !place_meeting(x,y-60,obj_brick_concrete){
		instance_create_layer(x, y-60, layer, obj_fuegoUp);
		if brick3{
			instance_create_layer(x, y-120, layer, obj_fuegoUp);
		}
	}

	//down
	if place_meeting(x,y+60,obj_brick_wood){
		instance_create_layer(x, y+60, layer, obj_fuegoUp);
		brick4=false;
		show_debug_message(brick4)
	}
	if !place_meeting(x,y+60,obj_brick_concrete){
		instance_create_layer(x, y+60, layer, obj_fuegoUp);
		if brick4{
			instance_create_layer(x, y+120, layer, obj_fuegoUp);
			}
	}
	
}


