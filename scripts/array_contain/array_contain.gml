///@function array_contain
///@param array
///@param item
function array_contain(array, item){
	for(var i=0; i<array_length(array); i++) {
		if (array[i] == item) return true;
	}
	return false;
}