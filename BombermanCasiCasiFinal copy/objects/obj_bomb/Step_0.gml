/// @description Insert description here
// You can write your code in this editor
//script_execute(step_bomb)
//sprite_index = spr_bomb;

image_speed = walkSpeed / 3;
	

if (image_index > 10)
	{
		instance_destroy(obj_bomb)
		instance_destroy(obj_fuegoLeft)
		instance_destroy(obj_fuegoUp)
		//para dejar bomba cada jugador
		with (obj_player1){activate_bomb=true;}
		with (obj_player2){activate_bomb=true;}
	}
