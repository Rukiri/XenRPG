//--------------------------------------------
// RPG Animation Initialize
//--------------------------------------------

// Variables
_anisprite = 0; // Sprite to animate
_curFrame = 0; // Current frame index
_maxFrame = sprite_get_number(_anisprite) - 1; // Maximum number of animation frames
_collisionMask = 0; // Collision mask

// Timing Variables
_framecounter = 0; // Frame Counter
_framedata = 0; // List of frames
_frameDuration = 0; // How long a frame should be displayed on screen
_desiredFPS = 60; // Set to 60 or higher;
_expectedDelta = 0; // Set to 0 for initialization purposes
_delta = 0; // Set to 0 for initialization purposes

//--------------------------------------------
// End Script