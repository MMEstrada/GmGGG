if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Player"){
    other.CurrentHP -= Damage;
    other.State = "Hit";
    other.alarm[0] = StunLength;  
}

IsHit = true;

