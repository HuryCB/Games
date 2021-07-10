/// @description Insert description here
// You can write your code in this editor
speed = 3;

if mudarLado == true{
	mudarLado = false;
	alarm[0] = 1 * room_speed;
}
	
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);
image_speed = 0.0005*self.speed;

if(direction > 0 && direction<90 || direction >270 && direction < 360)
	image_xscale = viradoDireita;
	else image_xscale = - viradoDireita;
	
	

//shooting
if canshoot && instance_exists(obj_enemies)
    {   
		
        canshoot = false;
        alarm[1] = 1.5*room_speed;
        var inst = instance_create_layer(x,y,"camada2",obj_fireball);
			
with (inst)
    {
    speed = 12;
	var teste = point_direction(x,y,obj_char.x,obj_char.y)
    direction = teste;
	image_angle =teste+270;
    }
	     
}
//