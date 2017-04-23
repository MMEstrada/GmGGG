if(OBJ_Player.CurrentHP > 0)
{
    AttackChance = random(100);
    
    if(Aggressiveness > .50) //Just a random attack chance, subject to change
    {
        sprite_index = SPR_EnemyStrongPunch;                       //Sprite Needed
        MyAttack = instance_create(x,y,ATK_EnemyProjectile);
        State = "Attacking";
        Aggressiveness = 0;
        MyAttack.depth = depth;
        //MyAttack.image_xscale = image_xscale;
        //MyAttack.image_speed = image_speed;
        MyAttack.Owner = "Enemy";
    }
}

