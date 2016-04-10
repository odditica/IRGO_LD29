var paperCount=15;
var tile=tile_get_ids();
for (i=0;i<array_length_1d(tile);i++){
    wallTile[i]=0;
    if (tile_get_left(tile[i])!=40 && tile_get_left(tile[i])<120 && tile_get_top(tile[i])<80){
        tile_set_depth(tile[i],room_height-tile_get_y(tile[i]));     
        wallTile[i]=1;
    }
    if (tile_get_left(tile[i])=200 && tile_get_top(tile[i])==0){
        tile_set_depth(tile[i],room_height-tile_get_y(tile[i]));     
        wallTile[i]=1;
    }
    if (tile_get_left(tile[i])>=120 && tile_get_left(tile[i])<160 && tile_get_top(tile[i])>=80 && tile_get_top(tile[i])<=200){
        wallTile[i]=1;
    }
    if (tile_get_left(tile[i])>=120 && tile_get_left(tile[i])<160 && tile_get_top(tile[i])<80){
        wallTile[i]=1;   
    }
}
while (paperCount>0){
    for (i=0;i<array_length_1d(tile);i++){
        if (tile_get_depth(tile[i])==1000000 && position_empty(tile_get_x(tile[i])+20,tile_get_y(tile[i])+20) && wallTile[i]==0){
            if (irandom(20)==20 && paperCount>0){
                instance_create(tile_get_x(tile[i])+20-irandom_range(-5,5),tile_get_y(tile[i])+20-irandom_range(-5,5),objPaper);  
                paperCount-=1;  
            }    
        }
    }
}
