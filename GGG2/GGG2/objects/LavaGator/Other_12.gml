if(Gertrude.CurrentHP > 0)
{
    AttackChance = random(100);
    
    //The trigger for the FireAttack is the same as the tutorial
    if((Aggressiveness>.75 && AttackChance>= 90) || (Aggressiveness>1 && AttackChance>= 75))
    {
        sprite_index = LavaGatorFire;
        MyAttack = instance_create(x,y,ATK_LavaGatorFire);
    }
    else
    {
        sprite_index = LavaGatorChomp;
        MyAttack = instance_create(x,y,ATK_LavaGatorChomp);
    }
    
    speed = 0;
    State = "Attacking";
    Aggressiveness = 0;
    MyAttack.depth = depth;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Enemy";
}

