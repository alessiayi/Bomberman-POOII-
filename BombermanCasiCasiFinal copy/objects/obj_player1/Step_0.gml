/// @description Insert description here
// You can write your code in this editor


//script_execute(movement);
//script_execute(step_bomb);

switch(state){
	case player_states.normal: movement(); step_bomb(); break;
	case player_states.death: player_death();break;
}
