//--------------------------------------------
// Set NPC Direction
//--------------------------------------------

// Horizontal Direction
if (_moveX > 0) { _dir = "east"; } 
else if (_moveX < 0) { _dir = "west"; }

// Vertical Direction
if (_moveY > 0) { _dir = "south"; } 
else if (_moveY < 0) { _dir = "north";	}

// Diagonal Directions
if (_moveX > 0 and _moveY < 0) { dir = "east"; } 
else if (_moveX > 0 and _moveY > 0) { _dir = "east"; }
if (_moveX < 0 and _moveY < 0) { _dir = "west"; } 
else if (_moveX < 0 and _moveY > 0) { _dir = "west"; }
if (_moveY > 0 and _moveX < 0) { dir = "south"; } 
else if (_moveY > 0 and _moveX > 0) { _dir = "south"; }
if (_moveY < 0 and _moveX < 0) { _dir = "north"; } 
else if (_moveY < 0 and _moveX > 0) { _dir = "north"; }

if (_move_to_tile_x >= 3 ) {
	_moving = false;
} else if (_move_to_tile_x <= -3 ) {
	_moving = false;
}
if (_move_to_tile_y >= 3 ) {
	_moving = false;
} else if (_move_to_tile_y <= -3 ) {
	_moving = false;
}
//scr_npc_face_hero();
scr_npc_grid_movement();