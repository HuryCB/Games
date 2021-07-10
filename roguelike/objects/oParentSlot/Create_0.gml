/// @description Insert description here
// You can write your code in this editor
//var slotNumber;
#region cria o inventário, e armazena o tamanho
globalvar inv
var i;
i=0;
repeat(10){
	inv[i] = -1;
	i++;
}
globalvar inv_size;
inv_size = 10;
#endregion

active = false;//para deixar o inventório visível
slot = 0;//para armazenar os "oSlot"
var w = 0, h = 0;
for(var i=0; i<inv_size;i++){
	
		//var _x = global.oX-64 + (16*w);
		//var _y = global.oY+16+(16*h);	
		obj = instance_create_layer(x,y,layer,oSlot);
		
		slot[i] = obj;//armazena o botão i criando no slot[i]
		obj.slotNumber = i;//o botão i recebe o número dele
		obj.w = w;//passa o w que será usado para o botão acompanhar a linha
		obj.h = h;//passa o h que será usado para a linha do botão
		obj.item_type = -1;
		w++;
		if(w>4){
			w=0;
			h = 1;
		}
}

for(var i = 10; i<13;i++){
	obj = instance_create_layer(x,y,layer,oSlot);
	slot[i] = obj;
	obj.slotNumber = i;
	obj.w = w++;
	obj.h = -1;
	obj.item_type = -1;
	switch(i){
		case 10:
			obj.item_type = "helmet";
			obj.sprite_index = sHelmetSlot;
			break;
		case 11:
			obj.item_type = "armor";
			obj.sprite_index = sArmorSlot;
			break;
		case 12:
			obj.item_type = "weapon";
			obj.sprite_index = sWeaponSlot;
			break;
	}
}
