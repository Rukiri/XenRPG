//--------------------------------------------
// Grid Movement
// Default grid 32x32
//--------------------------------------------

//--------------------------------------------
// Move our player to it's destination tile
//--------------------------------------------

var _diagmove = false;

#region
if (_canMove) {
	if (_tile_x * _tilew > x) { x += _spd[1]; } 
	else if (_tile_x * _tilew < x) { x -= _spd[1]; }
	if (_tile_y  * _tileh > y) {  y += _spd[1]; } 
	else if (_tile_y  * _tileh < y) {  y -= _spd[1]; }
}

#endregion

//--------------------------------------------
// Move our player 1 tile at a time
//--------------------------------------------

#region
if (_state == "walking" or _state == "running") {
	
	//------------------------------------------------------------
	// Locked to 4 Directions (North, South, East, West)
	//------------------------------------------------------------
	
	if (_dir_8 == false) {
		if (x = _tile_x * _tilew and y = _tile_y * _tileh) {
			if kbd && _dir == "south" { if (!place_meeting(x, (_tile_y + 1) * _tileSize, obj_Parent_Solid)) { _tile_y += 1; } }
			if kbu && _dir == "north" { if (!place_meeting(x, (_tile_y - 1) * _tileSize, obj_Parent_Solid)) { _tile_y -= 1; } }
			if kbr && _dir == "east" { if (!place_meeting((_tile_x + 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x += 1; } }
			if kbl && _dir = "west" { if (!place_meeting((_tile_x - 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x -= 1; } }
		}
	} else {
			//--------------------------------------------
			// Can move diagonally
			//--------------------------------------------
			
			if (x = _tile_x * _tilew and y = _tile_y * _tileh) {
				if kbd  { if (!place_meeting(x, (_tile_y + 1) * _tileSize, obj_Parent_Solid)) { _tile_y += 1; } }
				if kbu { if (!place_meeting(x, (_tile_y - 1) * _tileSize, obj_Parent_Solid)) { _tile_y -= 1; } }
				if kbr { if (!place_meeting((_tile_x + 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x += 1; } }
				if kbl { if (!place_meeting((_tile_x - 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x -= 1; } }
			}
	}
}
#endregion

//--------------------------------------------
// End Script
//--------------------------------------------