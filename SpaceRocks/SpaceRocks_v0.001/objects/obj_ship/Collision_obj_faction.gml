/// @description Insert description here
// You can write your code in this editor
//check if obj is member of our faction

if(other.faction == faction) exit;
else if(invicible){
	with(other){
		event_perform(ev_other,ev_user1);
	}
	exit;
}

event_perform(ev_other,ev_user1);