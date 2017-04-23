if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Enemy"){
    other.CurrentHP -= Damage;
    other.IsHit = true;
    other.alarm[3] = StunLength;    
}

IsHit = true;

