if (distance_to_object(obj_Alex) < _tileSize + 21) {
	if (obj_Alex.x < x - _tileSize) && (obj_Alex.y > y - _tileSize/2) && (obj_Alex.y < y + _tileSize/2) {
		_dir = "west";	
	}
	else if (obj_Alex.x > x - _tileSize) && (obj_Alex.y > y - _tileSize/2) && (obj_Alex.y < y + _tileSize/2) {
		_dir = "east";	
	}

	if (obj_Alex.y < y - _tileSize) && (obj_Alex.x > x - _tileSize/2) && (obj_Alex.x < x + _tileSize/2) {
		_dir = "north";	
	}
	else if (obj_Alex.y > y - _tileSize) && (obj_Alex.x > x - _tileSize/2) && (obj_Alex.x < x + _tileSize/2) {
		_dir = "south";	
	}
}