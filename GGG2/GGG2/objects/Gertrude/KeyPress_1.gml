AttackType = "";

if (keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left))
{
    AttackType = "Basic Punch";
}

if (keyboard_check(vk_numpad8) || keyboard_check(ord("I")) || keyboard_check(vk_up))
{
    AttackType = "Strong Punch";
}

if (OnGround == true)
{
    event_user(2);
}

