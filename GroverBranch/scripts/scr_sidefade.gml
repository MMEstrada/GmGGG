/*
Grover's Notes: 
How to call the script: 
scr_sidefade(Lobby2); //If you want to call room 'Lobby 2'

Can also use multiple parameters. For example,
scr_sidefade(Lobby, Lobby2); 

Don't call these functions in this script. These are the functions you'll call elsewhere.
*/

var fade; //Local variable that calls it
fade = instance_create(0, 0, obj_sidefade);
fade.goal = argument0    //Fade.goal changes an object inside of fade
