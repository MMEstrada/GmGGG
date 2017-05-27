Speed = 12;
SpeedMod = 1;
XSpeed = 0;
YSpeed = 0;
FacingLeft = false;

IsAttacking = false;
AttackType = 0;
MaxHP = 100;
CurrentHP = MaxHP;
IsHit = false;

OnGround = true;
GroundY = y;

image_speed = .2;

MyCamera = instance_create(x, y, OBJ_Camera);

EnemyList = ds_list_create();

