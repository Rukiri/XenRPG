//--------------------------------------------
// RPG Finite State Machine Set State
//--------------------------------------------

// Variables
var _i, _stateSize;

// Check to see if our state is in our database
_stateSize = RPGState_count();
for (_i=0; _i<_stateSize; _i++) {
	if(ds_map_find_value(ds_list_find_value(_stateMap,_i),State.name) == string(argument0)) {
		// The state was in our database and now we can set the state
		_stateName = string(argument0);
		return _i;
	}
}

// Show message if the state was not in our database and return -1
show_debug_message("The State your attempted to set was not found within the _stateMap");
return -1;

//--------------------------------------------
// End Script
//--------------------------------------------