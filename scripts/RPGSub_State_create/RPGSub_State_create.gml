//--------------------------------------------
// RPG Finite State Machine Create
//--------------------------------------------

// Variables
var _map = ds_map_create(); // Creates the Map for our RPG Character Database

// Add our State Map to our list
ds_list_add(_substateMap,_map); // Adds a character to a database

// Add our state to our Database
ds_map_add(_map,SubState.name,string(argument0));

// Return 1 if everything went okay
return 1;

//--------------------------------------------
// End Script
//--------------------------------------------