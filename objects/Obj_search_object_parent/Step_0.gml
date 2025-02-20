/// @description Insert description here
// You can write your code in this editor
if (pressed) {
    // Calculate the new position based on mouse drag
    var new_x = mouse_x - self.ofx; // Adjusting based on initial offset
    var new_y = mouse_y - self.ofy;

    // Store the last valid position

    // Predict the next position
    x = new_x; 
    y = new_y;
    // Check for collisions with the box at the new position
    if (self.collide) {

        // If there is a collision, revert to the last known valid position
		self.collide=false
    } else {
        // If no collision, update the last valid position
    x = new_x; 
    y = new_y;
	last_valid_x = x;
    last_valid_y = y;
    }
}
