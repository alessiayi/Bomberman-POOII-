/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
	case 0:
		audio_play_sound(select_sound,1,false);
		room_goto(game);
		break;
		
	case 3:
		audio_play_sound(select_sound,1,false);
		game_end();
		break;
}