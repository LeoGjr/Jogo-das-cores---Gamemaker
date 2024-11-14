/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_player))
{
	alvo = obj_player;
}
else
{
	alvo = self;
}

camera_set_view_angle(view_camera[0], 180);
