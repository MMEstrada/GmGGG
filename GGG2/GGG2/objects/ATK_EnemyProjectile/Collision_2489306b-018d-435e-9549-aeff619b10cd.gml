//if(image_index == DMGFrame && abs(depth - ATK_EnemyProjectile.depth) <= LayerSize && abs(y - ATK_EnemyProjectile.y) <= LayerSize && Owner == "Enemy"){
    other.CurrentHP -= Damage;
    other.IsHit = true;
    other.alarm[3] = StunLength; 
    instance_destroy();   
//}

