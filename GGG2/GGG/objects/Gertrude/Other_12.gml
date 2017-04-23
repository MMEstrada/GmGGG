var MyAttack = 0;

if(IsHit == false && CurrentHP > 0)
{
    if (AttackType == "Basic Punch")
    {
        sprite_index = SPR_GertrudeBasic;
        MyAttack = instance_create(x, y, ATK_Basic);
    }
    else if (AttackType == "Strong Punch")
    {
        sprite_index = SPR_GertrudeStrong;
        MyAttack = instance_create(x, y, ATK_Strong);
    }
}

if (MyAttack != 0)
{
    SpeedMod = 0;
    IsAttacking = true;
    MyAttack.image_xscale = image_xscale;
    MyAttack.image_speed = image_speed;
    MyAttack.Owner = "Player";
}

