/*
	File: fn_recieveMoney.sqf
	Author: Dom
	Description: Recieves money
*/
params [
	["_amount",-1,[0]],
	["_unit",objNull,[objNull]],
	["_bank",false,[false]]
];
if (isNull _unit || _amount isEqualTo -1) exitWith {};

private _name = ["someone",_unit] call DT_fnc_findName;
if (_bank) then {
	[format["You were transferred $%1 from %2.",str(_amount),_name],"green"] call DT_fnc_notify;
	client_bank = client_bank + _amount;
} else {
	[format["You recieved $%1 from %2.",str(_amount),_name],"green"] call DT_fnc_notify;
	client_cash = client_cash + _amount;
};

[0] call DT_fnc_saveStatsPartial;