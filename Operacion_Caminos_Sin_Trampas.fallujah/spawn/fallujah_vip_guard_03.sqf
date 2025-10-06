// Export of 'OCST_Fallujah_vip_guard_03.fallujah' by [F.E.L] Cabo lock on v0.9

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
	_item1 = _item0 createUnit ["UK3CB_MEE_O_SL",[5839.45,6119.34,11.2287],[],0,"CAN_COLLIDE"];
	_item0 selectLeader _item1;
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [5839.45,6119.39,18.2302];
	_this setVectorDirAndUp [[0.0545611,-0.99851,0],[0,0,1]];
	_this setname "Majeed Anwari";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "Male02PER";;
	_this setpitch 0.98;;
	_this setRank "SERGEANT";
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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

private _item3 = objNull;
if (_layerRoot) then {
	_item3 = _item0 createUnit ["UK3CB_MEE_O_MD",[5840.17,6115.06,1.94583],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [5840.17,6115.11,8.94727];
	_this setVectorDirAndUp [[-0.275317,0.961353,0],[0,0,1]];
	_this setname "Luqman Masood";;
	_this setface "PersianHead_A3_01";;
	_this setspeaker "Male03PER";;
	_this setpitch 1.0151;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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
	_this setVariable ['s',[-1,1,2,3]];;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
	if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
	if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;
};

private _item4 = objNull;
if (_layerRoot) then {
	_item4 = _item0 createUnit ["UK3CB_MEE_O_MK",[5858.7,6119.13,0.559289],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [5858.7,6119.18,7.56073];
	_this setVectorDirAndUp [[0.976225,0.216758,0],[0,0,1]];
	_this setname "Abdul-Wahhab Ghafurzai";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "Male01PER";;
	_this setpitch 1;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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

private _item6 = objNull;
if (_layerRoot) then {
	_item6 = _item0 createUnit ["UK3CB_MEE_O_MG_ASST",[5852.22,6120.85,3.90944],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [5852.22,6120.9,10.9109];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Karim Ghafurzai";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male02per";;
	_this setpitch 1.00049;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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

private _item8 = objNull;
if (_layerRoot) then {
	_item8 = _item0 createUnit ["UK3CB_MEE_O_RIF_1",[5856.28,6121.57,7.24665],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [5856.28,6121.62,14.2481];
	_this setVectorDirAndUp [[-0.88634,-0.463035,0],[0,0,1]];
	_this setname "Bashir Anwari";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 1.00937;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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

private _item11 = objNull;
if (_layerRoot) then {
	_item11 = _item0 createUnit ["UK3CB_MEE_O_ENG",[5845.47,6125.89,3.90944],[],0,"CAN_COLLIDE"];
	_this = _item11;
	_objects pushback _this;
	_objectIDs pushback 11;
	_this setPosWorld [5845.47,6125.94,10.9109];
	_this setVectorDirAndUp [[0.999504,-0.0314883,0],[0,0,1]];
	_this setname "Khalil Zamani";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male02per";;
	_this setpitch 0.991765;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['Engineer', true]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['ExplosiveSpecialist', true]] remoteExec ['setUnitTrait', _this]};
	[_this, ['UAVHacker', false]] remoteExec ['setUnitTrait', _this];
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['CamouflageCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['AudibleCoef', 1]] remoteExec ['setUnitTrait', _this]};
	if !(isClass (configFile >> 'CfgPatches' >> 'ace_common')) then {[_this, ['LoadCoef', 1]] remoteExec ['setUnitTrait', _this]};
	;
	if !(1 == ([0, 1] select (_this getUnitTrait 'engineer')) || {1 == -1}) then {_this setVariable ['s', 1, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
	_this setVariable ['ACE_isEOD', true, true];
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

private _item12 = objNull;
if (_layerRoot) then {
	_item12 = _item0 createUnit ["UK3CB_MEE_O_RIF_1",[5854.76,6124.08,0.559289],[],0,"CAN_COLLIDE"];
	_this = _item12;
	_objects pushback _this;
	_objectIDs pushback 12;
	_this setPosWorld [5854.76,6124.13,7.56073];
	_this setVectorDirAndUp [[-0.266177,-0.963924,0],[0,0,1]];
	_this setname "Abdullah Noori";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male02per";;
	_this setpitch 0.986082;;
	_this setSkill 0.4;
	_this setUnitPos "MIDDLE";
	[_this, 0] remoteExec ['setFeatureType', 0, _this];
	if (!is3DEN && true) then {doStop _this};
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


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
