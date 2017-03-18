/*Creates a list of all gameplay based rooms to pull from for use by menus. Currently
sets weither a room is unlocked or not in code, though later this should be set through
a .ini file that will be sourced for this sort of data. Also sets the current
last level played.*/

global.LastLevel = rm_Test_Room;

global.levelList[0] = rm_Test_Room;
global.levelList[1] = rm_LevelSelectTest;
global.unlockedList[0] = rm_Test_Room;
