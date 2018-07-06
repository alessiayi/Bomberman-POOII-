/// @description Insert description here
// You can write your code in this editor
if (timer <= 20 && i<993){
	instance_create_layer(i,altura,layer,obj_brick_concrete_die);
	i+=64
}
timer--;
show_debug_message(timer);

if timer<1{
	timer = initial_timer;
	i = 96;
	altura +=64;
}

if altura>=993{
	instance_destroy();
}
