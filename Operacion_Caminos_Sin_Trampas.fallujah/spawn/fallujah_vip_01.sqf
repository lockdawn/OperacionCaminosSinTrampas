// Export of 'OCST_Fallujah_vip_01.fallujah' by [F.E.L] Cabo lock on v0.9

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
	_item1 = _item0 createUnit ["UK3CB_MEI_O_SL",[3947.94,6015.21,3.36632],[],0,"CAN_COLLIDE"];
	_item0 selectLeader _item1;
	_this = _item1;
	_objects pushback _this;
	_objectIDs pushback 1;
	_this setPosWorld [3947.94,6015.26,10.3578];
	_this setVectorDirAndUp [[-0.0611254,-0.99813,0],[0,0,1]];
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
	_item2 = _item0 createUnit ["UK3CB_MEI_O_TL",[3647.32,6016.19,3.10023],[],0,"CAN_COLLIDE"];
	_this = _item2;
	_objects pushback _this;
	_objectIDs pushback 2;
	_this setPosWorld [3647.32,6016.24,10.0917];
	_this setVectorDirAndUp [[-0.999779,0.0210422,0],[0,0,1]];
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
	_item3 = _item0 createUnit ["UK3CB_MEI_O_MD",[4273.69,6099.46,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item3;
	_objects pushback _this;
	_objectIDs pushback 3;
	_this setPosWorld [4273.69,6099.51,10.3578];
	_this setVectorDirAndUp [[-0.938876,-0.344255,0],[0,0,1]];
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
	_item4 = _item0 createUnit ["UK3CB_MEI_O_AT",[3714.27,6406.79,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item4;
	_objects pushback _this;
	_objectIDs pushback 4;
	_this setPosWorld [3714.27,6406.84,13.7378];
	_this setVectorDirAndUp [[-0.235002,0.971995,0],[0,0,1]];
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
	_item5 = _item0 createUnit ["UK3CB_MEI_O_AT_ASST",[4225.87,6236.83,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item5;
	_objects pushback _this;
	_objectIDs pushback 5;
	_this setPosWorld [4225.87,6236.88,10.3578];
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
	_item6 = _item0 createUnit ["UK3CB_MEI_O_MK",[3906.72,6479.45,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item6;
	_objects pushback _this;
	_objectIDs pushback 6;
	_this setPosWorld [3906.72,6479.5,10.3578];
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
	_item7 = _item0 createUnit ["UK3CB_MEI_O_AR_01",[4080.78,6238.57,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item7;
	_objects pushback _this;
	_objectIDs pushback 7;
	_this setPosWorld [4080.78,6238.62,13.7378];
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
	_item8 = _item0 createUnit ["UK3CB_MEI_O_RIF_3",[3855.76,6145.53,3.1],[],0,"CAN_COLLIDE"];
	_this = _item8;
	_objects pushback _this;
	_objectIDs pushback 8;
	_this setPosWorld [3855.76,6145.58,10.0914];
	_this setVectorDirAndUp [[-0.966478,-0.256748,0],[0,0,1]];
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
	_item20 = _item0 createUnit ["UK3CB_MEI_O_TL",[3609.84,6180.21,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item20;
	_objects pushback _this;
	_objectIDs pushback 20;
	_this setPosWorld [3609.84,6180.26,10.3578];
	_this setVectorDirAndUp [[-0.991797,-0.127819,0],[0,0,1]];
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
	_item21 = _item0 createUnit ["UK3CB_MEI_O_MD",[4039.57,6550.15,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item21;
	_objects pushback _this;
	_objectIDs pushback 21;
	_this setPosWorld [4039.57,6550.2,10.3578];
	_this setVectorDirAndUp [[0.926654,0.375915,0],[0,0,1]];
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
	_item22 = _item0 createUnit ["UK3CB_MEI_O_AT",[4073.74,5828.9,3.36632],[],0,"CAN_COLLIDE"];
	_this = _item22;
	_objects pushback _this;
	_objectIDs pushback 22;
	_this setPosWorld [4073.74,5828.95,10.3578];
	_this setVectorDirAndUp [[-0.999624,-0.0274242,0],[0,0,1]];
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
	_item23 = _item0 createUnit ["UK3CB_MEI_O_AT_ASST",[3742.73,5820.5,3.12425],[],0,"CAN_COLLIDE"];
	_this = _item23;
	_objects pushback _this;
	_objectIDs pushback 23;
	_this setPosWorld [3742.73,5820.55,10.1157];
	_this setVectorDirAndUp [[-0.597983,-0.801509,0],[0,0,1]];
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
	_item24 = _item0 createUnit ["UK3CB_MEI_O_MK",[4248.91,5835.91,6.74637],[],0,"CAN_COLLIDE"];
	_this = _item24;
	_objects pushback _this;
	_objectIDs pushback 24;
	_this setPosWorld [4248.91,5835.96,13.7378];
	_this setVectorDirAndUp [[-0.983983,0.178263,0],[0,0,1]];
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
	_item25 = _item0 createUnit ["UK3CB_MEI_O_AR_01",[4185.66,6536.16,3.1],[],0,"CAN_COLLIDE"];
	_this = _item25;
	_objects pushback _this;
	_objectIDs pushback 25;
	_this setPosWorld [4185.66,6536.21,10.0914];
	_this setVectorDirAndUp [[-0.795313,-0.606199,0],[0,0,1]];
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
	_item26 = _item0 createUnit ["UK3CB_MEI_O_RIF_3",[3974.5,5826.29,3.06454],[],0,"CAN_COLLIDE"];
	_this = _item26;
	_objects pushback _this;
	_objectIDs pushback 26;
	_this setPosWorld [3974.5,5826.34,10.056];
	_this setVectorDirAndUp [[0.0503569,-0.998731,0],[0,0,1]];
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
	_item18 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["lambs_wp_TaskGarrison",[3953.16,6213.11,0],[],0,"CAN_COLLIDE"];
	_this = _item18;
	_logics pushback _this;
	_logicIDs pushback 18;
	_this setPosWorld [3953.16,6213.11,6.99001];
	_this setVectorDirAndUp [[0.126765,-0.991933,0],[0,0,1]];
	_this setVariable ["objectArea",[367.616,409.312,172.717,true,-1]];
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
