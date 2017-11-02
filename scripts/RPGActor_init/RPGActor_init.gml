//--------------------------------------------
// RPG Actor Initialization
//--------------------------------------------

// Declare Variables
globalvar _rpgMember, _rpgMember_database, _rpgMember_mostrecent;

_rpgMember = ds_list_create();
_rpgMember_database = ds_list_create();
_rpgMember_mostrecent = -1; 

// Declare Enumerators
enum Actor {
	name,
	race,
	level,
	hp,
	maxhp,
	ki,
	maxki,
	pwr,
	stamina,
	speed,
	evade,
	luck,
	
}

//--------------------------------------------
// End
//--------------------------------------------