// Export of 'OCST_Fallujah_05.fallujah' by [F.E.L] Cabo lock on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item0 = grpNull;
if (_layerRoot) then {
	_item0 = createGroup east;
	_this = _item0;
	_groups pushback _this;
	_groupIDs pushback 0;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item1 = objNull;
if (_layerRoot) then {
	_item1 = _item0 createUnit ["UK3CB_MEI_O_SL",[5230.96,5732.37,6.74637],[],0,"CAN_COLLIDE"];
	_item0 selectLeader _item1;
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [5230.96,5732.42,13.7478];
	_this setVectorDirAndUp [[0.998564,0.0535734,0],[0,0,1]];
	_this setname "Akbar Adel";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "Male03PER";;
	_this setpitch 0.95;;
	_this setRank "SERGEANT";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',[-1,1,2,3]];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item2 = objNull;
if (_layerRoot) then {
	_item2 = _item0 createUnit ["UK3CB_MEI_O_TL",[5359.72,5775.65,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [5359.72,5775.7,10.3678];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Sibhatullah Bahadur";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male01per";;
	_this setpitch 1.04564;;
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = _item0 createUnit ["UK3CB_MEI_O_MD",[5418.93,5874.54,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [5418.93,5874.59,10.3678];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Jamal Ratebzad";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male03per";;
	_this setpitch 1.00478;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', true]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = _item0 createUnit ["UK3CB_MEI_O_AT",[5302.83,5829.53,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [5302.83,5829.58,13.7478];
	_this setVectorDirAndUp [[-0.990142,-0.140067,0],[0,0,1]];
	_this setname "Jajil Spanta";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male03per";;
	_this setpitch 0.995372;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item5 = objNull;
if (_layerRoot) then {
	_item5 = _item0 createUnit ["UK3CB_MEI_O_AT_ASST",[5093.2,5629.53,3.06561],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [5093.2,5629.58,10.0571];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Abdul-Mussawir Ajani";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male03per";;
	_this setpitch 1.00449;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = _item0 createUnit ["UK3CB_MEI_O_MK",[5265.03,5614.34,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [5265.03,5614.39,10.3678];
	_this setVectorDirAndUp [[0.14948,-0.988765,0],[0,0,1]];
	_this setname "Aslan Anwari";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male02per";;
	_this setpitch 0.964341;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item7 = objNull;
if (_layerRoot) then {
	_item7 = _item0 createUnit ["UK3CB_MEI_O_AR_01",[5291.35,5862.79,2.82658],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [5291.35,5862.84,9.82802];
	_this setVectorDirAndUp [[0.998196,-0.0600449,0],[0,0,1]];
	_this setname "Bashir Khoram";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male01per";;
	_this setpitch 0.968485;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = _item0 createUnit ["UK3CB_MEI_O_RIF_3",[5166.12,5821.93,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [5166.12,5821.98,13.7478];
	_this setVectorDirAndUp [[0.999999,0.00170489,0],[0,0,1]];
	_this setname "Ismail Sabet";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male01per";;
	_this setpitch 0.979731;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item20 = objNull;
if (_layerRoot) then {
	_item20 = _item0 createUnit ["UK3CB_MEI_O_TL",[5095.19,5714.96,3.12458],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [5095.19,5715.01,10.116];
	_this setVectorDirAndUp [[0.355276,-0.934761,0],[0,0,1]];
	_this setname "Aslan Aybak";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male03per";;
	_this setpitch 1.02796;;
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item21 = objNull;
if (_layerRoot) then {
	_item21 = _item0 createUnit ["UK3CB_MEI_O_MD",[5068.98,5878.1,0],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [5068.98,5878.15,6.99145];
	_this setVectorDirAndUp [[0.0938567,-0.995586,0],[0,0,1]];
	_this setname "Latif Amin";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male03per";;
	_this setpitch 0.959897;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', true]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (1 != -1 && {1 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 1, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item22 = objNull;
if (_layerRoot) then {
	_item22 = _item0 createUnit ["UK3CB_MEI_O_AT",[5386.62,5577.55,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [5386.62,5577.6,10.3678];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Basharat Khalili";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 0.960883;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item23 = objNull;
if (_layerRoot) then {
	_item23 = _item0 createUnit ["UK3CB_MEI_O_AT_ASST",[5119.78,5535.99,0],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [5119.78,5536.04,7.00122];
	_this setVectorDirAndUp [[-0.920177,-0.391504,0],[0,0,1]];
	_this setname "Kabir Ajani";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 1.03764;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item24 = objNull;
if (_layerRoot) then {
	_item24 = _item0 createUnit ["UK3CB_MEI_O_MK",[5394.15,5664.86,3.1249],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [5394.15,5664.91,10.1263];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Adil Haidari";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male02per";;
	_this setpitch 0.963361;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item25 = objNull;
if (_layerRoot) then {
	_item25 = _item0 createUnit ["UK3CB_MEI_O_AR_01",[5088.94,5802.81,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [5088.94,5802.86,13.7378];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Qadeer Fahim";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male01per";;
	_this setpitch 0.988749;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item26 = objNull;
if (_layerRoot) then {
	_item26 = _item0 createUnit ["UK3CB_MEI_O_RIF_3",[5421.62,5691.67,3.1],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [5421.62,5691.71,10.1014];
	_this setVectorDirAndUp [[-0.840059,-0.542496,0],[0,0,1]];
	_this setname "Bashir Khusraw";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "male01per";;
	_this setpitch 1.00632;;
	_this setSkill 0.4;
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && !isMultiplayer) then {_this setVariable ['ENH_SPR_Tickets', 0]};
	if (local _this) then {parseSimpleArray "[[""hitface"",""hitneck"",""hithead"",""hitpelvis"",""hitabdomen"",""hitdiaphragm"",""hitchest"",""hitbody"",""hitarms"",""hithands"",""hitlegs"",""incapacitated"",""hitleftarm"",""hitrightarm"",""hitleftleg"",""hitrightleg""],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]" params ['_hitpoints', '_damage']; {if ((_damage # _forEachIndex) == 0) then {continue}; _this setHitPointDamage [_x, _damage # _forEachIndex, false]} forEach _hitpoints};
	if (0.5 != 0.5) then {[_this, ['aimingShake', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['aimingAccuracy', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['commanding', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['courage', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['general', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['reloadSpeed', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotDistance', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, ['spotTime', 0.5]] remoteExec ['setSkill', _this]};
	if (0.5 != 0.5) then {[_this, 0.5] remoteExec ['allowFleeing', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Medic', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', false]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', false]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', false, true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
	_this setVariable ["iedd_ied_c_variation", 5, true];
	_this setVariable ["iedd_ied_c_size", 2, true];
	_this setVariable ["iedd_ied_c_dud", 0, true];
	_this setVariable ['s',0];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item0;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["Alpha 1-1"];                            } else {                                [_this, "Alpha 1-1"] call CBA_fnc_setCallsign;                            };;
	if (!is3DEN && 0 > 0) then {[_this, getPosATL (leader _this), 0] call BIS_fnc_taskPatrol};
	;
	;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item18 = objNull;
if (_layerRoot) then {
	_item18 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["lambs_wp_TaskGarrison",[5259.26,5727.93,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_logics pushback _this;
	_logicIDs pushback 18;
	_this setPosWorld [5259.26,5727.93,7];
	_this setVectorDirAndUp [[-0.128904,0.991657,0],[0,0,1]];
	_this setVariable ["objectArea",[205.014,203.177,352.594,true,-1]];
	_this setVariable ['lambs_wp_ExitConditions', -1, true];;
	_this setVariable ['lambs_wp_SortByHeight',false,true];;
	_this setVariable ['lambs_wp_Teleport',false,true];;
	_this setVariable ['lambs_wp_Patrol',true,true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item1 && !isNull _item18) then {_item1 synchronizeObjectsAdd [_item18]; _item18 synchronizeObjectsAdd [_item1];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item18) then {_item18 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
