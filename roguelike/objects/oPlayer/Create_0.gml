/// @description Insert description here
// You can write your code in this editor
//oPlayer.image_xscale = 5;
//oPlayer.image_yscale =5;
event_inherited();
global.oX = oPlayer.x;
global.oY = oPlayer.y;
atk = 8;
max_atk = 8;

max_life = 100;
life = max_life;

attaking = false;

canWalk = 0;
walkCharge = 15;
animationSpeed = 0;

canAtk = 0;
atkCharge = 25;

lifeSteal = 0;