// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_items(X,Y,x2,y2,object){
instance_create_layer(X+irandom_range(0,x2), Y+irandom_range(0,y2), layer_get_id("SearchItemLayer"), object)
}