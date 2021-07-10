/// @description Insert description here
// You can write your code in this editor
if canshoot && instance_exists(obj_enemies)
    {   
		
        canshoot = false;
        alarm[0] = 3*room_speed;
        var inst = instance_create_layer(x,y,"camada2",obj_arrow);
			
with (inst)
    {
    speed = 12;
	var teste = point_direction(x,y,obj_enemies.x,obj_enemies.y)
    direction = teste;
	image_angle =teste+270;
    }
	     
}