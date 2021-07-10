//useTime = 20;
//time = useTime;

down = true;
//angle = image_angle;
//image_angle =  point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
angle =  point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)-45;
image_angle = angle;
recarga = 30;



/*
image_angle = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
if(mouse_x<oPlayer.x){
	image_angle-=45;
}

toAngle = 45;
angle = image_angle;


//image_angle = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
//show_debug_message(toAngle);