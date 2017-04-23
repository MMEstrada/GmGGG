var MyAction = floor(random(100));

switch(State){
    case "Idle":
        if(distance_to_object(Gertrude) < SightRange){
            if(MyAction <= 50){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        break;
        
    case "PositionFront":
    case "PositionBehind": 
        if(instance_place(TargetX,TargetY,OBJ_Enemy) != noone && instance_place(TargetX,TargetY,OBJ_Enemy) != id){
            if(State == "PositionFront"){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        if(ds_list_size(Gertrude.EnemyList) >= 2 && ds_list_find_index(Gertrude.EnemyList,id) == -1){
            State = "Queueing";
            speed = 0;
        }
        break;
        
    case "Queueing":
        if(ds_list_size(Gertrude.EnemyList) < 2){
            ds_list_add(Gertrude.EnemyList, id);
            if(x < Gertrude.x){
                State = "PositionBehind";
            }else{
                State = "PositionFront";
            }
        }
        break;
}

