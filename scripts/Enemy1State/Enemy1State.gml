
Enemy1Act = new State();
Enemy1Attack = new State();

Enemy1Act.OnEnter = MoveEnter;
Enemy1Act.OnExit = function() {
	show_debug_message("exit");
}

enemy1StateMap = {
	"act" : Enemy1Act,
	"attack" : Enemy1Attack,
}

enemy2StateMap = {
	"act" : Enemy1Act,
}

// *** sample
function MoveEnter() { show_debug_message("move enter")};
function MoveAround() {
	// move logic..
}
// ***

//enemy1Fsm = new EnemyFSM();
//enemy1Fsm.Register("mage", enemy1StateMap, "act");
//show_debug_message(enemy1Fsm);

//enemy1Fsm.Register("goblin", enemy2StateMap, "act");
