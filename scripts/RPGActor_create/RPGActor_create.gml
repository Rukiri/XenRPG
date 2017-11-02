//--------------------------------------------
// RPG Actor Creation
// Argument0: Name
// Argument1: Race // Please use Saiyan not saiyan when typing
// Argument2: Level
// Argument3: HP/Max HP
// Argument4: Ki/Max Ki
// Argument5: Power
// Argument6: Stamina
// Argument7: Speed
// Argument8: Evade
// Argument9: Luck
// Argument10: Add to Party? 
//--------------------------------------------

var _map = ds_map_create(); // Creates the Map for our RPG Character Database

ds_list_add(_rpgMember_database,_map); // Adds a character to a database

//--------------------------------------------
// Create he Actor 
//--------------------------------------------

// variables
var _actorName = argument0;
var _actorRace = argument1;
var _actorLevel = argument2;
var _actorHP = argument3;
var _actorKI = argument4;
var _actorPower = argument5;
var _actorStamina = argument6;
var _actorSpeed = argument7;
var _actorEvade = argument8;
var _actorLuck = argument9;


// Create our Actor
ds_map_add(_map, Actor.name, string(_actorName)); // Actors Name
ds_map_add(_map, Actor.race, string(_actorRace)); // Actors Race
ds_map_add(_map, Actor.level, _actorLevel); // Actors Level
ds_map_add(_map, Actor.hp, _actorHP); // Actors HP
ds_map_add(_map, Actor.maxhp, _actorHP); // Actors Max HP
ds_map_add(_map, Actor.ki, _actorKI); // Actors Ki
ds_map_add(_map, Actor.maxki, _actorKI); // Actors Max KI
ds_map_add(_map, Actor.pwr, _actorPower); // Actors Power
ds_map_add(_map, Actor.stamina, _actorStamina); // Actors Stamina
ds_map_add(_map, Actor.speed, _actorSpeed); // Actors Speed
ds_map_add(_map, Actor.evade, _actorEvade); // Actors Evade
ds_map_add(_map, Actor.luck, _actorLuck); // Actors Luck


//--------------------------------------------
// Add to Party?
//--------------------------------------------

if (argument10 == true) {
	// Add member to our party
	if (RPGActor_party_limit() <= 3) {
		ds_list_add(_rpgMember, _map); // Adds the actor to our party 
	} else {
		// Sorry we can't add you at this time, please remove a player from the party
		// Show message to let the player know we can't add the party member 
		return 0
	}
} 

return 1;

//--------------------------------------------
// End Script
//--------------------------------------------