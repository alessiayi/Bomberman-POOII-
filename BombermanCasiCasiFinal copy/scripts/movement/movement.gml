//movimiento


if(keyboard_check(keyright) && place_free(x+collisionspeed, y)){
	x += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = wright;
}

else if(keyboard_check(keyleft) && place_free(x-collisionspeed, y)){
	x -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = wleft;
}

else if(keyboard_check(keydown) && place_free(x, y+collisionspeed)){
	y += walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = wdown;
}

else if(keyboard_check(keyup) && place_free(x, y-collisionspeed)){
	y -= walkspeed;
	image_speed = walkspeed / 3;
	sprite_index = wup;
}

if(keyboard_check(vk_nokey)) {
	image_speed = 0;
	image_index = 0;
}

//change state
with(obj_fuegoLeft){
	if (image_index>=7 and place_meeting(x,y,other)){
	other.state=player_states.death}
}

with(obj_fuegoUp){
	if (image_index>=7 and place_meeting(x,y,other)){
	other.state=player_states.death}
}

with(obj_bomb){
	if (image_index>=image_number-3 and place_meeting(x,y,other)){
	other.state=player_states.death}
}

if place_meeting(x,y,obj_brick_concrete_die){
	other.state=player_states.death
}

