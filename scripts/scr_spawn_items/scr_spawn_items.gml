// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_items(X,Y,x2,y2,object,respawn){
	if 	obj_Desk_search.open=true{
		var XX = X+irandom_range(0,x2);
		var YY = Y+irandom_range(0,y2);

instance_create_layer(XX,YY, layer_get_id("SearchItemLayer"), object);
if self.object_index = object{
instance_destroy(self)	
		var obj = instance_position(XX,YY,object);
		if obj==noone{
		obj = instance_place(XX,YY,object)
		}
		if obj != noone{
		obj._respawn=respawn
		}
		
	}
	
	
	
		//debug
	

	
	}

}