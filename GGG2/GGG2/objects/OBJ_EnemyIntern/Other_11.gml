if(OnGround == true)
{
    if(distance_to_object(Gertrude) <= AttackRange)   //&& abs(y-OBJ_Player.y) < LayerSize
    {
        Aggressiveness += .02;
        if(random(1) < Aggressiveness*.03)
        {
            event_user(2);                              //Attack
        }
    }
}

