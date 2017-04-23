switch(State) { 
    case "Attacking":
            //So if the Enemy is PositionFront and at starting position...
        if(sign(SideMod) == 1 && NewPosReached == false) {
            //Mark a random positon as new position
            TargetX = CurX - 100;
            //Change the flag
            NewPosReached = true;
            //So if the Enemy is PositionFront but already moved to New Position...
        } else if(sign(SideMod) == 1 && NewPosReached == true) {
            TargetX = CurX + 100;
            NewPosReached = false;
        } else if(sign(SideMod) == -1 && NewPosReached == false) {
            TargetX = CurX + 100;
            NewPosReached = true;
        } else if(sign(SideMod) == -1 && NewPosReached == true) {
            TargetX = CurX - 100;
            NewPosReached = false;
        }
        break;
   
    case "Fleeing": 
        if(point_distance(TargetX,TargetY,Gertrude.x,Gertrude.y) > AttackRange || point_distance(TargetX,TargetY,Gertrude.x,Gertrude.y) < 50 || abs(TargetY-Gertrude.y) > LayerSize || sign(TargetX-Gertrude.x) != sign(SideMod)){
            //TargetX = random_range(Gertrude.x+60*SideMod, Gertrude.x+90*SideMod);
            //TargetY = random_range(Gertrude.y-10, Gertrude.y+10);
            
            //If it's facing a certain way...
            //Flee backwards and in a random y positon (subject to change)
            if(sign(SideMod) == 1) {            
                TargetX = Gertrude.x - 300;   
                TargetY = random_range(Gertrude.y - 100, Gertrude.y + 100)      
            } else {
                TargetX = Gertrude.x + 300;
                TargetY = random_range(Gertrude.y - 100, Gertrude.y + 100)
            }
        }
        State = "Idle"; //Stops the Enemy from Fleeing.
        break;
}

