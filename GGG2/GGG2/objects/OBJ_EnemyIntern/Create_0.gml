Speed = 5;
SpeedMod = 1;

MaxHP = 80;
CurrentHP = MaxHP;

OnGround = true;
GroundY = y;

image_speed = .75;

SideMod = 1;

State = "Inactive";

SightRange = 350;

Aggressiveness = 0;
AttackRange = 350;          //Since it's a projectile enemy, the AttackRange should be just 
                            //as far as the Sight Range, maybe?

TargetX = x;
TargetY = y;

                            //These are test variables for attack movement
NewPosReached = false;      //One location the intern can run to. 
CurX = x;                   //I was trying to store the CurX position so that when the enemy flees, 
                            //the somewhat random location should be stored as soon as it gets there...

