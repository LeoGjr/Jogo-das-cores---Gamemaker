/// @description Insert description here
// You can write your code in this editor
pedaco = irandom_range(4, 10);
dist = pedaco * 20;
ang = 360 / pedaco;
rot = 0;
filhos[pedaco] = 0;

spd = choose(.3, .6, 1, 1.5);
direcao = choose(1, -1);

var cor = [c_red, c_blue, c_yellow, c_green];
var valor_c = irandom(3);


for (var i = 0; i < pedaco; i++)
{
	var xx = lengthdir_x(dist, rot + i * ang);
	var yy = lengthdir_y(dist, rot + i * ang);
	filhos[i] = instance_create_layer(x + xx, y + yy, "instances", obj_cor);
	filhos[i].image_blend = cor[valor_c];
	filhos[i].image_angle = i * ang + 90;
	filhos[i].valor = valor_c;
	
	valor_c++;
	
	valor_c = valor_c mod 4;
}

instance_create_layer(x, y + 600, "instances", obj_novo);
