//--------------------------------------------
// Grid Movement
// Default grid 32x32
//--------------------------------------------

//--------------------------------------------
// Move our player to it's destination tile
//--------------------------------------------
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
	
	//------------------------------------------------------------
	// Locked to 4 Directions (North, South, East, West)
	//------------------------------------------------------------
	
if (_moving) {
if (x = _tile_x * _tilew and y = _tile_y * _tileh) {
	if (_moveX > 0) {
		if (!place_meeting((_tile_x + 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x += 1; _move_to_tile_x += 1; _tile_x_old = xprevious div _tilew;}
	} else if (_moveX < 0) {
		if (!place_meeting((_tile_x - 1) * _tileSize, y, obj_Parent_Solid)) { _tile_x -= 1; _move_to_tile_x -= 1; _tile_x_old = xprevious div _tilew;}
	}
	if (_moveY > 0) {
		if (!place_meeting(x, (_tile_y + 1) * _tileSize, obj_Parent_Solid)) { _tile_y += 1; _move_to_tile_y += 1; _tile_y_old = xprevious div _tileh; }
	} else if (_moveY < 0) {
		if (!place_meeting(x, (_tile_y - 1) * _tileSize, obj_Parent_Solid)) { _tile_y -= 1; _move_to_tile_y -= 1; _tile_y_old = xprevious div _tileh;}
	}
}
#endregion

}
//--------------------------------------------
// End Script
//--------------------------------------------