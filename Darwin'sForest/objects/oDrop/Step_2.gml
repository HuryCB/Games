if(distance_to_object(oPlayer)<=8){
	var _spd = lerp(spd/8,spd,0.25);
	//speed = _spd;
	//direction = point_direction(x,y,oPlayer.x,oPlayer.y);
	move_towards_point(oPlayer.x,oPlayer.y,_spd);

}
else if (distance_to_object(oPlayer)>8){
	
	speed = 0;	
}