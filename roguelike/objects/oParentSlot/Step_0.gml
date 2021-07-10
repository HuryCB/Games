/// @description Insert description here
// You can write your code in this editor
//if oInvi.active {
//	visible = true;
//	x = ;
//	y = ;

//deixa o inventório visívels
if(keyboard_check_pressed(ord("I"))) active = !active;

if active{
	for(var i=0; i<inv_size+3;i++){
			slot[i].visible = true;
			slot[i].slot_item.visible = true;
	}
}else{
	for(var i=0; i<inv_size+3;i++){
			//deixa os slots e os itens invisíveis
			slot[i].visible = false;
			slot[i].slot_item.visible = false;
	}
}