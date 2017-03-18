/*scr_menu takes a variable from any user generated UI event in the menu system, checks against
what room the player is currently in, then uses the variable mpos to determine what action to take
in the resulting switch statement. Most buttons and clickable UI elements have an action
variable associated with them that should be set on an instance's creation code that is tied to
mpos in menu code.*/


if(room_get_name(room) == "rm_MainMenu")
{
    switch (mpos)
    {
        case 0: room_goto(rm_Test_Room); break;
        case 1: room_goto(global.lastLevel); break;
        case 2: room_goto(rm_LevelSelect); break;
        case 3: room_goto(rm_Options); break;
        case 4: game_end(); break;
        default: break;
    }
}else if(room_get_name(room) == "rm_Options"){

    switch (mpos)
    {
        case 0: /*resolution*/; break;
        case 1: room_goto(rm_Sound); break;
        case 2: /*controls*/; break;
        case 3: room_goto(rm_MainMenu); break;
        default: break;
    }
}
else if(room_get_name(room) == "rm_Sound"){
    switch (mpos)
    {
        case 0: /*sfx placeholder*/; break;
        case 1: /*music placeholder*/; break;
        case 2: /*dialogue placeholder*/; break;
        case 3: /*setting apply placeholder*/; break;
        case 4: room_goto(rm_Options); break;
        default: break;
    }
}
else if(room_get_name(room) == "rm_Resolution"){
    switch (mpos)
    {
        case 0: /*esttion apply placeholder*/; break;
        case 1: room_goto(rm_Options); break;
        default: break;
    }
}
else if(room_get_name(room) == "rm_Controls"){
    switch (mpos)
    {
        case 0: /*esttion apply placeholder*/; break;
        case 1: room_goto(rm_Options); break;
        default: break;
    }
}
/*For level selection, the switch cases for the actual level select buttons takes the 
selected level from the level list and compares it to the list of levels that are currently
unlocked, continuing on if it is on that list, and doing nothing if it isn't. Again, later
itterations should just check the .ini file data for the level requested and use that to
determine if the player can access that level or not yet.*/
else if(room_get_name(room) == "rm_LevelSelect")
{
    switch (mpos)
    {
        case 0: 
        {
            var i;
            for(i = 0; i<array_length_1d(global.unlockedList); i+=1)
            {
                if(global.levelList[0] == global.unlockedList[i])
                {
                    room_goto(global.levelList[0]);
                }
            }
            break;
        }
        case 1:
        {
            var i;
            for(i = 0; i<array_length_1d(global.unlockedList); i+=1)
            {
                if(global.levelList[1] == global.unlockedList[i])
                {
                    room_goto(global.levelList[1]);
                }
            }
            break;
        }
        case 2: room_goto(rm_MainMenu); break;
        default: break;
    }
}
/*This room exists purely for testing purposes to see if locking and unlocking levels works.*/
else if(room_get_name(room) == "rm_LevelSelectTest")
{
    switch (mpos)
    {
        case 0: room_goto(rm_LevelSelect); break;
        default:break;
    }
}
