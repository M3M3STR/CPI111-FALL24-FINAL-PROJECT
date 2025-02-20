/// @description Insert description here
// You can write your code in this editor
if (pressed) {
    // Calculate the new position based on mouse drag
    var new_x = mouse_x - self.ofx; // Adjusting based on initial offset
    var new_y = mouse_y - self.ofy;

    var x_movable = true;
    var y_movable = true;

    // Check for collisions independently for X and Y
    if (place_meeting(new_x, y, obj_Desk_search)) {
        x_movable = false; // X movement blocked
    }
    if (place_meeting(x, new_y, obj_Desk_search)) {
        y_movable = false; // Y movement blocked
    }

    // Apply movement only if that axis is free
    if (x_movable) {
        x = new_x;
    }
    if (y_movable) {
        y = new_y;
    }
	if !x_movable && !y_movable{
	x=last_valid_x
    y=last_valid_y
	}else{
		    // Update last valid position
    last_valid_x = x;
    last_valid_y = y;
	}


}