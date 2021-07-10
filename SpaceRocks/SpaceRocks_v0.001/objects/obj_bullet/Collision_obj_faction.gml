//check if object is part of our faction
if(other.id == creator) exit;
instance_destroy();

if(other.faction == faction) exit;

if(faction == factions.enemy && other.faction == factions.neutral) exit;

//damage object
with(other)event_perform(ev_other,ev_user1);