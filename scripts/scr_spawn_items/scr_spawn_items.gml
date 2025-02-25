// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_items(X,Y,x2,y2,object){
	if 	obj_Desk_search.open=true{
		var XX = irandom_range(X,x2);
		var YY = irandom_range(Y,y2);

instance_create_layer(XX,YY, layer_get_id("SearchItemLayer"), object);
	}
}