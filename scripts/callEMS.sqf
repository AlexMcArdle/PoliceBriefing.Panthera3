if !(ems_1 getVariable "isBusy") then {
	ems_1 setVariable ["isBusy", true, true];
	ems_1 doMove (getpos _this);
	waitUntil {moveToCompleted ems_1};
	hint "im here brah";
};