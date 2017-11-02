// Call out inout script
scr_input();

// Stop moving if both vertical keys are pressed
if (kbd && kbu) {
	kbd = 0;
	kbu = 0;
} 

// Stop moving if both horizontal keys are pressed
if (kbl && kbr) {
	kbl = 0;
	kbr = 0;
}

// Get correct sprite  direction
if (kbd || kbu || kbl || kbr) {
	// Only allow the direction to change if reached the destination tile -- Grid Movement
	if (_movementType == "grid" && x = _tile_x * _tilew and y = _tile_y * _tileh) {
		if (kbd && !kbl && !kbr) { _dir = "south"; }
		else if (kbu && !kbl && !kbr) { _dir = "north"; }
		else if (kbl && !kbd && !kbu) { _dir = "west"; }
		else if (kbr && !kbd && !kbu) { _dir = "east"; }
		RPGState_set("walk");
		if (kbd && kbl && _dir!="south" && _dir!="west") { _dir = "west"; }
		else if (kbd && kbr && _dir!="south" && _dir!="east") { _dir = "east"; }
		else if (kbu && kbl && _dir!="north" && _dir!="west") { _dir = "west"; }
		else if (kbu && kbr && _dir!="north" && _dir!="east") { _dir = "east"; }
	} else {
		// Get the correct sprite direction -- Pixel Movement
		if (kbd && !kbl && !kbr) { _dir = "south"; }
		else if (kbu && !kbl && !kbr) { _dir = "north"; }
		else if (kbl && !kbd && !kbu) { _dir = "west"; }
		else if (kbr && !kbd && !kbu) { _dir = "east"; }
		RPGState_set("walk");
		if (kbd && kbl && _dir!="south" && _dir!="west") { _dir = "west"; }
		else if (kbd && kbr && _dir!="south" && _dir!="east") { _dir = "east"; }
		else if (kbu && kbl && _dir!="north" && _dir!="west") { _dir = "west"; }
		else if (kbu && kbr && _dir!="north" && _dir!="east") { _dir = "east"; }
	}
} else if (_movementType == "grid" && x = _tile_x * _tilew and y = _tile_y * _tileh) {  // Return to idle if the key was released and the destination tile has been reached -- Grid Movement
	RPGState_set("idle");
} else if (_movementType == "pixel") { // Return to idle if no input -- Pixel Movement
	RPGState_set("idle");	
}

// Snes Diagonal Direction
if (_snesDiag == true) {
	if (kbd && kbl) {
		_dir = "west";	
	} else if (kbd && kbr) {
		_dir = "east";	
	} 
	if (kbu && kbl) {
		_dir = "west";	
	} else if (kbu && kbr) {
		_dir = "east";	
	} 
}

// Movement
if (_movementType == "grid") { scr_grid_movement(); }
else if (_movementType == "pixel") { scr_pixel_movement(); }

// Animation System
_maxFrame = sprite_get_number(_anisprite) - 1; // Maximum number of animation frames
_expectedDelta = 1 / _desiredFPS * 1000000;
_delta = _expectedDelta / delta_time;
_collisionMask = mask_index;

_framecounter += _delta;
if (_framecounter >= _frameDuration) {
	_curFrame++;
	_framecounter = 0;
}

if (_curFrame >= _maxFrame -1 && _framecounter == _frameDuration) {
	RPGAnimation_frameReset();	
}

// States
switch(_stateName) {
	case "idle": scr_player_idle(); break;
	case "walk": scr_player_walk(); break;
}