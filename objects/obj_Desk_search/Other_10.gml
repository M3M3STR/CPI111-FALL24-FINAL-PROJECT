/// @description Insert description here
// You can write your code in this editor
var parent_object = obj_search_object_parent; // Replace with your actual parent object
var inst;
var top_depth = 1000000; // Start with a very high depth


// Step 1: Iterate over all instances of the parent object's children
for (var i = 0; i < instance_number(parent_object); i++) {
    inst = instance_find(parent_object, i); // Get the instance

    if (instance_exists(inst) && inst.pressed) {

        if (inst.depth < top_depth) { // Find the topmost instance (lowest depth)
			top_depth = inst.depth;
			
			
        }
	
    }
}
for (var i = 0; i < instance_number(parent_object); i++) {
    inst = instance_find(parent_object, i); // Get the instance

    if (instance_exists(inst) && inst.pressed) {

        if (inst.depth > top_depth) { // Find the topmost instance (lowest depth)
			inst.pressed=false
			
			
        }
	
    }
}
