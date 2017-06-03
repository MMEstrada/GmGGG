ButtonCombo = "";
AttackType = "";

if (keyboard_check(vk_numpad4) || keyboard_check(ord("J")) || keyboard_check(vk_left))
{
    ButtonCombo += "+LAtk";
}

if (keyboard_check(vk_numpad8) || keyboard_check(ord("I")) || keyboard_check(vk_up))
{
    ButtonCombo += "SAtk";
}

ds_list_add(CommandList, string_delete(ButtonCombo,1,1));
 
while(ds_list_size(CommandList) > 7){
    ds_list_delete(CommandList, 0);
}
 
if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "LAtk"){
    AttackType = "Basic Punch";
}else if(ds_list_find_value(CommandList,ds_list_size(CommandList)-1) == "SAtk"){
    AttackType = "Strong Punch";
}

if (OnGround == true)
{
    event_user(2);
}

