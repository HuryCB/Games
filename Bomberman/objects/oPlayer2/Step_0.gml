var _xdir = (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) )- (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) );
var _ydir = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) )- (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) );
var _x = x-_xdir*8;
var _y = y+_ydir*8;
var _bomb = keyboard_check_pressed(vk_space);

if(!instance_place(_x,y,oStoneWall))and(!instance_place(_x,y,oBomb))and(!instance_place(_x,y,oBrickWall)){
	x -= _xdir*8;
	
}

if(_xdir==0){
	if(!instance_place(x,_y,oStoneWall))and(!instance_place(x,_y,oBomb))and(!instance_place(x,_y,oBrickWall)){
	
		y += _ydir*8;
	}
}

if(_bomb and quantidade>0){
	Bomb(id);
}
//x -= _xdir*8;
//y += _ydir*8;

//Sprite_move();
x =clamp(x,4,room_width-4);
y=clamp(y,4,room_height-4);
