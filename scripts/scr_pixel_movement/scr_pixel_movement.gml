//--------------------------------------------
// RPG Pixel Movement
//--------------------------------------------

//--------------------------------------------
// Local Variables
//--------------------------------------------

var _absX, _absY, _i, _corner;
var _moveH, _moveV;

//--------------------------------------------
// Moving?
//--------------------------------------------

_moveX = (kbr - kbl) * _maxX;
_moveY = (kbd - kbu) * _maxY;

//--------------------------------------------
// Get the absolute speed velocity
//--------------------------------------------

_absX = abs(_moveX);
_absY = abs(_moveY);

// Butter smooth diagonal movement
if (_absX == _maxX && _absY == _maxY) {
	_stepX = _stepY;	
}

//--------------------------------------------
// Horizontal Movement
//--------------------------------------------

#region
if (_absX) {
	if (_absY) { 
		_moveH = _spd[3]; 
	} 
	else { 
		if (_absX == _maxX) { 
			_stepX = 0; 
		}
		_moveH = 1;
	}
	_stepX += _absX;
	while (_stepX >= 1) {
		_moveV = (_moveX > 0) - (_moveX < 0);
		x += _moveV;
		if (place_meeting(x,y,obj_Parent_Solid)) {
			for (_i = _cornerY; _i > 0; _i--;) {
					_corner = !place_meeting(x,y+_i,obj_Parent_Solid) - !place_meeting(x,y-_i,obj_Parent_Solid);
				if (!kbu or !kbd) {
					_moveH = _spd[3] - 1;
					if (_corner !=0) { 
						y += _corner; break; 
					}
				}
			}
			if (place_meeting(x,y,obj_Parent_Solid)) { 
				x -= _moveV; 
			}
			_moveH = _spd[3];
		}
		_stepX -= _moveH;
	}
}
#endregion

//--------------------------------------------
// Vertical Movement
//--------------------------------------------

#region
if (_absY) {
	if (_absX) { 
		_moveH = _spd[3]; 
	} 
	else {
		if (_absY == _maxY) { 
			_stepY = 0; 
		} 
		_moveH = 1;
	}
	_stepY += _absY;
	while (_stepY >= 1) {
		_moveV = (_moveY > 0) - (_moveY < 0);
		y += _moveV;
		if (place_meeting(x,y,obj_Parent_Solid)) {
			for (_i = _cornerX; _i > 0; _i--;) {
				_corner = !place_meeting(x+_i,y,obj_Parent_Solid) - !place_meeting(x-_i,y,obj_Parent_Solid);
				if (!kbl or !kbr) {
					_moveH = _spd[3] - 1;
					if (_corner !=0) { 
						x += _corner; break; 
					}
				}
			}
			if (place_meeting(x,y,obj_Parent_Solid)) { 
				y -= _moveV; 
			}
			_moveH = _spd[3];
		}
		_stepY -= _moveH;
	}
}
#endregion

//--------------------------------------------
// Lock Player to the room
//--------------------------------------------

x=clamp(x,0,room_width-sprite_width);
y=clamp(y,0,room_height-sprite_height);

//--------------------------------------------
// End Script
//--------------------------------------------