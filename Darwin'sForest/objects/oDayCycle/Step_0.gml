//time += 0.01;
//if(time>1){
//   time -= 2;
//}
//image_alpha = lerp(0.2,0.8,abs(time));

if(darkening){
	//image_alpha += global.minute;
	if(image_alpha >=0.9){
		darkening = false;
	}
}else if(!darkening){
	image_alpha -= global.minute;
	if(image_alpha <=0){
		darkening = true;
	}
}
	
