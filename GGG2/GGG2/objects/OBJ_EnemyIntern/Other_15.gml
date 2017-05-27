if(point_distance(x,y,TargetX,TargetY) >= Speed){
    move_towards_point(TargetX,TargetY,Speed);
    
    
    if(point_distance(x,y,TargetX,TargetY) < 200 && ds_list_size(Gertrude.EnemyList) < 2 && ds_list_find_index(Gertrude.EnemyList,id) == -1){
        ds_list_add(Gertrude.EnemyList, id);
    }

}else{
    speed = 0;
}

