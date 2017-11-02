draw_sprite_ext (_anisprite, _curFrame, x, y, 1, 1, 0, c_white, 1 );
var map, i, _y=64;
for (i=0; i<RPGState_count(); i++) {
map = ds_list_find_value(_stateMap,i);
draw_text(x,y+_y, "State Name " + ds_map_find_value(map,State.name) + " " + string(i));
_y+=32;
}
var idle = ds_list_find_value(_stateMap,1);
draw_text(x,y+_y,"Current State: " + _stateName); // current state;
