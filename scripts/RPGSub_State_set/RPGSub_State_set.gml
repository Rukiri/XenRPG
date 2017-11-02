//--------------------------------------------
// RPG Finite State Machine Set State
//--------------------------------------------

// Variables
var _i, _stateSize;

// Check to see if our state is in our database
_stateSize = RPGSub_State_count();
for (_i=0; _i<_stateSize; _i++) {
	if(ds_map_find_value(ds_list_find_value(_substateMap,_i),SubState.name) == string(argument0)) {
		// The state was in our database and now we can set the state
		_substateName = string(argument0);
		return _i;
	}
}

// Show message if the state was not in our database and return -1
show_debug_message("The State your attempted to set was not found within the _substateMap");
return -1;

//--------------------------------------------
// End Script
//--------------------------------------------