/// @description Insert description here
// You can write your code in this editor

self.ofx = (mouse_x-x);
self.ofy = (mouse_y-y);
pressed=true;

var parent_object = obj_search_object_parent; // Replace with your actual parent object
var inst;
var top_depth = 1000000; // Start with a very high depth


// Step 1: Iterate over all instances of the parent object's children
for (var i = 0; i < instance_number(parent_object); i++) {
    inst = instance_find(parent_object, i); // Get the instance

    if (instance_exists(inst)) {

        if (inst.depth < top_depth) { // Find the topmost instance (lowest depth)
			top_depth = inst.depth;
			
			
        }
		inst.depth +=1
		if inst.depth>-110{
			inst.depth -=50
		}
	
    }
}

// Step 2: Assign self the lowest depth to bring it to the top
if (top_depth != 1000000) { // Ensure we found valid instances
    self.depth = top_depth; // Lower depth = higher render priority
    show_debug_message("New Self Depth: " + string(self.depth));
} else {
    show_debug_message("No valid child instances found!");
	
	
}




