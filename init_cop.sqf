//make sure we have a fully-connected person
waitUntil {!isNull player};

//do cop shit
//todo: attach to gearbelt object "V_Rangemaster_belt"
player setVariable ["hasGearBelt", 1];
_this setVariable ["isWanted", false, true];
action_radio = player addAction ["<t color='#FF0000'>(Radio)</t>", "scripts\gearbelt.sqf", "radio", 10, false, true, "", "vest _this == 'V_Rangemaster_belt'"];

player addItem "ItemRadio";
player assignItem "ItemRadio";



hint "Cop Init Complete";