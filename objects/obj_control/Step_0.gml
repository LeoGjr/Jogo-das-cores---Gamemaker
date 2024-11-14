/// @description Insert description here
// You can write your code in this editor
rot += spd * direcao;

for (var i = 0; i < pedaco; i++)
{
	var xx = lengthdir_x(dist, rot + i * ang);
	var yy = lengthdir_y(dist, rot + i * ang);
	
	filhos[i].image_angle = (i * ang + 90) + rot;
	filhos[i].x = x + xx;
	filhos[i].y = y + yy;
}

if(instance_exists(obj_player))
{
	if(obj_player.y > y + 600)
	{
		instance_destroy();
	}
}
