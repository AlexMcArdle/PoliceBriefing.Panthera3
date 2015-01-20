//make sure we have a fully-connected person
waitUntil {!isNull player};
sleep(2);
hint "Cop Init Complete";

/*FNC_todo = {hint "called"};
*/

//do cop shit
//todo: attached to gearbelt object "V_Rangemaster_belt"
player setVariable ["hasGearBelt", 1];
_actionRadio = player addAction ["<t color='#FF0000'>(Radio)</t>", "scripts/gearbelt.sqf"];


