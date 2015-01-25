switch (_this select 3) do {
	case "radio": {
		action_callEMS = player addAction ["<t color='#FF0000'>(Call EMS)</t>", "scripts\gearbelt.sqf", "callEMS", 10, false, false, "", "vest _this == 'V_Rangemaster_belt'"];
		action_warrantCheck = player addAction ["<t color='#FF0000'>(Warrant Check)</t>", "scripts\gearbelt.sqf", "warrantCheck", 10, false, false, "", "vest _this == 'V_Rangemaster_belt'"];
		(_this select 1) removeAction action_Radio;
	};
	case "callEMS": {
		(_this select 1) removeAction action_callEMS;
		(_this select 1) removeAction action_warrantCheck;
		_ems = player execVM "scripts\callEMS.sqf";
		action_radio = player addAction ["<t color='#FF0000'>(Radio)</t>", "scripts\gearbelt.sqf", "radio", 10, false, false, "", "vest _this == 'V_Rangemaster_belt'"];
	};
	case "warrantCheck": {
		(_this select 1) removeAction action_warrantCheck;
		(_this select 1) removeAction action_callEMS;
		
		_nearest=objNull;
		_nearestdist=10;
		
		{
			_dist=vehicle _x distance (_this select 1);
			/*
			if (isPlayer _x and _dist<_nearestdist) then {
				_nearest=_x;
				_nearestdist=_dist;
			};
			*/
			if((_dist<_nearestdist) and (_x != (_this select 1)))  then {
				_nearest=_x;
				_nearestdist=_dist;
			};
		} forEach allUnits;

		if (!isNull _nearest) then { _warrants = _nearest execVM "scripts\warrantCheck.sqf"}
		else { hint "There are no units within 10m"};
		action_radio = player addAction ["<t color='#FF0000'>(Radio)</t>", "scripts\gearbelt.sqf", "radio", 10, false, false, "", "vest _this == 'V_Rangemaster_belt'"];
	};
	default {
		hint "you shouldn't be here";
	};
};