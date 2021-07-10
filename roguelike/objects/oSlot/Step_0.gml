/// @description Insert description here
// You can write your code in this editor


x =  global.oX-64 + (16*w);//define o x que o Slot acompanhará
y =  global.oY+16+(16*h);//define o y que o Slot acompanhará

if(oMouse2.mouse_item.id == slot_item.id){//se o id que o mouse segura é o mesmo que do slot
	slot_item = -1;//solta o item do slot
}
if slot_item != -1 {//se o slot tiver segurando item, faz com que o item siga o slot
	slot_item.x = x;
	slot_item.y = y;
}

if(place_meeting(x,y,oMouse2)){
	image_blend = c_green;
}else{
	image_blend = c_white;
}