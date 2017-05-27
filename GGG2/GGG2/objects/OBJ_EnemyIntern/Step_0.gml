if(CurrentHP <= 0) {
    instance_destroy();
}

event_user(0);

switch (State){
    case "Idle":
        event_user(3); //Animate the Enemy
        event_user(1); //Check to see if the enemy should attack
        break;
 
    case "PositionFront":
        SideMod = 1;
        event_user(5); //Move the Enemy to the Location set in event_user(4)
        event_user(4); //Set Target Location for Motion
        event_user(3); //Animate the Enemy
        event_user(1); //Check to see if the enemy should attack
        break;
 
    case "PositionBehind":
        SideMod = -1;
        event_user(5); //Move the Enemy to the Location set in event_user(4)
        event_user(4); //Set Target Location for Motion
        event_user(3); //Animate the Enemy
        event_user(1); //Check to see if the enemy should attack
        break;
        
    case "Hit":
        event_user(3); //Animate the Enemy
        //event_user(4);
        //event_user(5);
        break;
        
    case "Queueing":
        event_user(3); //Animate the Enemy
        break;
        
    case "Fleeing":
        event_user(3); //Animate the Enemy
        event_user(4); //Set Target Location for Motion
        event_user(5); //Move the Enemy to the Location set in event_user(4)
        break;
        
    case "Attacking":
        event_user(4); //Set Target Location for Motion
        event_user(5); //Move the Enemy to the Location set in event_user(4)
        break;
}

if(OnGround == true){
    GroundY = y;
}

depth = -1 * GroundY;

