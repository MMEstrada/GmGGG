MyBR = instance_nearest(x, y, OBJ_BattleRegion);

if (CurrentHP > 0)
{
    XSpeed = 0;
    if (keyboard_check(ord("A")))
    {
        XSpeed = -1*Speed;
        FacingLeft = true;
    }
    else if (keyboard_check(ord("D")))
    {
        XSpeed = Speed;
        FacingLeft = false;
    }
    
    YSpeed = 0;
    if (OnGround == true)
    {
        if (keyboard_check(ord("W")))
        {
            YSpeed = -1*Speed;
        }
        else if (keyboard_check(ord("S")))
        {
            YSpeed = Speed;
        }
    }
    
    if(IsAttacking == false && IsHit == false)
    {
        if (place_meeting(x + XSpeed * SpeedMod, y, OBJ_InvisibleWall))
        {
            while(!place_meeting(x + sign(XSpeed * SpeedMod), y, OBJ_InvisibleWall))
            {
                x += sign(XSpeed*SpeedMod);
            }
            XSpeed = 0;
        }

        if (place_meeting(x, y + YSpeed * SpeedMod, OBJ_InvisibleWall)) 
        {
            while(!place_meeting(x, y + sign(YSpeed * SpeedMod), OBJ_InvisibleWall))
            {
                y += sign(YSpeed * SpeedMod);
            }
            YSpeed = 0;
        }
        
        if (MyBR.IsActive == true)
        {
            if (point_in_rectangle(x + XSpeed * SpeedMod, y, MyBR.LeftEdge + 35, MyBR.TopEdge, My.BR.RightEdge - 35, MyBR.BottomEdge) == false || place_free(x + XSpeed * SpeedMod, y) == false)
            {
                XSpeed = 0;
            }
            if (point_in_rectangle(x, y + YSpeed * SpeedMod, MyBR.LeftEdge + 35, MyBR.TopEdge, My.BR.RightEdge - 35, MyBR.BottomEdge) == false || place_free(x, y + YSpeed * SpeedMod) == false)
            {
                YSpeed = 0;
            }
        }
        
        if (OnGround == true)
        {
            if (XSpeed != 0 && YSpeed != 0)
            {
                x += XSpeed*SpeedMod*0.7;
                y += YSpeed*SpeedMod*0.7;
            }
            else if (XSpeed != 0 || YSpeed != 0)
            {
                x += XSpeed*SpeedMod;
                y += YSpeed*SpeedMod;
            }
        }
        else if (OnGround == false)
        {
            x += XSpeed*SpeedMod;
        }
    }
    
    if (/*FacingLeft == false &&*/ XSpeed == 0 && YSpeed == 0 && OnGround == true)
    {
        //image_xscale = 1;
        SpeedMod = 1;
        image_speed = 0.2;
        sprite_index = GertrudeIdle;
        if (FacingLeft == false)
        {
            image_xscale = 1;   
        }
        else //FacingLeft == true
        {
            image_xscale = -1;
        }
    }
    /*
    else if (FacingLeft == true && XSpeed == 0 && YSpeed == 0 && OnGround == true)
    {
        //image_xscale = -1;
        SpeedMod = 1;
        image_speed = 0.2;
        sprite_index = GertrudeIdle;
    }
    */
    else if (YSpeed != 0)
    {
        if (FacingLeft == false && XSpeed > 0 && sprite_index != GertrudeRight && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeRight;
        }
        else if (FacingLeft == true && XSpeed < 0 && sprite_index != GertrudeLeft && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeLeft;
        }
        else if (FacingLeft == false && XSpeed == 0 && sprite_index != GertrudeRight && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeRight;
        }
        else if (FacingLeft == true && XSpeed == 0 && sprite_index != GertrudeLeft && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeLeft;
        }
    }
    else if (YSpeed == 0)
    {
        if (FacingLeft == false && XSpeed > 0 && sprite_index != GertrudeRight && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeRight;
        }
        else if (FacingLeft == true && XSpeed < 0 && sprite_index != GertrudeLeft && OnGround == true)
        {
            image_xscale = 1;
            image_speed = 0.4;
            sprite_index = GertrudeLeft;
        }
    }
}
else
{
    instance_destroy();
}

if (OnGround == true)
{
    GroundY = y;
}
    
depth = -1 * GroundY;

/* */
/*  */
