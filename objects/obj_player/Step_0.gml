/// @description Insert description here
// You can write your code in this editor

var click = mouse_check_button_pressed(mb_left);

if(click)
{
	if(velv < 0)
	{
		velv *= .5;
	}
	velv += -vel;
} 

velv += grav;

if(velv < velv)
{
	velv = vel;
}
if(velv > -vel) velv = -vel;

y += velv;

var col = instance_place(x, y, obj_cor);

if(col)
{
	if(col.valor != valor)
	{
		room_restart();
	}
}
