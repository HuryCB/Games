time--;
image_alpha -= 1/(tempo/2);
if(time<=0||image_alpha<0){
	instance_destroy();
}

