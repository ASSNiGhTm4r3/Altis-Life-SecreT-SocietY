private["_rand","_sum"];
_rand = round(random 3);
_sum = ["muell",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_sammel_sperre = true;
	player say3D "muell";
	titleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Muellh"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 4;
	if(([true,"muell",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Muellh"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_sammel_sperre = false;