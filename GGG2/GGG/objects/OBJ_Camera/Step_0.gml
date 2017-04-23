MyBR = instance_nearest(x, y, OBJ_BattleRegion);

switch State{
    case "Player":
        TargetX = Gertrude.x;
        TargetY = Gertrude.y;
            
        if (MyBR.IsActive == true)
        {
            State = "Region";
        }
        break;
        
    case "Region":
        var MinX = OBJ_BattleRegion.LeftEdge + 512;
        var MaxX = OBJ_BattleRegion.RightEdge - 512;
            
        var MinY = OBJ_BattleRegion.TopEdge + 384;
        var MaxY = OBJ_BattleRegion.BottomEdge - 384;
            
        TargetX = clamp(Gertrude.x, MinX, MaxX);
        TargetY = clamp(Gertrude.y, MinY, MaxY);
            
        if (MyBR.IsActive == false || distance_to_object(OBJ_BattleRegion) > 0)
        {
            State = "Player";
        }
        break;
}
    
if (distance_to_point(TargetX,TargetY) < MoveSpeed)
{
    x = TargetX;
    y = TargetY;
    speed = 0;
}
else
{
    move_towards_point(TargetX,TargetY,MoveSpeed);
}

