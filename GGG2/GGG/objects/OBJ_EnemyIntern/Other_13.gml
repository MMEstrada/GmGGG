//Sprites Needed
switch(State){
    case "Idle":
        sprite_index = SPR_EnemyIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
    case "Fleeing":
        if(point_distance(x,y,TargetX,TargetY) > 50){
            image_xscale = sign(TargetX-x);
        }else{
            image_xscale = sign(Gertrude.x-TargetX);
        }
        
        if(speed != 0){
            sprite_index = SPR_EnemyWalking;
        }else{
            sprite_index = SPR_EnemyIdle;
        }
        break;
        
    case "Hit":
        sprite_index = SPR_EnemyHit;
        break;
    
    case "Queueing":
        if(point_distance(x,y,TargetX,TargetY) > 150){
            image_xscale = sign(TargetX-x);
        }else{
            image_xscale = sign(Gertrude.x-TargetX);
        }
        
        if(speed != 0){
            sprite_index = SPR_EnemyWalking;
        }else{
            sprite_index = SPR_EnemyIdle;
        }
        break;
}

