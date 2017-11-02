//--------------------------------------------
// Object  Settings
//--------------------------------------------
_idle = 0;
#region
_movementType = "pixel"; // Movement Type || Grid for Tile based movement || Pixel for pixel based movement
_state = "idle"; // Objects current state
_dir = "south" // Default direction is South 
_canMove = true; // Can the object move? 
_moving = false; // False by default as not moving 
_ableX = true; // Can move vertically 
_ableY = true; // Can move vertically
_ableD = true; // Can move diagonally? 
_moveX = 0; // Horizontal movement
_moveY = 0; // Vertical movement
_stepX = 0; // How many time we can move per horizontal step
_stepY = 0; // How many times we can move per vertical step 
_prevX = xprevious; // Previous horizontal coordinate
_prevY = yprevious; // Previous vertical coordinate
_spd[0] = 1.5; // Slow movement speed
_spd[1] = 1; // Normal movement speed
_spd[2] = 3; // Fast movement speed -- This is are running/dashing speed
_spd[3] = .41 + 1; // Diagonal/Corner Speed
_maxX = _spd[1]; // Maximum horizontal speed
_maxY = _spd[1]; // Maximum vertical speed
_cornerX = 3; // Horizontal corner checking
_cornerY = 3; // Vertical corner checking
_imgSPD = 1; // Animation speed
image_speed = 0; // Leave at 0 
_frequency = irandom_range(1, 4) * 60 / 2; // Movement frequency 
//--------------------------------------------
#endregion

//--------------------------------------------
// Grid Movement Variables
//--------------------------------------------
#region
_dir_8 = false; // If set to True the object can move in all 8 directions -- Grid Movement Only Variable
_tileSize = TILESIZE;
_tilew = _tileSize; // Tile Size Width
_tileh = _tileSize; // Tile Size Height 
_tile_x = x div _tilew; // The horizontal tile position of the object
_tile_y = y div _tileh; // The vertical tile position of the object
_tile_x_old = xprevious div _tilew; // The previous horizontal tile position of the object
_tile_y_old = yprevious div _tileh; // The previous vertical tile position of the object
_move_to_tile_x = 0; // Move to Horizontal Tile X 
_move_to_tile_y = 0; // M<ove to Vertical Tile Y
//--------------------------------------------
#endregion
//--------------------------------------------
// Cut Scene Tile Settings
//--------------------------------------------
#region
_dest_tilex = _tile_x_old + _move_to_tile_x; // Horizontal East Tile Destination
_dest_tiley = _tile_y_old + _move_to_tile_y; // Vertical South Tile Destination
_dest_tilex = _tile_x_old - _move_to_tile_x; // Horizontal West Tile Destination
_dest_tiley = _tile_y_old - _move_to_tile_y; // Vertical North Tile Destination
_end_CutScene_mov = false; // ends the movement within a cut scene 
//--------------------------------------------
#endregion
place_snapped(_tile_x, _tile_y);
alarm[1] = 1;