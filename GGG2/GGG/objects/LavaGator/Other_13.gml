switch(State){
    case "Idle":
        sprite_index = LavaGatorIdle;
        break;
         
    case "PositionFront":
    case "PositionBehind":
        if(point_distance(x,y,TargetX,TargetY) > 50){
            image_xscale = sign(TargetX-x);
        }else{
            image_xscale = sign(Gertrude.x-TargetX);
        }
        if(speed != 0){
            sprite_index = LavaGatorWalking;
        }else{
            sprite_index = LavaGatorIdle;
        }
        break;
        
   /* case "Hit":                                       //Doesn't exist!
        sprite_index = SPR_EnemyHit;
        break;
    */
    case "Queueing":
        if(point_distance(x,y,TargetX,TargetY) > 150){
            image_xscale = sign(TargetX-x);
        }else{
            image_xscale = sign(Gertrude.x-TargetX);
        }
        
        if(speed != 0){
            sprite_index = LavaGatorWalking;
        }else{
            sprite_index = LavaGatorIdle;
        }
        break;
}

/* */
/*  */
