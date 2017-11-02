/*
var i, map, size, _y; _y = 30;
size = RPGActor_database_count();
draw_text(x,_y-16,"RPG Database");
for(i = 0;i < size; i ++) {
    map = ds_list_find_value(_rpgMember_database,i); // Retrieve the character map associated with the database index id.
    draw_text(x, _y, "Name " + ds_map_find_value(map,Actor.name) + " :[" + string(i) + "]");
    _y += 20;
}