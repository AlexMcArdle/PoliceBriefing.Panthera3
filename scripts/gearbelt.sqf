//remove previous actions, add more


switch (_this select 3) do {
	case "radio": {
		(_this select 1) removeAction action_Radio;
		action_callEMS = player addAction ["<t color='#FF0000'>(Call EMS)</t>", "scripts\gearbelt.sqf", "callEMS", 10, false, true, "", "vest _this == 'V_Rangemaster_belt'"];
	};
	case "callEMS": {
		(_this select 1) removeAction action_callEMS;
		_ems = player execVM "scripts\callEMS.sqf";
		hint "be there soon brah";
		action_radio = player addAction ["<t color='#FF0000'>(Radio)</t>", "scripts\gearbelt.sqf", "radio", 10, false, true, "", "vest _this == 'V_Rangemaster_belt'"];
	};
	default {
		hint "you shouldn't be here";
	};
};
//do other cool shit