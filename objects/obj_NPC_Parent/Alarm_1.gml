_moveX = 0;
_moveY = 0;
_moving = true;
_move_to_tile_x = 0;
_move_to_tile_y = 0;
_idle = choose(0,1);
if (_idle != 0) {
	var _moveDir = choose(1,2,3,4);
	if (_moving) {
	switch (_moveDir) {
		case 1: _moveX = -1 * _spd[1]; break;
		case 2: _moveX = 1 * _spd[1]; break; 
		case 3: _moveY = -1 * _spd[1]; break;
		case 4: _moveY = 1 * _spd[1]; break;
	}
	}
}

alarm[1] = irandom_range(1, 4) * 60 / 2; // Movement frequency