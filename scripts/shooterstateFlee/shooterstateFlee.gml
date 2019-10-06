/// @desc shooterstateFlee(detect_radius)
/// @arg0 detect_radius

var r = argument0;
var ooze = obj_ooze;
var dir = point_direction(x, y, ooze.x, ooze.y);

// handle being far enough away from the ooze
if (staminaDelay >= 0) {
	handleMovement(moveSpeed, 360 - dir);
	staminaDelay--;
	
// stamina has run out
} else {
	state = SHOOTERSTATE.TIRED;
}