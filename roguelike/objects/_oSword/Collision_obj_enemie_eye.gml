/// @description Insert description here
// You can write your code in this editor
ScreamShake(2,10);
with(other){
	
	health -= other.dmg;
	toX = lengthdir_x(other.knockback,direction );
	toY = lengthdir_y(other.knockback,direction );
	hitou = true;
	
	knockback = other.knockback;
	
}
	