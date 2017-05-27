if(CurrentHP <= 0) {
    instance_destroy();
}

event_user(0);

switch (State){
    case "Idle":
        event_user(3);
        event_user(1);
        break;
 
    case "PositionFront":
        SideMod = 1;
        event_user(5);
        event_user(4);
        event_user(3); 
        event_user(1);
        break;
 
    case "PositionBehind":
        SideMod = -1;
        event_user(5);
        event_user(4);
        event_user(3); 
        event_user(1);
        break;
        
    case "Hit":
        event_user(3);
        speed = 0;
        break;
        
    case "Queueing":
        event_user(3);
        break;
}

if(OnGround == true){
    GroundY = y;
}

depth = -1 * GroundY;

