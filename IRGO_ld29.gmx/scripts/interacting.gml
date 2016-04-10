///interacting(id,dist)
if (point_distance(argument0,argument1,objPlayer.x,objPlayer.y)<argument2 && global.txtPause==0 && global.pause==0){
    global.interact=1;
    global.lmb="Examine...";
    if (object_index=objInteract){
        if (actionB==1) then global.interact=1;
    }
    
    if (mouse_check_button_pressed(mb_left)){
        return 1;
    }
}
