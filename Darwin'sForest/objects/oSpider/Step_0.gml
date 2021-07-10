countdown++;
clamp(countdown,0,invencibility);

if(countdown >= invencibility){
	invencible = false;
}else{ invencible = true;}

image_angle = point_direction(x,y,oPlayer.x,oPlayer.y)+90;

move_towards_point(oPlayer.x,oPlayer.y,spd)