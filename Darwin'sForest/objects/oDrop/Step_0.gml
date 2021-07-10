clamp(scale,0.25,0.5);

if(!big){
	scale +=0.009;
	if(scale>=0.5){
		big = true;
	}
}
if(big){
	scale -=0.009;
	if(scale<=0.20){
		big = false;
	}
}
	
	
image_xscale = scale;
image_yscale =scale;
image_angle = random_range(image_angle-1,image_angle+1);
