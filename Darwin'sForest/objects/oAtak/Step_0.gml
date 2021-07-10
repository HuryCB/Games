x = oPlayer.x;
y = oPlayer.y;

//image_angle = lerp(image_angle,image_angle+180,0.1);
//while(angle <= 180){
	image_angle += spd;
	//angle++;
//}
//countDown--;

if image_angle>=angleFinal instance_destroy();