/*
	File: fn_gatherPeaches.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_rand","_sum"];
_rand = round(random 2);
_sum = ["peach",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "take";
	titleText[format[localize "STR_NOTF_Gathering",localize "STR_Item_Peaches"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"peach",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[localize "STR_NOTF_Picked",_sum,localize "STR_Item_Peaches"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_sammel_sperre = false;