/*
 * File: World-1-3.k
 * ---------------------------
 * Uh oh. We've got MORE potholes. Ewww.
 * Let's automate this process with control statements!
 */

import "turns";

function FillPotHoles(){
	while (frontIsClear()){
		move();
		dropBeeper();
		move();
	}
}

function dropBeeper() {
	if(rightIsClear()) {
		turnRight();
		move();
		if(noBeepersPresent()) {
			putBeeper();
		}
	}
	turnAround();
	move();
	turnRight();
}

