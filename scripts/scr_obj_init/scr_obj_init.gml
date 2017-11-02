enum move {
	down,
	left,
	right,
	up,
	lower_left,
	lower_right,
	upper_left,
	upper_right
}

// init the component array
global.component = []; 
// axis movements
global.component[move.down] = [0,1];
global.component[move.left] = [-1,0];
global.component[move.right] = [1,0];
global.component[move.up] = [0,-1];

// diagonal movements
global.component[move.lower_left] = [-1,1];
global.component[move.lower_right] = [1,1];
global.component[move.upper_left] = [-1,-1];
global.component[move.upper_right] = [1,-1];