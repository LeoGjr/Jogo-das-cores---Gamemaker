/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y + 600, "instances", obj_control);



with(other)
{
	valor = irandom(3);
	
	image_blend = cor[valor];
}

instance_destroy();
