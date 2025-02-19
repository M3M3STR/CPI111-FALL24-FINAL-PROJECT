/// @description Insert description here
// You can write your code in this editor
self.collide=true

if birthed {
	var boxadjust = 120
	var X1 = obj_Desk_search.x+boxadjust
	var Y1 = obj_Desk_search.y+boxadjust
	var X2 = obj_Desk_search.sprite_width-X1-boxadjust
	var Y2 = obj_Desk_search.sprite_height+Y1-(boxadjust*4)
	
scr_spawn_items(X1, Y1, X2, Y2, self.object_index);
instance_destroy(self)
}else{

	    x = last_valid_x;
        y = last_valid_y;

}