// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 1; // LobbyWalls
global.__objectDepths[1] = 0; // OBJ_InvisibleWall
global.__objectDepths[2] = 0; // Eagle
global.__objectDepths[3] = 0; // OBJ_Enemy
global.__objectDepths[4] = 0; // ATK
global.__objectDepths[5] = 0; // Gertrude
global.__objectDepths[6] = 0; // OBJ_Camera
global.__objectDepths[7] = 0; // OBJ_BattleRegion
global.__objectDepths[8] = 0; // ATK_LavaGatorChomp
global.__objectDepths[9] = 0; // ATK_EnemyProjectile
global.__objectDepths[10] = 0; // OBJ_Sniper
global.__objectDepths[11] = 0; // ATK_Strong
global.__objectDepths[12] = 0; // OBJ_EnemyIntern
global.__objectDepths[13] = 0; // LavaGator
global.__objectDepths[14] = 0; // ATK_Basic
global.__objectDepths[15] = 0; // ATK_LavaGatorFire


global.__objectNames[0] = "LobbyWalls";
global.__objectNames[1] = "OBJ_InvisibleWall";
global.__objectNames[2] = "Eagle";
global.__objectNames[3] = "OBJ_Enemy";
global.__objectNames[4] = "ATK";
global.__objectNames[5] = "Gertrude";
global.__objectNames[6] = "OBJ_Camera";
global.__objectNames[7] = "OBJ_BattleRegion";
global.__objectNames[8] = "ATK_LavaGatorChomp";
global.__objectNames[9] = "ATK_EnemyProjectile";
global.__objectNames[10] = "OBJ_Sniper";
global.__objectNames[11] = "ATK_Strong";
global.__objectNames[12] = "OBJ_EnemyIntern";
global.__objectNames[13] = "LavaGator";
global.__objectNames[14] = "ATK_Basic";
global.__objectNames[15] = "ATK_LavaGatorFire";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for