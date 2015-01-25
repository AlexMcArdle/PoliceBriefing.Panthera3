//RE doesn't work in singleplayer
if(!isServer) then {
	[dispatch, nil, rSIDECHAT, "Running warrant check."] call RE;
	if(_this getVariable "isWanted") then {
		[dispatch, nil, rSIDECHAT, "Suspect has a warrant for their arrest."] call RE;
	}
	else {
		[dispatch, nil, rSIDECHAT, "No warrants have been issued."] call RE;

	};
}
else {
	dispatch sideChat "Running warrant check";
	if(_this getVariable "isWanted") then {
		dispatch sideChat "Suspect has a warrant for their arrest.";
	}
	else {
		dispatch sideChat "No warrants have been issued.";

	};
};