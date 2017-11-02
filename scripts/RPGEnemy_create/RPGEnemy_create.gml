var _map = ds_map_create();

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
ds_map_add(_map, Enemy.name, string(_actorName)); // Actors Name
ds_map_add(_map, Enemy.race, string(_actorRace)); // Actors Race
ds_map_add(_map, Enemy.level, _actorLevel); // Actors Level
ds_map_add(_map, Enemy.hp, _actorHP); // Actors HP
ds_map_add(_map, Enemy.maxhp, _actorHP); // Actors Max HP
ds_map_add(_map, Enemy.ki, _actorKI); // Actors Ki
ds_map_add(_map, Enemy.maxki, _actorKI); // Actors Max KI
ds_map_add(_map, Enemy.pwr, _actorPower); // Actors Power
ds_map_add(_map, Enemy.stamina, _actorStamina); // Actors Stamina
ds_map_add(_map, Enemy.speed, _actorSpeed); // Actors Speed
ds_map_add(_map, Enemy.evade, _actorEvade); // Actors Evade
ds_map_add(_map, Enemy.luck, _actorLuck); // Actors Luck

ds_list_add(_enemyDatabase,_map);