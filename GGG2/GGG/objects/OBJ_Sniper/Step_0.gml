BlinkingTimer += 0.5;

if(distance_to_object(Gertrude) <= SightRange)   //&& abs(y-Gertrude.y) < LayerSize
{
        Aggressiveness += .02;
        if(random(1) < Aggressiveness*.03)
        {
            if(Aggressiveness > .50) //Just a random attack chance, subject to change
            {
                State = "Attacking";
                MyAttack = instance_create(x,y,ATK_ProjectileSplit);    //Change this
                Aggressiveness = 0;
                MyAttack.depth = depth;
                MyAttack.Owner = "Enemy";
            }                           
        }
}

if(State == "Attacking" && alarm[0] = -1) {
    alarm[0] = ReloadTimer;
}


