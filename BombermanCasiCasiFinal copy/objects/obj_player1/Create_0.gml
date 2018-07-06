/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
image_index = 0;
walkspeed = 4;
collisionspeed = walkspeed + 2;
hp=10;
keyright=ord("D");
keyleft=ord("A");
keydown=ord("S");
keyup=ord("W");
keybomb=vk_space;
wright=spr_player1_walkright;
wleft=spr_player1_walkleft;
wdown=spr_player1_walkdown;
wup=spr_player1_walkup;
spr_dead=spr_player1_dead;
activate_bomb=true;

//player states

state = player_states.normal