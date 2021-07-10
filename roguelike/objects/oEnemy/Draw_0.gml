/// @description Insert description here
// You can write your code in this editor

draw_self();

var pc;
pc = (life / max_life) * 100;
draw_healthbar(x-8, y-8, x+7, y-6, pc, c_black, c_red, c_lime, 0, true, true);
/*
draw_sprite(sLight,0,x+8,y+8);
