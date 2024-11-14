// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_contain(){
	var arr = argument0;
	var item = argument1;
	
	for (var i = 0; i < array_length(arr); i++) {
		if (arr[i] == item) {
			return true;
		}
	}
	return false;
}