globalvar _enemy, _enemyDatabase;

_enemy = ds_list_create();
_enemyDatabase = ds_list_create();

// Declare Enumerators
enum Enemy {
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