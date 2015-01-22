_emsList = [ems_1, ems_2, ems_3];
//_emsDistances = {_this distance _x} forEach _emsList;

{
	if !(_x getVariable "isBusy") exitWith {
		_x setVariable ["isBusy", true, true];
		hint "on my way";
		_x doMove (getpos _this);
		waitUntil {moveToCompleted _x};
		hint "im here brah";
		
		//time to heal him
		//
		
		//Go back on duty
		_x setVariable ["isBusy", false, true];
	};
} forEach _emsList;

/*
if !(ems_1 getVariable "isBusy") then {
	ems_1 setVariable ["isBusy", true, true];
	ems_1 doMove (getpos _this);
	waitUntil {moveToCompleted ems_1};
	hint "im here brah";
}
else {
	if !(ems_2
*/

/*
if((_this distance ems_1) < (_this distance ems_2)) then {
	if((_this distance ems_1) < (_this distance ems_3)) then {
		//call ems_1
		hint "ems_1";
	}
	else {
		//call ems_3
		hint "ems_3";
	};
}
else {
	if((_this distance ems_2) < ((_this distance ems_3)) then {
		//call ems_2
		hint "ems_2";
	}
	else {
		//call ems_1
		hint "ems_1";
	};
};
*/


/*
if !(ems_1 getVariable "isBusy") then {
	_emsDistances = _emsDistances + (_this distance ems_1);
};
if !(ems_2 getVariable "isBusy") then {
	_emsDistances = _emsDistances + (_this distance ems_2);
};
if !(ems_3 getVariable "isBusy") then {
	_emsDistances = _emsDistances + (_this distance ems_3);
};
*/

/*
if !(ems_1 getVariable "isBusy") then {
	ems_1 setVariable ["isBusy", true, true];
	ems_1 doMove (getpos _this);
	waitUntil {moveToCompleted ems_1};
	hint "im here brah";
};
*/