_unit = _this select 1;
removeUniform _unit;

_clothes = selectRandom [
"U_I_C_Soldier_Bandit_4_F",
"U_I_C_Soldier_Bandit_1_F",
"U_I_C_Soldier_Bandit_2_F",
"U_I_C_Soldier_Bandit_5_F",
"U_I_C_Soldier_Bandit_3_F",
"U_C_Man_casual_2_F",
"U_C_Man_casual_3_F",
"U_C_Man_casual_1_F",
"U_MU_PoloshirtPants2",
"U_MU_PoloshirtPants1",
"U_C_Poloshirt_blue",
"U_C_Poloshirt_burgundy",
"U_C_Poloshirt_redwhite",
"U_C_Poloshirt_salmon",
"U_C_Poloshirt_stripped",
"U_C_Poloshirt_tricolour",
"U_BG_Guerilla2_1",
"U_BG_Guerilla2_3"
];

_unit forceAddUniform _clothes;