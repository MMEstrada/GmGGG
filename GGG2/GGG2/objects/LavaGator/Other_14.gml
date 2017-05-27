if(point_distance(TargetX,TargetY,Gertrude.x,Gertrude.y) > AttackRange || point_distance(TargetX,TargetY,Gertrude.x,Gertrude.y) < 50 || abs(TargetY-Gertrude.y) > LayerSize || sign(TargetX-Gertrude.x) != sign(SideMod)){
    TargetX = random_range(Gertrude.x+60*SideMod, Gertrude.x+90*SideMod);
    TargetY = random_range(Gertrude.y-10, Gertrude.y+10);
}

