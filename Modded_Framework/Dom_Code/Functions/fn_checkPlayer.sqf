/*
    File: fn_checkPlayer.sqf
    Author: Dom
    Description: Series of checks to see if a target is valid if !([_unit] call DT_fnc_checkPlayer) exitWith {};
*/
params [
	["_unit",objNull,[objNull]]
];

if (isNull _unit) exitWith {["No target.","red"] call DT_fnc_notify; false};
if !(isPlayer _unit) exitWith {["Invalid target.","red"] call DT_fnc_notify; false};
if (player distance _unit > 4) exitWith {["Target is too far away.","red"] call DT_fnc_notify; false};
true;