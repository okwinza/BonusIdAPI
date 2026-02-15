local DATA_VERSION = 1
local BUILD = "12.0.1.65893"
local Lib = LibStub("LibBonusId") ---@type LibBonusId
if not Lib.ShouldLoadData(DATA_VERSION, BUILD) then return end
local bonuses = {}
bonuses[3] = {op="scale", curveId=149, offset=5, midnight="set", defaultLevel=25, sortPriority=4, extraAmount=10}
bonuses[15] = {op="legacyAdd", amount=4}
bonuses[44] = {op="legacyAdd", amount=1}
bonuses[171] = {op="legacyAdd", amount=2}
for i = 448, 450 do bonuses[i] = {op="legacyAdd", amount=i-446} end
bonuses[451] = {op="legacyAdd", amount=-3}
bonuses[497] = {op="scale", curveId=149, offset=0, midnight="set", defaultLevel=25, sortPriority=2}
bonuses[499] = {op="legacyAdd", amount=1}
bonuses[526] = {op="legacyAdd", amount=1}
bonuses[527] = {op="legacyAdd", amount=2}
bonuses[545] = {op="legacyAdd", amount=2}
bonuses[546] = {op="legacyAdd", amount=1}
bonuses[547] = {op="legacyAdd", amount=1}
bonuses[558] = {op="legacyAdd", amount=1}
bonuses[559] = {op="legacyAdd", amount=2}
for i = 560, 562 do bonuses[i] = {op="legacyAdd", amount=1} end
bonuses[566] = {op="legacyAdd", amount=1}
bonuses[567] = {op="legacyAdd", amount=2}
bonuses[571] = {op="legacyAdd", amount=1}
bonuses[575] = {op="legacyAdd", amount=4}
bonuses[576] = {op="legacyAdd", amount=6}
bonuses[577] = {op="legacyAdd", amount=2}
bonuses[582] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2052, sortPriority=1}
bonuses[583] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2053, sortPriority=1}
bonuses[591] = {op="legacyAdd", amount=4}
bonuses[592] = {op="legacyAdd", amount=5}
bonuses[593] = {op="legacyAdd", amount=3}
bonuses[594] = {op="legacyAdd", amount=3}
bonuses[595] = {op="legacyAdd", amount=2}
for i = 596, 599 do bonuses[i] = {op="legacyAdd", amount=i-600} end
bonuses[602] = {op="scale", curveId=1, contentTuningKey="stat", sortPriority=1}
bonuses[615] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[617] = {op="legacyAdd", amount=4}
bonuses[618] = {op="legacyAdd", amount=6}
bonuses[619] = {op="legacyAdd", amount=4}
bonuses[620] = {op="legacyAdd", amount=6}
for i = 622, 641 do bonuses[i] = {op="legacyAdd", amount=i-621} end
bonuses[644] = {op="legacyAdd", amount=4}
bonuses[645] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[646] = {op="legacyAdd", amount=6}
bonuses[648] = {op="legacyAdd", amount=5}
bonuses[649] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[650] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[651] = {op="legacyAdd", amount=3}
bonuses[656] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[664] = {op="scale", curveId=4, contentTuningKey="stat", sortPriority=1}
bonuses[665] = {op="legacyAdd", amount=3}
for i = 667, 669 do bonuses[i] = {op="legacyAdd", amount=i-666} end
for i = 670, 679 do bonuses[i] = {op="legacyAdd", amount=i-669} end
for i = 680, 682 do bonuses[i] = {op="legacyAdd", amount=2*i-1340} end
bonuses[692] = {op="scale", curveId=3, contentTuningKey="stat", sortPriority=1}
for i = 694, 698 do bonuses[i] = {op="legacyAdd", amount=15*i-10395} end
bonuses[699] = {op="legacyAdd", amount=100}
bonuses[700] = {op="legacyAdd", amount=5}
bonuses[701] = {op="legacyAdd", amount=10}
bonuses[702] = {op="legacyAdd", amount=3}
bonuses[703] = {op="legacyAdd", amount=6}
bonuses[704] = {op="legacyAdd", amount=12}
bonuses[706] = {op="legacyAdd", amount=30}
bonuses[707] = {op="legacyAdd", amount=15}
bonuses[708] = {op="legacyAdd", amount=2}
bonuses[709] = {op="legacyAdd", amount=4}
bonuses[710] = {op="legacyAdd", amount=14}
bonuses[720] = {op="scale", curveId=11, contentTuningKey="stat", sortPriority=1}
for i = 754, 756 do bonuses[i] = {op="legacyAdd", amount=i-753} end
for i = 757, 760 do bonuses[i] = {op="legacyAdd", amount=i-752} end
for i = 761, 763 do bonuses[i] = {op="legacyAdd", amount=i-759} end
for i = 764, 766 do bonuses[i] = {op="legacyAdd", amount=i-758} end
bonuses[767] = {op="scale", curveId=2, contentTuningKey="stat", sortPriority=1}
bonuses[768] = {op="scale", curveId=5, contentTuningKey="stat", sortPriority=1}
bonuses[769] = {op="legacyAdd", amount=5}
for i = 1372, 1471 do bonuses[i] = {op="legacyAdd", amount=i-1472} end
for i = 1473, 1672 do bonuses[i] = {op="legacyAdd", amount=i-1472} end
bonuses[1723] = {op="scale", curveId=165, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[1724] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[1725] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=30, sortPriority=2}
for i = 1729, 1731 do bonuses[i] = {op="scale", curveId=i-1722, contentTuningKey="stat", sortPriority=1} end
bonuses[1732] = {op="scale", curveId=4, contentTuningKey="stat", sortPriority=1}
bonuses[1733] = {op="scale", curveId=12, contentTuningKey="stat", sortPriority=1}
bonuses[1734] = {op="scale", curveId=11, contentTuningKey="stat", sortPriority=1}
bonuses[1735] = {op="scale", curveId=11, contentTuningKey="stat", sortPriority=1}
bonuses[1736] = {op="scale", curveId=10, contentTuningKey="stat", sortPriority=1}
bonuses[1737] = {op="scale", curveId=11, contentTuningKey="stat", sortPriority=1}
bonuses[1738] = {op="scale", curveId=11, contentTuningKey="stat", sortPriority=1}
bonuses[1739] = {op="scale", curveId=13, contentTuningKey="stat", sortPriority=1}
bonuses[1740] = {op="scale", curveId=14, contentTuningKey="stat", sortPriority=1}
bonuses[1741] = {op="scale", curveId=14, contentTuningKey="stat", sortPriority=1}
for i = 1788, 1791 do bonuses[i] = {op="scale", curveId=i-1773, contentTuningKey="stat", sortPriority=1} end
bonuses[1792] = {op="scale", curveId=10, contentTuningKey="stat", sortPriority=1}
bonuses[1793] = {op="scale", curveId=13, contentTuningKey="stat", sortPriority=1}
bonuses[1794] = {op="scale", curveId=12, contentTuningKey="stat", sortPriority=1}
bonuses[1795] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[1796] = {op="scale", curveId=19, contentTuningKey="stat", sortPriority=1}
bonuses[1800] = {op="legacyAdd", amount=24}
bonuses[1810] = {op="legacyAdd", amount=140}
bonuses[1812] = {op="scale", curveId=19, contentTuningKey="stat", sortPriority=1}
bonuses[1817] = {op="legacyAdd", amount=2}
bonuses[1818] = {op="legacyAdd", amount=4}
bonuses[1819] = {op="legacyAdd", amount=3}
bonuses[1820] = {op="legacyAdd", amount=5}
for i = 2829, 3128 do bonuses[i] = {op="legacyAdd", amount=i-3229} end
for i = 3130, 3329 do bonuses[i] = {op="legacyAdd", amount=i-2929} end
bonuses[3330] = {op="legacyAdd", amount=3}
bonuses[3331] = {op="legacyAdd", amount=1}
for i = 3332, 3334 do bonuses[i] = {op="legacyAdd", amount=i-3326} end
bonuses[3340] = {op="legacyAdd", amount=2}
bonuses[3342] = {op="scale", curveId=21, contentTuningKey="stat", sortPriority=1}
bonuses[3380] = {op="scale", curveId=20, contentTuningKey="stat", sortPriority=1}
bonuses[3382] = {op="legacyAdd", amount=1}
bonuses[3383] = {op="legacyAdd", amount=2}
bonuses[3384] = {op="legacyAdd", amount=4}
for i = 3387, 3389 do bonuses[i] = {op="scale", curveId=i-3365, contentTuningKey="stat", sortPriority=1} end
bonuses[3393] = {op="legacyAdd", amount=4}
bonuses[3398] = {op="scale", curveId=25, contentTuningKey="stat", sortPriority=1}
for i = 3438, 3440 do bonuses[i] = {op="legacyAdd", amount=3*i-10306} end
bonuses[3448] = {op="scale", curveId=26, contentTuningKey="stat", sortPriority=1}
bonuses[3458] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[3471] = {op="scale", curveId=1, contentTuningKey="stat", sortPriority=1}
bonuses[3472] = {op="scale", curveId=21, contentTuningKey="stat", sortPriority=1}
bonuses[3492] = {op="legacyAdd", amount=2}
bonuses[3493] = {op="legacyAdd", amount=26}
bonuses[3494] = {op="legacyAdd", amount=34}
bonuses[3502] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[3513] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[3526] = {op="legacyAdd", amount=16}
bonuses[3530] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[3570] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[3571] = {op="legacyAdd", amount=90}
bonuses[3578] = {op="scale", curveId=72, contentTuningKey="stat", sortPriority=1}
bonuses[3585] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[3586] = {op="legacyAdd", amount=45}
bonuses[3587] = {op="legacyAdd", amount=6}
bonuses[3588] = {op="legacyAdd", amount=9}
for i = 3589, 3591 do bonuses[i] = {op="scale", curveId=i-3562, contentTuningKey="stat", sortPriority=1} end
bonuses[3592] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2054, sortPriority=1}
for i = 3593, 3595 do bonuses[i] = {op="legacyAdd", amount=i-3592} end
bonuses[3596] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
for i = 3599, 3608 do bonuses[i] = {op="legacyAdd", amount=i-3598} end
for i = 3615, 3617 do bonuses[i] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2054, sortPriority=1} end
bonuses[3621] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[3622] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[3623] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[3624] = {op="scale", curveId=28, contentTuningKey="stat", sortPriority=1}
bonuses[3625] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[3626] = {op="scale", curveId=30, contentTuningKey="stat", sortPriority=1}
bonuses[3627] = {op="scale", curveId=3, contentTuningKey="stat", sortPriority=1}
bonuses[3628] = {op="scale", curveId=27, contentTuningKey="stat", sortPriority=1}
bonuses[3630] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[3631] = {op="scale", curveId=31, contentTuningKey="stat", sortPriority=1}
bonuses[3632] = {op="scale", curveId=72, contentTuningKey="stat", sortPriority=1}
bonuses[3633] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[3634] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[3635] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
for i = 3636, 3638 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=2, sortPriority=1} end
bonuses[3639] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[3640] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
for i = 3641, 3643 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=10, sortPriority=1} end
for i = 3644, 3651 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
for i = 3652, 3654 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
bonuses[3655] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
for i = 3656, 3667 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
for i = 3668, 3675 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=4, sortPriority=1} end
for i = 3676, 3678 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=78, sortPriority=1} end
bonuses[3679] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3680] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3681] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3682] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3683] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3684] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3685] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3686] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3687] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3688] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3689] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3690] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3691] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3692] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
for i = 3693, 3697 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=52, sortPriority=1} end
bonuses[3698] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[3699] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[3700] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[3701] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[3702] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[3703] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3704] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3705] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3706] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3707] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[3708] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[3709] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[3710] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[3711] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3712] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[3713] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[3714] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
for i = 3715, 3717 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1} end
bonuses[3718] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[3719] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
for i = 3720, 3722 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=10, sortPriority=1} end
for i = 3723, 3730 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
for i = 3731, 3733 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
bonuses[3734] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
for i = 3735, 3746 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
for i = 3747, 3754 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1} end
for i = 3755, 3757 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=78, sortPriority=1} end
bonuses[3758] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3759] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3760] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3761] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3762] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3763] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3764] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3765] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3766] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3767] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3768] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3769] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[3770] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3771] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
for i = 3772, 3776 do bonuses[i] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1} end
bonuses[3777] = {redirect=7168}
bonuses[3778] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[3779] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[3780] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[3781] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[3782] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3783] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3784] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3785] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3786] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[3787] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[3788] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[3789] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[3790] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[3791] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3792] = {op="scale", curveId=32, contentTuningKey="stat", sortPriority=1}
for i = 3793, 3800 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=4, sortPriority=1} end
for i = 3801, 3803 do bonuses[i] = {op="scale", curveId=31, contentTuningKey="stat", contentTuningId=78, sortPriority=1} end
bonuses[3804] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[3805] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3806] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
for i = 3807, 3809 do bonuses[i] = {op="set", itemLevel=2*i-7613, sortPriority=1} end
bonuses[3810] = {op="set", itemLevel=9, sortPriority=1}
for i = 3811, 3813 do bonuses[i] = {op="set", itemLevel=3*i-11420, sortPriority=1} end
bonuses[3814] = {op="set", itemLevel=21, sortPriority=1}
for i = 3815, 3817 do bonuses[i] = {op="set", itemLevel=2*i-7608, sortPriority=1} end
bonuses[3818] = {op="set", itemLevel=29, sortPriority=1}
bonuses[3819] = {op="set", itemLevel=29, sortPriority=1}
bonuses[3820] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=165, sortPriority=1}
bonuses[3821] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[3823] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[3824] = {op="legacyAdd", amount=-1}
for i = 3825, 3827 do bonuses[i] = {op="legacyAdd", amount=i-3824} end
bonuses[3828] = {op="set", itemLevel=5, sortPriority=1}
bonuses[3829] = {op="set", itemLevel=6, sortPriority=1}
bonuses[3830] = {op="set", itemLevel=9, sortPriority=1}
bonuses[3831] = {op="set", itemLevel=11, sortPriority=1}
bonuses[3832] = {op="set", itemLevel=15, sortPriority=1}
for i = 3833, 3836 do bonuses[i] = {op="set", itemLevel=2*i-7648, sortPriority=1} end
for i = 3837, 3839 do bonuses[i] = {op="set", itemLevel=2*i-7649, sortPriority=1} end
bonuses[3840] = {op="set", itemLevel=30, sortPriority=1}
bonuses[3841] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3842] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3843] = {op="scale", curveId=34, contentTuningKey="stat", sortPriority=1}
bonuses[3844] = {op="set", itemLevel=35, sortPriority=1}
for i = 3845, 3847 do bonuses[i] = {op="set", itemLevel=i-3810, sortPriority=1} end
bonuses[3848] = {op="set", itemLevel=37, sortPriority=1}
for i = 3849, 3851 do bonuses[i] = {op="set", itemLevel=i-3817, sortPriority=1} end
bonuses[3852] = {op="set", itemLevel=37, sortPriority=1}
bonuses[3853] = {op="set", itemLevel=39, sortPriority=1}
bonuses[3854] = {op="set", itemLevel=42, sortPriority=1}
bonuses[3855] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3856] = {op="set", itemLevel=49, sortPriority=1}
bonuses[3857] = {op="set", itemLevel=5, sortPriority=1}
bonuses[3858] = {op="set", itemLevel=7, sortPriority=1}
for i = 3859, 3861 do bonuses[i] = {op="set", itemLevel=3*i-11566, sortPriority=1} end
for i = 3862, 3866 do bonuses[i] = {op="set", itemLevel=2*i-7705, sortPriority=1} end
bonuses[3867] = {op="set", itemLevel=28, sortPriority=1}
bonuses[3868] = {op="set", itemLevel=29, sortPriority=1}
for i = 3869, 3871 do bonuses[i] = {op="set", itemLevel=i-3838, sortPriority=1} end
bonuses[3872] = {op="set", itemLevel=35, sortPriority=1}
bonuses[3873] = {op="set", itemLevel=35, sortPriority=1}
for i = 3874, 3876 do bonuses[i] = {op="set", itemLevel=2*i-7708, sortPriority=1} end
bonuses[3877] = {op="set", itemLevel=49, sortPriority=1}
for i = 3878, 3880 do bonuses[i] = {op="set", itemLevel=2*i-7754, sortPriority=1} end
bonuses[3881] = {op="set", itemLevel=11, sortPriority=1}
bonuses[3882] = {op="set", itemLevel=14, sortPriority=1}
bonuses[3883] = {op="set", itemLevel=18, sortPriority=1}
for i = 3884, 3889 do bonuses[i] = {op="set", itemLevel=2*i-7749, sortPriority=1} end
bonuses[3890] = {op="set", itemLevel=29, sortPriority=1}
bonuses[3891] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3892] = {op="set", itemLevel=32, sortPriority=1}
for i = 3893, 3895 do bonuses[i] = {op="set", itemLevel=35, sortPriority=1} end
for i = 3896, 3898 do bonuses[i] = {op="set", itemLevel=37, sortPriority=1} end
bonuses[3899] = {op="set", itemLevel=6, sortPriority=1}
bonuses[3900] = {op="set", itemLevel=11, sortPriority=1}
bonuses[3901] = {op="set", itemLevel=18, sortPriority=1}
for i = 3902, 3904 do bonuses[i] = {op="set", itemLevel=2*i-7785, sortPriority=1} end
for i = 3905, 3907 do bonuses[i] = {op="set", itemLevel=i-3878, sortPriority=1} end
bonuses[3908] = {op="set", itemLevel=31, sortPriority=1}
bonuses[3909] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3910] = {op="set", itemLevel=34, sortPriority=1}
bonuses[3911] = {op="set", itemLevel=35, sortPriority=1}
bonuses[3912] = {op="set", itemLevel=35, sortPriority=1}
bonuses[3913] = {op="set", itemLevel=38, sortPriority=1}
bonuses[3914] = {op="set", itemLevel=42, sortPriority=1}
bonuses[3915] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3916] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3917] = {op="set", itemLevel=50, sortPriority=1}
for i = 3918, 3920 do bonuses[i] = {op="set", itemLevel=4*i-15664, sortPriority=1} end
for i = 3921, 3926 do bonuses[i] = {op="set", itemLevel=2*i-7824, sortPriority=1} end
bonuses[3927] = {op="set", itemLevel=29, sortPriority=1}
bonuses[3928] = {op="set", itemLevel=29, sortPriority=1}
bonuses[3929] = {op="set", itemLevel=31, sortPriority=1}
bonuses[3930] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3931] = {op="set", itemLevel=34, sortPriority=1}
bonuses[3932] = {op="set", itemLevel=35, sortPriority=1}
bonuses[3933] = {op="set", itemLevel=35, sortPriority=1}
bonuses[3934] = {op="set", itemLevel=38, sortPriority=1}
bonuses[3935] = {op="set", itemLevel=42, sortPriority=1}
bonuses[3936] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3937] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3938] = {op="set", itemLevel=50, sortPriority=1}
bonuses[3939] = {op="set", itemLevel=12, sortPriority=1}
bonuses[3940] = {op="set", itemLevel=16, sortPriority=1}
bonuses[3941] = {op="set", itemLevel=14, sortPriority=1}
bonuses[3942] = {op="set", itemLevel=25, sortPriority=1}
for i = 3943, 3948 do bonuses[i] = {op="set", itemLevel=2*i-7868, sortPriority=1} end
for i = 3949, 3951 do bonuses[i] = {op="set", itemLevel=29, sortPriority=1} end
bonuses[3952] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3953] = {op="set", itemLevel=32, sortPriority=1}
for i = 3954, 3956 do bonuses[i] = {op="set", itemLevel=35, sortPriority=1} end
bonuses[3957] = {op="set", itemLevel=38, sortPriority=1}
bonuses[3958] = {op="set", itemLevel=43, sortPriority=1}
bonuses[3959] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3960] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3961] = {op="set", itemLevel=50, sortPriority=1}
for i = 3962, 3964 do bonuses[i] = {op="set", itemLevel=3*i-11873, sortPriority=1} end
bonuses[3965] = {op="set", itemLevel=21, sortPriority=1}
for i = 3966, 3969 do bonuses[i] = {op="set", itemLevel=2*i-7910, sortPriority=1} end
for i = 3970, 3972 do bonuses[i] = {op="set", itemLevel=29, sortPriority=1} end
bonuses[3973] = {op="set", itemLevel=32, sortPriority=1}
bonuses[3974] = {op="set", itemLevel=33, sortPriority=1}
for i = 3975, 3977 do bonuses[i] = {op="set", itemLevel=35, sortPriority=1} end
bonuses[3978] = {op="set", itemLevel=39, sortPriority=1}
bonuses[3979] = {op="set", itemLevel=43, sortPriority=1}
bonuses[3980] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3981] = {op="set", itemLevel=44, sortPriority=1}
bonuses[3982] = {op="set", itemLevel=50, sortPriority=1}
bonuses[3998] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[3999] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4000] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4001] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4002] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4003] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4004] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4005] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4006] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4007] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4008] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4009] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4010] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4011] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4012] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4013] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4014] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4015] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4016] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4017] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4018] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4019] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4020] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4021] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4022] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4023] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4024] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4025] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4026] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4027] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4028] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4029] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4030] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4031] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4032] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4033] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[4034] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4035] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4036] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4037] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4038] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4039] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4040] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4041] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4042] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4043] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4044] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4045] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4046] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4047] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4048] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4049] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4050] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4051] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4052] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4053] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4054] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4055] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4056] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4057] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4058] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4059] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4060] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4061] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4062] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4063] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4064] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4065] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4066] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4067] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4068] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4069] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[4070] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4071] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4072] = {op="scale", curveId=36, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4074] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4075] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4076] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4077] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4079] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4080] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4082] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4083] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4085] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4086] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4088] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4089] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4090] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4091] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4092] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4093] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4094] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4095] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4096] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4097] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4098] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4099] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4100] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4101] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4102] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4103] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4104] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4105] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4106] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4107] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4108] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4109] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4110] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4111] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4112] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4113] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4114] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4115] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4116] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4117] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4118] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4119] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4120] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4121] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4122] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4123] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4124] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4125] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4126] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4127] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4128] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4129] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4130] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4131] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4132] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4133] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4134] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4135] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[4136] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4137] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4138] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4139] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4140] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4141] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[4142] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4143] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4144] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4145] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4146] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4147] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4148] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4149] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4150] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4151] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4152] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4153] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4154] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4155] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4156] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4157] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4158] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4159] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4160] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4161] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4162] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[4163] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[4164] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[4165] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[4166] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[4167] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[4168] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[4169] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[4170] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[4171] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[4172] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[4173] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[4174] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[4175] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[4176] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[4177] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[4178] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[4179] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[4180] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4181] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4182] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4183] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4184] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4185] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4186] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4187] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4188] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4189] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4190] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4191] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4192] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4193] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4194] = {op="set", itemLevel=33, sortPriority=1}
bonuses[4195] = {op="set", itemLevel=32, sortPriority=1}
bonuses[4196] = {op="scale", curveId=105, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[4198] = {op="set", itemLevel=41, sortPriority=1}
bonuses[4199] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4200] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4201] = {op="set", itemLevel=43, sortPriority=1}
bonuses[4202] = {op="set", itemLevel=47, sortPriority=1}
bonuses[4204] = {op="set", itemLevel=48, sortPriority=1}
for i = 4205, 4207 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1} end
bonuses[4208] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[4209] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[4210] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[4211] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=165, sortPriority=1}
bonuses[4212] = {redirect=7164}
bonuses[4213] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[4214] = {op="set", itemLevel=56, sortPriority=1}
bonuses[4215] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4216] = {op="set", itemLevel=57, sortPriority=1}
bonuses[4217] = {op="set", itemLevel=60, sortPriority=1}
for i = 4218, 4221 do bonuses[i] = {op="set", itemLevel=39, sortPriority=1} end
bonuses[4222] = {op="set", itemLevel=54, sortPriority=1}
bonuses[4223] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4224] = {op="set", itemLevel=56, sortPriority=1}
bonuses[4225] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4226] = {op="set", itemLevel=53, sortPriority=1}
bonuses[4227] = {op="set", itemLevel=59, sortPriority=1}
bonuses[4228] = {op="set", itemLevel=54, sortPriority=1}
bonuses[4229] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4232] = {op="legacyAdd", amount=15}
bonuses[4233] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4234] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4235] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[4236] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4237] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4238] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4239] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[4240] = {op="set", itemLevel=43, sortPriority=1}
bonuses[4241] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[4242] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4243] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[4244] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
for i = 4246, 4248 do bonuses[i] = {op="set", itemLevel=29, sortPriority=1} end
bonuses[4249] = {op="set", itemLevel=32, sortPriority=1}
bonuses[4250] = {op="set", itemLevel=35, sortPriority=1}
bonuses[4251] = {op="set", itemLevel=35, sortPriority=1}
bonuses[4252] = {op="set", itemLevel=36, sortPriority=1}
bonuses[4253] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4254] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4255] = {op="set", itemLevel=44, sortPriority=1}
bonuses[4256] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4257] = {op="set", itemLevel=39, sortPriority=1}
for i = 4258, 4260 do bonuses[i] = {op="set", itemLevel=29, sortPriority=1} end
bonuses[4261] = {op="set", itemLevel=33, sortPriority=1}
bonuses[4262] = {op="set", itemLevel=35, sortPriority=1}
for i = 4263, 4265 do bonuses[i] = {op="set", itemLevel=2*i-8491, sortPriority=1} end
bonuses[4266] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4267] = {op="set", itemLevel=44, sortPriority=1}
bonuses[4268] = {op="set", itemLevel=28, sortPriority=1}
bonuses[4269] = {op="set", itemLevel=29, sortPriority=1}
bonuses[4270] = {op="set", itemLevel=29, sortPriority=1}
bonuses[4271] = {op="set", itemLevel=32, sortPriority=1}
for i = 4272, 4274 do bonuses[i] = {op="set", itemLevel=29, sortPriority=1} end
bonuses[4275] = {op="set", itemLevel=32, sortPriority=1}
for i = 4276, 4278 do bonuses[i] = {op="set", itemLevel=2*i-8527, sortPriority=1} end
bonuses[4279] = {op="set", itemLevel=29, sortPriority=1}
for i = 4280, 4282 do bonuses[i] = {op="set", itemLevel=i-4253, sortPriority=1} end
bonuses[4283] = {op="set", itemLevel=29, sortPriority=1}
bonuses[4284] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4285] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4286] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4287] = {op="set", itemLevel=39, sortPriority=1}
for i = 4288, 4290 do bonuses[i] = {op="set", itemLevel=37, sortPriority=1} end
bonuses[4291] = {op="set", itemLevel=38, sortPriority=1}
for i = 4292, 4294 do bonuses[i] = {op="set", itemLevel=i-4258, sortPriority=1} end
bonuses[4295] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4296] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4297] = {op="set", itemLevel=44, sortPriority=1}
for i = 4298, 4300 do bonuses[i] = {op="set", itemLevel=i-4264, sortPriority=1} end
bonuses[4301] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4302] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4303] = {op="set", itemLevel=44, sortPriority=1}
bonuses[4304] = {op="set", itemLevel=32, sortPriority=1}
bonuses[4305] = {op="set", itemLevel=37, sortPriority=1}
bonuses[4306] = {op="set", itemLevel=35, sortPriority=1}
bonuses[4307] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4308] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4309] = {op="set", itemLevel=33, sortPriority=1}
bonuses[4310] = {op="set", itemLevel=32, sortPriority=1}
for i = 4311, 4314 do bonuses[i] = {op="set", itemLevel=2*i-8589, sortPriority=1} end
bonuses[4315] = {op="set", itemLevel=42, sortPriority=1}
bonuses[4316] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4317] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4318] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4319] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4320] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4321] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4322] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4323] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4324] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4325] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4326] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4327] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4328] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4329] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4330] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4331] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4332] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4333] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[4334] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[4335] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=66, sortPriority=1}
bonuses[4336] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4337] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4338] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4493] = {op="set", itemLevel=35, sortPriority=1}
bonuses[4503] = {op="set", itemLevel=44, sortPriority=1}
bonuses[4738] = {op="set", itemLevel=33, sortPriority=1}
bonuses[4739] = {op="set", itemLevel=33, sortPriority=1}
bonuses[4740] = {op="set", itemLevel=34, sortPriority=1}
bonuses[4741] = {op="set", itemLevel=43, sortPriority=1}
bonuses[4742] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4743] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4744] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=65, sortPriority=1}
bonuses[4745] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=63, sortPriority=1}
bonuses[4746] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[4747] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=67, sortPriority=1}
bonuses[4748] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4749] = {op="scale", curveId=35, contentTuningKey="stat", contentTuningId=68, sortPriority=1}
bonuses[4750] = {op="set", itemLevel=48, sortPriority=1}
bonuses[4751] = {op="set", itemLevel=49, sortPriority=1}
bonuses[4752] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4753] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4755] = {op="set", itemLevel=37, sortPriority=1}
bonuses[4756] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4757] = {op="set", itemLevel=37, sortPriority=1}
bonuses[4758] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4759] = {op="set", itemLevel=36, sortPriority=1}
bonuses[4760] = {op="set", itemLevel=39, sortPriority=1}
bonuses[4761] = {op="set", itemLevel=37, sortPriority=1}
bonuses[4762] = {op="set", itemLevel=39, sortPriority=1}
for i = 4763, 4765 do bonuses[i] = {op="set", itemLevel=2*i-9491, sortPriority=1} end
bonuses[4766] = {op="set", itemLevel=36, sortPriority=1}
bonuses[4767] = {op="set", itemLevel=38, sortPriority=1}
bonuses[4768] = {op="set", itemLevel=3, sortPriority=1}
bonuses[4769] = {op="set", itemLevel=5, sortPriority=1}
bonuses[4770] = {op="set", itemLevel=8, sortPriority=1}
for i = 4771, 4773 do bonuses[i] = {op="set", itemLevel=3*i-14310, sortPriority=1} end
bonuses[4774] = {op="set", itemLevel=14, sortPriority=1}
bonuses[4775] = {op="add", amount=1, midnight="force", sortPriority=4}
bonuses[4776] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[4787] = {op="scale", curveId=38, contentTuningKey="stat", sortPriority=1}
bonuses[4788] = {op="scale", curveId=38, contentTuningKey="stat", sortPriority=1}
bonuses[4789] = {op="scale", curveId=39, contentTuningKey="stat", sortPriority=1}
bonuses[4790] = {op="scale", curveId=0, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[4791] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[4792] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[4793] = {op="scale", curveId=0, contentTuningKey="stat", sortPriority=1}
bonuses[4794] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[4795] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[4796] = {op="scale", curveId=40, contentTuningKey="stat", sortPriority=1}
bonuses[4797] = {op="legacyAdd", amount=-30}
bonuses[4804] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4805] = {op="set", itemLevel=60, sortPriority=1}
bonuses[4806] = {op="set", itemLevel=66, sortPriority=1}
for i = 4807, 4810 do bonuses[i] = {op="set", itemLevel=60, sortPriority=1} end
bonuses[4811] = {redirect=6682}
bonuses[4812] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[4813] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[4814] = {op="scale", curveId=39, contentTuningKey="stat", sortPriority=1}
bonuses[4815] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[4816] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[4821] = {op="scale", curveId=37, contentTuningKey="stat", sortPriority=1}
bonuses[4926] = {op="legacyAdd", amount=8}
bonuses[4928] = {op="legacyAdd", amount=10}
for i = 4937, 4944 do bonuses[i] = {op="set", itemLevel=60, sortPriority=1} end
bonuses[4945] = {op="set", itemLevel=66, sortPriority=1}
bonuses[4948] = {op="legacyAdd", amount=-20}
bonuses[4949] = {op="legacyAdd", amount=-10}
bonuses[4990] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[5036] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[5117] = {op="legacyAdd", amount=-15}
bonuses[5118] = {op="legacyAdd", amount=-5}
bonuses[5130] = {op="scale", curveId=41, contentTuningKey="stat", sortPriority=1}
bonuses[5131] = {op="scale", curveId=42, contentTuningKey="stat", sortPriority=1}
bonuses[5132] = {op="scale", curveId=41, contentTuningKey="stat", sortPriority=1}
bonuses[5133] = {op="scale", curveId=43, contentTuningKey="stat", sortPriority=1}
bonuses[5134] = {op="scale", curveId=41, contentTuningKey="stat", sortPriority=1}
bonuses[5261] = {op="set", itemLevel=40, sortPriority=1}
bonuses[5262] = {op="scale", curveId=44, contentTuningKey="stat", sortPriority=1}
bonuses[5372] = {op="scale", curveId=45, contentTuningKey="stat", sortPriority=1}
bonuses[5375] = {op="legacyAdd", amount=25}
bonuses[5384] = {op="scale", curveId=46, contentTuningKey="stat", sortPriority=1}
bonuses[5385] = {op="scale", curveId=47, contentTuningKey="stat", sortPriority=1}
bonuses[5463] = {op="scale", curveId=48, contentTuningKey="stat", sortPriority=1}
bonuses[5470] = {op="scale", curveId=49, contentTuningKey="stat", sortPriority=1}
bonuses[5471] = {op="scale", curveId=50, contentTuningKey="stat", sortPriority=1}
bonuses[5472] = {op="scale", curveId=41, contentTuningKey="stat", sortPriority=1}
bonuses[5473] = {op="scale", curveId=41, contentTuningKey="stat", sortPriority=1}
for i = 5474, 5476 do bonuses[i] = {op="scale", curveId=i-5423, contentTuningKey="stat", sortPriority=1} end
bonuses[5477] = {op="scale", curveId=45, contentTuningKey="stat", sortPriority=1}
bonuses[5483] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[5484] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[5485] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[5486] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5487] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5488] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5489] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5490] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5491] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5492] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5493] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5494] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5495] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[5496] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[5497] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[5498] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5499] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5500] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5501] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5502] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5503] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5504] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[5505] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5506] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=60, sortPriority=1}
bonuses[5507] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=61, sortPriority=1}
bonuses[5508] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=58, sortPriority=1}
bonuses[5509] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=57, sortPriority=1}
bonuses[5510] = {op="set", itemLevel=43, sortPriority=1}
bonuses[5511] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
for i = 5512, 5515 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1} end
bonuses[5516] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5517] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5518] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5519] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5520] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5521] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5522] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5523] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5524] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5525] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
bonuses[5526] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1}
for i = 5528, 5533 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=52, sortPriority=1} end
bonuses[5534] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5535] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5536] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5537] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5538] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5539] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5540] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5541] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5542] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5543] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5544] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5545] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5546] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5547] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5548] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5549] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5550] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5551] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5552] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5553] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5554] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5555] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5556] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5557] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
for i = 5558, 5560 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
for i = 5561, 5563 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1} end
bonuses[5564] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5565] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5566] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5567] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5568] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5569] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
for i = 5570, 5572 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1} end
bonuses[5573] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5574] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5575] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5576] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5577] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5578] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5579] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5580] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5581] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5582] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5583] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5584] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5585] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5586] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5587] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5588] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5589] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5590] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5591] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5592] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5593] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5594] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
for i = 5595, 5597 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
bonuses[5598] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5599] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
bonuses[5600] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=42, sortPriority=1}
for i = 5601, 5603 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1} end
bonuses[5604] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5605] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
for i = 5606, 5609 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
bonuses[5610] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5611] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5612] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5613] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5614] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5615] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5616] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5617] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5618] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5619] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5620] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5621] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5622] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5623] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5624] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5625] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5626] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5627] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5628] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5629] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5630] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5631] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5632] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5633] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5634] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5635] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5636] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5637] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5638] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5639] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5640] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5641] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5642] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5643] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5644] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5645] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5646] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5647] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5648] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5649] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5650] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5651] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5652] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
for i = 5653, 5655 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1} end
bonuses[5656] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5657] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5658] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5659] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5660] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5661] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5662] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5663] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5664] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5665] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5666] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5667] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5668] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5669] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5670] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5671] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5672] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5673] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5674] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5675] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5676] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5677] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5678] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5679] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5680] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5681] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5682] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5683] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5684] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5685] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5686] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5687] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5688] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5689] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5690] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5691] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5692] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5693] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5694] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5695] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5696] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5697] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5698] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5699] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5700] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5701] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5702] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5703] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5704] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5705] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5706] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5707] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5708] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5709] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5710] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5711] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5712] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5713] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5714] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5715] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
for i = 5716, 5718 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
bonuses[5719] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5720] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5721] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5722] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5723] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5724] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5725] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5726] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5727] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=4, sortPriority=1}
bonuses[5728] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5729] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5730] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5731] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5732] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5733] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=78, sortPriority=1}
bonuses[5734] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5735] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5736] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5737] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5738] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5739] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=2, sortPriority=1}
bonuses[5740] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5741] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5742] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5743] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5744] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5745] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5746] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5747] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5748] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5749] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5750] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5751] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5752] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5753] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5754] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5755] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
for i = 5756, 5758 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1} end
bonuses[5759] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
for i = 5760, 5762 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
bonuses[5763] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=10, sortPriority=1}
bonuses[5764] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
for i = 5765, 5767 do bonuses[i] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1} end
bonuses[5768] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5769] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[5770] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5771] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5772] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=13, sortPriority=1}
bonuses[5773] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5774] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5775] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=41, sortPriority=1}
bonuses[5776] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5777] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5778] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
bonuses[5779] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[5780] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[5781] = {op="scale", curveId=32, contentTuningKey="stat", contentTuningId=193, sortPriority=1}
bonuses[5782] = {op="scale", curveId=33, contentTuningKey="stat", contentTuningId=21, sortPriority=1}
for i = 5805, 5808 do bonuses[i] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2055, sortPriority=1} end
bonuses[5817] = {redirect=5805}
for i = 5846, 6245 do bonuses[i] = {op="legacyAdd", amount=i-5845} end
for i = 6272, 6286 do bonuses[i] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=50, indirect=true} end
for i = 6310, 6314 do bonuses[i] = {op="scale", curveId=i-6256, contentTuningKey="stat", sortPriority=1} end
bonuses[6315] = {op="scale", curveId=58, contentTuningKey="stat", sortPriority=1}
for i = 6353, 6356 do bonuses[i] = {op="scale", curveId=i-6294, contentTuningKey="stat", sortPriority=1} end
bonuses[6416] = {redirect=4790}
bonuses[6423] = {op="scale", curveId=63, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
for i = 6424, 6432 do bonuses[i] = {op="scale", curveId=i-6361, contentTuningKey="stat", contentTuningId=1, sortPriority=1} end
bonuses[6499] = {op="scale", curveId=0, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6500] = {op="scale", curveId=0, offset=1, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6577] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=50, indirect=true}
for i = 6580, 6603 do bonuses[i] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=50, indirect=true} end
bonuses[6654] = {op="scale", curveId=73, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6655] = {redirect=6654}
bonuses[6656] = {op="scale", curveId=73, offset=-6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6657] = {redirect=6656}
bonuses[6658] = {op="scale", curveId=73, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6659] = {redirect=6658}
bonuses[6660] = {op="scale", curveId=73, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6661] = {redirect=6660}
bonuses[6662] = {op="set", itemLevel=75, sortPriority=1}
bonuses[6663] = {redirect=6664}
bonuses[6664] = {op="scale", curveId=73, offset=-3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6665] = {op="legacyAdd", amount=40}
bonuses[6666] = {op="legacyAdd", amount=60}
bonuses[6667] = {op="legacyAdd", amount=150}
bonuses[6668] = {op="legacyAdd", amount=162}
bonuses[6682] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6683] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6691] = {redirect=6682}
bonuses[6694] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[6695] = {redirect=6683}
bonuses[6696] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[6697] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[6700] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[6703] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
for i = 6706, 6708 do bonuses[i] = {op="scale", curveId=i-6632, contentTuningKey="stat", sortPriority=1} end
bonuses[6709] = {op="scale", curveId=0, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6710] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6711] = {op="set", itemLevel=6, sortPriority=1}
bonuses[6712] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6713] = {op="scale", curveId=0, offset=-3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6751] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[6752] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
for i = 6753, 6755 do bonuses[i] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=9336-i, sortPriority=1} end
bonuses[6756] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=288, sortPriority=1}
bonuses[6757] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[6759] = {op="scale", curveId=35, contentTuningKey="stat", sortPriority=1}
bonuses[6760] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[6761] = {op="set", itemLevel=90, sortPriority=1}
bonuses[6762] = {op="set", itemLevel=108, sortPriority=1}
bonuses[6763] = {op="set", itemLevel=120, sortPriority=1}
bonuses[6764] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[6765] = {op="set", itemLevel=32, sortPriority=1}
for i = 6770, 6772 do bonuses[i] = {op="scale", curveId=i-6693, contentTuningKey="stat", sortPriority=1} end
for i = 6802, 6804 do bonuses[i] = {op="scale", curveId=i-6725, contentTuningKey="stat", sortPriority=1} end
bonuses[6813] = {op="scale", curveId=0, offset=1, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6815] = {op="set", itemLevel=20, sortPriority=1}
for i = 6816, 6818 do bonuses[i] = {op="scale", curveId=i-6736, contentTuningKey="stat", sortPriority=1} end
for i = 6819, 6821 do bonuses[i] = {op="scale", curveId=i-6739, contentTuningKey="stat", sortPriority=1} end
bonuses[6822] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[6825] = {op="scale", curveId=73, contentTuningKey="stat", sortPriority=1}
bonuses[6826] = {op="scale", curveId=83, contentTuningKey="stat", sortPriority=1}
bonuses[6884] = {op="set", itemLevel=109, sortPriority=1}
bonuses[6885] = {op="set", itemLevel=99, sortPriority=1}
bonuses[6886] = {op="set", itemLevel=129, sortPriority=1}
bonuses[6887] = {op="set", itemLevel=111, sortPriority=1}
bonuses[6888] = {op="set", itemLevel=117, sortPriority=1}
bonuses[6889] = {op="set", itemLevel=150, sortPriority=1}
bonuses[6890] = {op="set", itemLevel=129, sortPriority=1}
bonuses[6891] = {op="set", itemLevel=165, sortPriority=1}
bonuses[6892] = {op="set", itemLevel=165, sortPriority=1}
bonuses[6893] = {op="set", itemLevel=151, sortPriority=1}
bonuses[6901] = {op="scale", curveId=74, contentTuningKey="stat", sortPriority=1}
bonuses[6902] = {op="scale", curveId=76, contentTuningKey="stat", sortPriority=1}
bonuses[6903] = {op="set", itemLevel=187, sortPriority=1}
bonuses[6907] = {op="scale", curveId=84, contentTuningKey="stat", sortPriority=1}
bonuses[6908] = {op="scale", curveId=84, contentTuningKey="stat", sortPriority=1}
bonuses[6909] = {op="scale", curveId=86, contentTuningKey="stat", sortPriority=1}
bonuses[6910] = {op="scale", curveId=86, contentTuningKey="stat", sortPriority=1}
bonuses[6911] = {op="scale", curveId=85, contentTuningKey="stat", sortPriority=1}
bonuses[6912] = {op="scale", curveId=85, contentTuningKey="stat", sortPriority=1}
bonuses[6913] = {op="scale", curveId=87, contentTuningKey="stat", sortPriority=1}
bonuses[6914] = {op="scale", curveId=87, contentTuningKey="stat", sortPriority=1}
bonuses[6938] = {op="set", itemLevel=138, sortPriority=1}
bonuses[7019] = {op="set", itemLevel=160, sortPriority=1}
bonuses[7127] = {op="set", itemLevel=200, sortPriority=1}
bonuses[7129] = {op="set", itemLevel=6, sortPriority=1}
bonuses[7144] = {op="scale", curveId=88, contentTuningKey="stat", sortPriority=1}
bonuses[7164] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[7165] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[7166] = {redirect=7168}
bonuses[7168] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[7169] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=45, indirect=true}
bonuses[7170] = {redirect=7164}
bonuses[7171] = {redirect=7168}
bonuses[7173] = {op="scale", curveId=76, contentTuningKey="stat", sortPriority=1}
bonuses[7174] = {op="set", itemLevel=168, sortPriority=1}
bonuses[7175] = {op="scale", curveId=0, offset=3, midnight="set", priority=1, defaultLevel=15, sortPriority=2}
bonuses[7176] = {op="scale", curveId=0, offset=3, midnight="set", priority=1, defaultLevel=25, sortPriority=2}
for i = 7177, 7179 do bonuses[i] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=10*i-71735, sortPriority=2} end
bonuses[7180] = {op="set", itemLevel=55}
bonuses[7181] = {op="set", itemLevel=129, sortPriority=1}
bonuses[7182] = {op="set", itemLevel=151, sortPriority=1}
bonuses[7183] = {op="set", itemLevel=200, sortPriority=1}
bonuses[7185] = {op="set", itemLevel=168, sortPriority=1}
bonuses[7191] = {op="scale", curveId=89, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[7192] = {redirect=6710}
bonuses[7202] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[7215] = {op="set", itemLevel=226, sortPriority=1}
bonuses[7217] = {op="scale", curveId=78, contentTuningKey="stat", sortPriority=1}
bonuses[7220] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=176, sortPriority=1}
bonuses[7222] = {op="scale", curveId=90, contentTuningKey="stat", sortPriority=1}
bonuses[7223] = {op="set", itemLevel=150, sortPriority=1}
bonuses[7224] = {op="set", itemLevel=87, sortPriority=1}
bonuses[7238] = {op="set", itemLevel=164, sortPriority=1}
bonuses[7239] = {op="set", itemLevel=181, sortPriority=1}
bonuses[7240] = {op="set", itemLevel=200, sortPriority=1}
bonuses[7241] = {op="set", itemLevel=180, sortPriority=1}
bonuses[7247] = {op="scale", curveId=91, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[7250] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=60, indirect=true}
for i = 7256, 7304 do bonuses[i] = {redirect=13539} end
bonuses[7452] = {op="set", itemLevel=160, sortPriority=1}
bonuses[7453] = {op="set", itemLevel=163, sortPriority=1}
bonuses[7461] = {op="set", itemLevel=230, sortPriority=1}
bonuses[7464] = {op="scale", curveId=92, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[7465] = {op="scale", curveId=93, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
for i = 7479, 7527 do bonuses[i] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=60, indirect=true} end
for i = 7692, 7697 do bonuses[i] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=60, indirect=true} end
for i = 7753, 7755 do bonuses[i] = {op="scale", curveId=0, offset=i-7742, midnight="set", defaultLevel=60, sortPriority=2} end
bonuses[7880] = {op="set", itemLevel=233, sortPriority=1}
bonuses[7881] = {op="set", itemLevel=262, sortPriority=1}
bonuses[7883] = {op="scale", curveId=94, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[7890] = {redirect=6712}
bonuses[7915] = {op="scale", curveId=95, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[7916] = {op="scale", curveId=96, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
for i = 7920, 7923 do bonuses[i] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2177, sortPriority=1} end
bonuses[7924] = {redirect=7920}
bonuses[7962] = {op="legacyAdd", amount=3}
bonuses[7963] = {redirect=4790}
bonuses[7964] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[7965] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[7966] = {redirect=6656}
bonuses[7968] = {redirect=6654}
bonuses[7970] = {redirect=6658}
bonuses[7972] = {redirect=6660}
bonuses[7978] = {op="scale", curveId=36, contentTuningKey="stat", sortPriority=1}
bonuses[8109] = {redirect=13559}
for i = 8111, 8115 do bonuses[i] = {redirect=13559} end
bonuses[8147] = {op="scale", curveId=99, contentTuningKey="stat", sortPriority=1}
bonuses[8165] = {op="scale", curveId=100, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[8170] = {op="scale", curveId=97, contentTuningKey="stat", contentTuningId=2078, sortPriority=1}
bonuses[8171] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8172] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
for i = 8290, 8338 do bonuses[i] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=60, indirect=true} end
bonuses[8402] = {op="scale", curveId=95, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[8403] = {op="scale", curveId=102, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[8760] = {op="scale", curveId=101, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[8768] = {redirect=4790}
bonuses[8769] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8770] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8771] = {redirect=4790}
bonuses[8772] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8773] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8774] = {redirect=6682}
bonuses[8775] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8776] = {redirect=6682}
bonuses[8777] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8778] = {redirect=6682}
bonuses[8779] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[8785] = {op="set", itemLevel=400}
for i = 8798, 8802 do bonuses[i] = {op="add", amount=i-8798, midnight="force", sortPriority=4} end
for i = 8803, 8807 do bonuses[i] = {op="add", amount=i-8803, midnight="force", sortPriority=4} end
bonuses[8809] = {redirect=13508}
bonuses[8837] = {redirect=13510}
bonuses[8839] = {redirect=13509}
bonuses[8841] = {redirect=13511}
bonuses[8843] = {redirect=13512}
bonuses[8844] = {redirect=13513}
bonuses[8851] = {redirect=13510}
bonuses[8903] = {op="set", itemLevel=1}
bonuses[8935] = {op="scale", curveId=103, contentTuningKey="stat", sortPriority=1}
bonuses[8936] = {op="scale", curveId=104, contentTuningKey="stat", sortPriority=1}
for i = 8961, 8964 do bonuses[i] = {redirect=13470} end
for i = 8965, 8968 do bonuses[i] = {redirect=13471} end
for i = 8969, 8972 do bonuses[i] = {redirect=13472} end
bonuses[8973] = {redirect=13473}
bonuses[8974] = {redirect=13473}
bonuses[8979] = {redirect=6682}
bonuses[8980] = {op="set", itemLevel=382, sortPriority=1}
bonuses[8981] = {op="set", itemLevel=392, sortPriority=1}
bonuses[8982] = {op="set", itemLevel=395, sortPriority=1}
bonuses[8983] = {redirect=13508}
bonuses[8984] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
for i = 8985, 8990 do bonuses[i] = {redirect=13509} end
bonuses[8991] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=331, sortPriority=1}
bonuses[8994] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[8995] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[8996] = {op="scale", curveId=105, contentTuningKey="stat", contentTuningId=631, sortPriority=1}
bonuses[8997] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[8998] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=35, sortPriority=2}
for i = 8999, 9006 do bonuses[i] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=70, indirect=true} end
bonuses[9007] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[9008] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=70, indirect=true}
bonuses[9009] = {redirect=13508}
bonuses[9010] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9011] = {op="scale", curveId=105, contentTuningKey="stat", contentTuningId=168, sortPriority=1}
bonuses[9012] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9013] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=176, sortPriority=1}
bonuses[9014] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[9015] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[9016] = {op="scale", curveId=105, contentTuningKey="stat", contentTuningId=176, sortPriority=1}
bonuses[9017] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[9018] = {op="scale", curveId=0, offset=7, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[9019] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=335, sortPriority=1}
bonuses[9020] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[9021] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[9022] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=290, sortPriority=1}
bonuses[9023] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=50, sortPriority=2}
bonuses[9024] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=50, sortPriority=2}
bonuses[9025] = {op="scale", curveId=78, contentTuningKey="stat", contentTuningId=742, sortPriority=1}
bonuses[9026] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[9027] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[9029] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=30, sortPriority=2}
for i = 9031, 9033 do bonuses[i] = {op="scale", curveId=0, offset=2*i-18052, midnight="set", defaultLevel=30, sortPriority=2} end
for i = 9034, 9037 do bonuses[i] = {op="scale", curveId=0, offset=2*i-18060, midnight="set", defaultLevel=30, sortPriority=2} end
for i = 9038, 9043 do bonuses[i] = {op="scale", curveId=0, offset=i-9030, midnight="set", defaultLevel=30, sortPriority=2} end
for i = 9044, 9047 do bonuses[i] = {op="scale", curveId=0, offset=i-9032, midnight="set", defaultLevel=30, sortPriority=2} end
for i = 9048, 9051 do bonuses[i] = {op="scale", curveId=0, offset=i-9034, midnight="set", defaultLevel=30, sortPriority=2} end
for i = 9052, 9058 do bonuses[i] = {op="scale", curveId=0, offset=i-9044, midnight="set", defaultLevel=35, sortPriority=2} end
bonuses[9059] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9060] = {op="scale", curveId=0, offset=9, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9062] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9063] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9064] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=35, sortPriority=2}
for i = 9065, 9067 do bonuses[i] = {op="scale", curveId=0, offset=i-9055, midnight="set", defaultLevel=35, sortPriority=2} end
bonuses[9068] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9069] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=35, sortPriority=2}
for i = 9070, 9073 do bonuses[i] = {op="scale", curveId=0, offset=i-9058, midnight="set", defaultLevel=35, sortPriority=2} end
for i = 9074, 9077 do bonuses[i] = {op="scale", curveId=0, offset=i-9066, midnight="set", defaultLevel=40, sortPriority=2} end
for i = 9078, 9081 do bonuses[i] = {op="scale", curveId=0, offset=i-9068, midnight="set", defaultLevel=40, sortPriority=2} end
for i = 9082, 9085 do bonuses[i] = {op="scale", curveId=0, offset=i-9074, midnight="set", defaultLevel=45, sortPriority=2} end
for i = 9086, 9089 do bonuses[i] = {op="scale", curveId=0, offset=i-9076, midnight="set", defaultLevel=45, sortPriority=2} end
for i = 9090, 9093 do bonuses[i] = {op="scale", curveId=0, offset=i-9078, midnight="set", defaultLevel=45, sortPriority=2} end
for i = 9094, 9097 do bonuses[i] = {op="scale", curveId=0, offset=i-9080, midnight="set", defaultLevel=45, sortPriority=2} end
for i = 9098, 9101 do bonuses[i] = {op="scale", curveId=0, offset=i-9090, midnight="set", defaultLevel=50, sortPriority=2} end
for i = 9102, 9105 do bonuses[i] = {op="scale", curveId=0, offset=i-9092, midnight="set", defaultLevel=50, sortPriority=2} end
for i = 9106, 9109 do bonuses[i] = {op="scale", curveId=0, offset=i-9094, midnight="set", defaultLevel=50, sortPriority=2} end
for i = 9110, 9113 do bonuses[i] = {op="scale", curveId=0, offset=i-9096, midnight="set", defaultLevel=50, sortPriority=2} end
for i = 9114, 9117 do bonuses[i] = {op="scale", curveId=0, offset=i-9106, midnight="set", defaultLevel=60, sortPriority=2} end
for i = 9118, 9121 do bonuses[i] = {op="scale", curveId=0, offset=i-9108, midnight="set", defaultLevel=60, sortPriority=2} end
for i = 9122, 9125 do bonuses[i] = {op="scale", curveId=0, offset=i-9110, midnight="set", defaultLevel=60, sortPriority=2} end
bonuses[9129] = {redirect=6658}
bonuses[9130] = {redirect=13473}
bonuses[9156] = {op="scale", curveId=6, contentTuningKey="stat", contentTuningId=2078, sortPriority=1}
bonuses[9232] = {op="scale", curveId=106, contentTuningKey="stat", sortPriority=1}
bonuses[9233] = {op="scale", curveId=107, contentTuningKey="stat", sortPriority=1}
bonuses[9234] = {op="set", itemLevel=424}
bonuses[9236] = {op="scale", curveId=108, contentTuningKey="stat", sortPriority=1}
bonuses[9263] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9264] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9265] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9266] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9267] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9268] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9269] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9270] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9271] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9272] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=40, sortPriority=2}
for i = 9294, 9301 do bonuses[i] = {redirect=13474} end
for i = 9302, 9309 do bonuses[i] = {redirect=13475} end
bonuses[9310] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9311] = {redirect=13489}
bonuses[9312] = {redirect=13488}
for i = 9313, 9320 do bonuses[i] = {redirect=13476} end
for i = 9321, 9325 do bonuses[i] = {redirect=13477} end
for i = 9327, 9329 do bonuses[i] = {redirect=13477} end
for i = 9330, 9337 do bonuses[i] = {redirect=13478} end
bonuses[9351] = {op="set", itemLevel=408}
bonuses[9354] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2668, sortPriority=1}
bonuses[9355] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9356] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9357] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=30, sortPriority=2}
bonuses[9358] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=35, sortPriority=2}
bonuses[9359] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[9362] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[9363] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[9365] = {op="scale", curveId=0, offset=9, midnight="set", defaultLevel=70, indirect=true}
bonuses[9366] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=70, indirect=true}
bonuses[9367] = {op="set", itemLevel=411}
bonuses[9368] = {op="legacyAdd", amount=7}
bonuses[9369] = {op="legacyAdd", amount=13}
bonuses[9370] = {op="scale", curveId=0, contentTuningKey="stat", sortPriority=1}
bonuses[9371] = {redirect=13476}
bonuses[9372] = {op="set", itemLevel=395}
bonuses[9373] = {op="set", itemLevel=424}
bonuses[9376] = {op="set", itemLevel=434}
for i = 9380, 9385 do bonuses[i] = {redirect=13479} end
for i = 9401, 9405 do bonuses[i] = {op="add", amount=i-9401, midnight="force", sortPriority=4} end
bonuses[9406] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[9407] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[9419] = {redirect=13489}
bonuses[9420] = {redirect=13488}
for i = 9421, 9425 do bonuses[i] = {redirect=13489} end
bonuses[9426] = {op="scale", curveId=0, offset=9, midnight="set", defaultLevel=70, indirect=true}
for i = 9427, 9434 do bonuses[i] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, indirect=true} end
for i = 9443, 9445 do bonuses[i] = {op="scale", curveId=0, contentTuningKey="stat", contentTuningId=2668, sortPriority=1} end
for i = 9455, 9461 do bonuses[i] = {op="legacyAdd", amount=i-9054} end
for i = 9464, 9466 do bonuses[i] = {op="legacyAdd", amount=i-9056} end
for i = 9467, 9476 do bonuses[i] = {op="legacyAdd", amount=9066-i} end
bonuses[9492] = {redirect=6682}
bonuses[9498] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, indirect=true}
bonuses[9520] = {op="scale", curveId=109, contentTuningKey="stat", sortPriority=1}
bonuses[9527] = {redirect=13515}
bonuses[9528] = {redirect=13514}
bonuses[9533] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[9534] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[9535] = {redirect=6682}
for i = 9536, 9543 do bonuses[i] = {redirect=13481} end
for i = 9544, 9551 do bonuses[i] = {redirect=13480} end
for i = 9552, 9559 do bonuses[i] = {redirect=13483} end
for i = 9560, 9567 do bonuses[i] = {redirect=13482} end
for i = 9568, 9572 do bonuses[i] = {redirect=13484} end
for i = 9573, 9578 do bonuses[i] = {redirect=13485} end
bonuses[9579] = {redirect=13514}
bonuses[9580] = {redirect=13515}
bonuses[9581] = {redirect=13484}
bonuses[9585] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=70, indirect=true}
bonuses[9598] = {op="scale", curveId=110, contentTuningKey="stat", contentTuningId=2078, sortPriority=1}
bonuses[9601] = {op="scale", curveId=110, contentTuningKey="stat", contentTuningId=2078, sortPriority=1}
for i = 9623, 9626 do bonuses[i] = {op="add", amount=3*i-28869, midnight="force", sortPriority=4} end
bonuses[9627] = {op="add", amount=13, midnight="force", sortPriority=4}
for i = 9628, 9630 do bonuses[i] = {op="add", amount=6*i-57768, midnight="force", sortPriority=4} end
bonuses[9631] = {op="add", amount=19, midnight="force", sortPriority=4}
bonuses[9632] = {op="add", amount=26, midnight="force", sortPriority=4}
bonuses[9637] = {op="scale", curveId=111, contentTuningKey="stat", sortPriority=1}
for i = 9834, 9853 do bonuses[i] = {op="legacyAdd", amount=i-9423} end
for i = 9854, 9873 do bonuses[i] = {op="legacyAdd", amount=9443-i} end
for i = 9874, 9893 do bonuses[i] = {op="legacyAdd", amount=i-9443} end
for i = 9894, 9913 do bonuses[i] = {op="legacyAdd", amount=9463-i} end
bonuses[9914] = {redirect=13515}
bonuses[9915] = {redirect=13515}
for i = 9918, 10067 do bonuses[i] = {op="legacyAdd", amount=i-9467} end
for i = 10068, 10217 do bonuses[i] = {op="legacyAdd", amount=9617-i} end
bonuses[10222] = {op="scale", curveId=152, offset=0, midnight="squish", priority=70, defaultLevel=593, sortPriority=2}
bonuses[10249] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=70, indirect=true}
bonuses[10250] = {redirect=13517}
bonuses[10251] = {redirect=13516}
for i = 10300, 10304 do bonuses[i] = {op="scale", curveId=i-10188, contentTuningKey="stat", contentTuningId=623, sortPriority=1} end
for i = 10305, 10312 do bonuses[i] = {redirect=13495} end
for i = 10313, 10320 do bonuses[i] = {redirect=13496} end
for i = 10321, 10328 do bonuses[i] = {redirect=13497} end
for i = 10329, 10334 do bonuses[i] = {redirect=13498} end
for i = 10335, 10340 do bonuses[i] = {redirect=13499} end
for i = 10341, 10348 do bonuses[i] = {redirect=13500} end
bonuses[10349] = {op="set", itemLevel=1, midnight="set", priority=80, sortPriority=2}
bonuses[10350] = {op="set", itemLevel=362, sortPriority=1}
bonuses[10360] = {op="set", itemLevel=362, sortPriority=1}
bonuses[10361] = {op="set", itemLevel=362, sortPriority=1}
bonuses[10362] = {op="scale", curveId=124, contentTuningKey="stat", sortPriority=1}
bonuses[10363] = {op="scale", curveId=125, contentTuningKey="stat", sortPriority=1}
bonuses[10364] = {op="scale", curveId=122, contentTuningKey="stat", sortPriority=1}
bonuses[10365] = {op="scale", curveId=123, contentTuningKey="stat", sortPriority=1}
bonuses[10366] = {op="scale", curveId=120, contentTuningKey="stat", sortPriority=1}
bonuses[10367] = {op="scale", curveId=121, contentTuningKey="stat", sortPriority=1}
bonuses[10382] = {op="scale", curveId=117, offset=0, midnight="squish", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[10385] = {op="scale", curveId=118, contentTuningKey="stat", sortPriority=1}
for i = 10407, 10410 do bonuses[i] = {redirect=13496} end
for i = 10411, 10414 do bonuses[i] = {redirect=13498} end
for i = 10415, 10418 do bonuses[i] = {redirect=13499} end
bonuses[10421] = {op="scale", curveId=152, offset=0, midnight="squish", priority=100, defaultLevel=593, sortPriority=2}
bonuses[10426] = {redirect=6682}
bonuses[10465] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
for i = 10490, 10493 do bonuses[i] = {redirect=13496} end
for i = 10494, 10497 do bonuses[i] = {redirect=13498} end
for i = 10498, 10503 do bonuses[i] = {redirect=13499} end
bonuses[10522] = {redirect=13516}
bonuses[10523] = {redirect=13517}
bonuses[10827] = {op="scale", curveId=152, offset=0, midnight="squish", priority=100, defaultLevel=538, sortPriority=2}
bonuses[10828] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=106, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[10829] = {op="scale", curveId=152, offset=0, midnight="squish", priority=100, defaultLevel=590, sortPriority=2}
bonuses[10840] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=545, sortPriority=2}
bonuses[10841] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=558, sortPriority=2}
bonuses[10842] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=597, sortPriority=2}
bonuses[10845] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[10861] = {redirect=6682}
bonuses[10862] = {op="scale", curveId=0, offset=3, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[10882] = {op="scale", curveId=0, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, indirect=true}
bonuses[10883] = {redirect=6682}
bonuses[10889] = {redirect=13517}
bonuses[10890] = {redirect=13517}
for i = 10951, 10964 do bonuses[i] = {redirect=13505} end
bonuses[11037] = {op="scale", curveId=126, contentTuningKey="stat", sortPriority=1}
bonuses[11053] = {op="set", itemLevel=1, sortPriority=1}
bonuses[11054] = {op="scale", curveId=118, contentTuningKey="stat", sortPriority=1}
bonuses[11055] = {op="scale", curveId=119, contentTuningKey="stat", sortPriority=1}
bonuses[11061] = {op="scale", curveId=118, contentTuningKey="stat", sortPriority=1}
bonuses[11062] = {op="scale", curveId=98, contentTuningKey="stat", sortPriority=1}
bonuses[11069] = {op="scale", curveId=127, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
for i = 11070, 11072 do bonuses[i] = {op="scale", curveId=i-10943, contentTuningKey="stat", contentTuningId=1, sortPriority=1} end
bonuses[11073] = {op="scale", curveId=130, contentTuningKey="stat", contentTuningId=2181, sortPriority=1}
bonuses[11074] = {op="scale", curveId=131, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[11083] = {redirect=4790}
bonuses[11085] = {op="scale", curveId=6, contentTuningKey="stat", sortPriority=1}
bonuses[11128] = {op="scale", curveId=117, contentTuningKey="stat", sortPriority=1}
bonuses[11142] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=577, sortPriority=2}
bonuses[11143] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=606, sortPriority=2}
bonuses[11144] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=623, sortPriority=2}
bonuses[11190] = {op="scale", curveId=132, contentTuningKey="stat", sortPriority=1}
bonuses[11191] = {op="scale", curveId=118, contentTuningKey="stat", sortPriority=1}
bonuses[11225] = {op="scale", curveId=133, contentTuningKey="stat", sortPriority=1}
bonuses[11227] = {redirect=4790}
bonuses[11229] = {op="scale", curveId=134, contentTuningKey="stat", sortPriority=1}
bonuses[11295] = {op="scale", curveId=152, offset=0, midnight="squish", priority=100, defaultLevel=515, sortPriority=2}
bonuses[11297] = {op="scale", curveId=152, offset=0, midnight="squish", priority=100, defaultLevel=545, sortPriority=2}
bonuses[11306] = {op="scale", curveId=135, contentTuningKey="stat", sortPriority=1}
bonuses[11308] = {op="scale", curveId=132, contentTuningKey="stat", sortPriority=1}
bonuses[11309] = {op="scale", curveId=135, contentTuningKey="stat", sortPriority=1}
bonuses[11310] = {op="scale", curveId=135, contentTuningKey="stat", sortPriority=1}
bonuses[11318] = {op="set", itemLevel=545}
bonuses[11329] = {op="set", itemLevel=10, sortPriority=1}
bonuses[11330] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=545, sortPriority=2}
bonuses[11331] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=561, sortPriority=2}
bonuses[11332] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=65, sortPriority=2}
for i = 11334, 11337 do bonuses[i] = {op="scale", curveId=118, contentTuningKey="stat", contentTuningId=i-8336, sortPriority=1} end
bonuses[11338] = {op="set", itemLevel=554}
for i = 11341, 11640 do bonuses[i] = {op="legacyAdd", amount=i-10740} end
for i = 11641, 11940 do bonuses[i] = {op="legacyAdd", amount=11040-i} end
bonuses[12015] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=571, sortPriority=2}
bonuses[12016] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=584, sortPriority=2}
bonuses[12017] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=623, sortPriority=2}
bonuses[12024] = {op="set", itemLevel=593}
bonuses[12037] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=597, sortPriority=2}
bonuses[12038] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=610, sortPriority=2}
bonuses[12039] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1000, defaultLevel=649, sortPriority=2}
bonuses[12040] = {op="scale", curveId=152, offset=0, midnight="squish", priority=70, defaultLevel=632, sortPriority=2}
bonuses[12041] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=616, sortPriority=2}
bonuses[12042] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=645, sortPriority=2}
bonuses[12043] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=662, sortPriority=2}
for i = 12047, 12049 do bonuses[i] = {op="scale", curveId=i-11911, contentTuningKey="stat", sortPriority=1} end
bonuses[12050] = {op="scale", curveId=152, offset=0, midnight="squish", priority=70, defaultLevel=678, sortPriority=2}
bonuses[12051] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=662, sortPriority=2}
bonuses[12052] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=691, sortPriority=2}
bonuses[12053] = {op="scale", curveId=152, offset=0, midnight="squish", priority=65, defaultLevel=707, sortPriority=2}
bonuses[12057] = {op="scale", curveId=117, contentTuningKey="stat", sortPriority=1}
bonuses[12058] = {op="scale", curveId=118, contentTuningKey="stat", sortPriority=1}
bonuses[12066] = {op="scale", curveId=152, offset=0, midnight="set", priority=70, defaultLevel=246, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12067] = {op="scale", curveId=139, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[12068] = {op="scale", curveId=139, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[12070] = {op="scale", curveId=119, contentTuningKey="stat", sortPriority=1}
bonuses[12096] = {op="scale", curveId=138, contentTuningKey="stat", sortPriority=1}
bonuses[12180] = {op="scale", curveId=117, contentTuningKey="stat", sortPriority=1}
bonuses[12214] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=246, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12245] = {op="scale", curveId=152, offset=0, midnight="set", priority=3000, defaultLevel=259, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12247] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=201, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12249] = {op="scale", curveId=159, offset=6, midnight="set", priority=100, defaultLevel=85, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12252] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=180, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12253] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=206, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12263] = {op="scale", curveId=140, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[12264] = {op="scale", curveId=141, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[12265] = {op="set", itemLevel=642, midnight="squish", sortPriority=3}
bonuses[12266] = {op="set", itemLevel=645, midnight="squish", sortPriority=3}
for i = 12267, 12270 do bonuses[i] = {op="set", itemLevel=3*i-36152, midnight="squish", sortPriority=3} end
bonuses[12271] = {op="set", itemLevel=662, midnight="squish", sortPriority=3}
bonuses[12272] = {op="set", itemLevel=665, midnight="squish", sortPriority=3}
bonuses[12274] = {op="set", itemLevel=655, midnight="squish", sortPriority=3}
bonuses[12275] = {op="set", itemLevel=658, midnight="squish", sortPriority=3}
for i = 12276, 12279 do bonuses[i] = {op="set", itemLevel=3*i-36166, midnight="squish", sortPriority=3} end
bonuses[12280] = {op="set", itemLevel=675, midnight="squish", sortPriority=3}
bonuses[12281] = {op="set", itemLevel=678, midnight="squish", sortPriority=3}
bonuses[12282] = {op="set", itemLevel=668, midnight="squish", sortPriority=3}
bonuses[12283] = {op="set", itemLevel=671, midnight="squish", sortPriority=3}
for i = 12284, 12287 do bonuses[i] = {op="set", itemLevel=3*i-36177, midnight="squish", sortPriority=3} end
bonuses[12288] = {op="set", itemLevel=688, midnight="squish", sortPriority=3}
bonuses[12289] = {op="set", itemLevel=691, midnight="squish", sortPriority=3}
bonuses[12290] = {op="set", itemLevel=681, midnight="squish", sortPriority=3}
bonuses[12291] = {op="set", itemLevel=684, midnight="squish", sortPriority=3}
for i = 12292, 12295 do bonuses[i] = {op="set", itemLevel=3*i-36188, midnight="squish", sortPriority=3} end
bonuses[12296] = {op="set", itemLevel=701, midnight="squish", sortPriority=3}
bonuses[12297] = {op="set", itemLevel=704, midnight="squish", sortPriority=3}
bonuses[12350] = {op="set", itemLevel=694, midnight="squish", sortPriority=3}
bonuses[12351] = {op="set", itemLevel=697, midnight="squish", sortPriority=3}
for i = 12352, 12355 do bonuses[i] = {op="set", itemLevel=3*i-36355, midnight="squish", sortPriority=3} end
bonuses[12356] = {op="set", itemLevel=707, midnight="squish", sortPriority=3}
bonuses[12357] = {op="set", itemLevel=710, midnight="squish", sortPriority=3}
for i = 12358, 12361 do bonuses[i] = {op="set", itemLevel=3*i-36360, midnight="squish", sortPriority=3} end
for i = 12362, 12364 do bonuses[i] = {op="scale", curveId=i-12220, contentTuningKey="stat", sortPriority=1} end
bonuses[12367] = {op="set", itemLevel=639}
bonuses[12373] = {op="add", amount=6, sortPriority=4}
bonuses[12374] = {op="add", amount=3, sortPriority=4}
for i = 12377, 12379 do bonuses[i] = {op="scale", curveId=i-12232, contentTuningKey="stat", contentTuningId=1, sortPriority=1} end
bonuses[12380] = {op="scale", curveId=147, contentTuningKey="stat", contentTuningId=1, sortPriority=1}
bonuses[12403] = {op="scale", curveId=162, offset=0, midnight="set", defaultLevel=80, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12405] = {op="scale", curveId=162, offset=0, midnight="set", defaultLevel=82, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12406] = {op="scale", curveId=162, offset=0, midnight="set", defaultLevel=82, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12407] = {op="scale", curveId=162, offset=0, midnight="set", defaultLevel=87, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12408] = {op="scale", curveId=162, offset=0, midnight="set", defaultLevel=90, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12493, 12496 do bonuses[i] = {op="add", amount=3*i-37479, midnight="force", sortPriority=4} end
bonuses[12497] = {op="add", amount=13, midnight="force", sortPriority=4}
for i = 12498, 12500 do bonuses[i] = {op="add", amount=6*i-74988, midnight="force", sortPriority=4} end
bonuses[12501] = {op="add", amount=19, midnight="force", sortPriority=4}
bonuses[12502] = {op="add", amount=26, midnight="force", sortPriority=4}
bonuses[12503] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=232, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[12537] = {op="set", itemLevel=777, midnight="squish", sortPriority=3}
bonuses[12613] = {op="scale", curveId=148, contentTuningKey="stat", sortPriority=1}
bonuses[12614] = {op="scale", curveId=148, contentTuningKey="stat", sortPriority=1}
bonuses[12615] = {op="scale", curveId=150, contentTuningKey="stat", sortPriority=1}
bonuses[12616] = {op="scale", curveId=151, contentTuningKey="stat", sortPriority=1}
bonuses[12617] = {op="scale", curveId=153, contentTuningKey="stat", sortPriority=1}
bonuses[12704] = {op="set", itemLevel=245, midnight="set", sortPriority=3}
bonuses[12762] = {op="set", itemLevel=248, midnight="set", sortPriority=3}
for i = 12763, 12766 do bonuses[i] = {op="set", itemLevel=3*i-38037, midnight="set", sortPriority=3} end
bonuses[12767] = {op="set", itemLevel=265, midnight="set", sortPriority=3}
bonuses[12768] = {op="set", itemLevel=268, midnight="set", sortPriority=3}
bonuses[12769] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=220, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12770, 12773 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38086, contentTuningKey="scalingConfig", sortPriority=2} end
for i = 12774, 12776 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38085, contentTuningKey="scalingConfig", sortPriority=2} end
bonuses[12777] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=233, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12778, 12781 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38097, contentTuningKey="scalingConfig", sortPriority=2} end
for i = 12782, 12784 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38096, contentTuningKey="scalingConfig", sortPriority=2} end
bonuses[12785] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=246, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12786, 12789 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38108, contentTuningKey="scalingConfig", sortPriority=2} end
for i = 12790, 12792 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38107, contentTuningKey="scalingConfig", sortPriority=2} end
bonuses[12793] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=259, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12794, 12797 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38119, contentTuningKey="scalingConfig", sortPriority=2} end
for i = 12798, 12800 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38118, contentTuningKey="scalingConfig", sortPriority=2} end
bonuses[12801] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=272, contentTuningKey="scalingConfig", sortPriority=2}
for i = 12802, 12805 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38130, contentTuningKey="scalingConfig", sortPriority=2} end
for i = 12806, 12808 do bonuses[i] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=3*i-38129, contentTuningKey="scalingConfig", sortPriority=2} end
bonuses[12809] = {op="set", itemLevel=284, midnight="set", sortPriority=3}
bonuses[12810] = {op="set", itemLevel=287, midnight="set", sortPriority=3}
for i = 12811, 12814 do bonuses[i] = {op="set", itemLevel=3*i-38142, midnight="set", sortPriority=3} end
bonuses[12815] = {op="set", itemLevel=304, midnight="set", sortPriority=3}
bonuses[12816] = {op="set", itemLevel=307, midnight="set", sortPriority=3}
bonuses[12817] = {op="set", itemLevel=97, midnight="set", sortPriority=3}
bonuses[12818] = {op="set", itemLevel=300, midnight="set", sortPriority=3}
for i = 12819, 12822 do bonuses[i] = {op="set", itemLevel=3*i-38153, midnight="set", sortPriority=3} end
bonuses[12823] = {op="set", itemLevel=317, midnight="set", sortPriority=3}
bonuses[12824] = {op="set", itemLevel=320, midnight="set", sortPriority=3}
bonuses[12825] = {op="set", itemLevel=310, midnight="set", sortPriority=3}
bonuses[12826] = {op="set", itemLevel=313, midnight="set", sortPriority=3}
for i = 12827, 12830 do bonuses[i] = {op="set", itemLevel=3*i-38164, midnight="set", sortPriority=3} end
bonuses[12831] = {op="set", itemLevel=330, midnight="set", sortPriority=3}
bonuses[12832] = {op="set", itemLevel=333, midnight="set", sortPriority=3}
bonuses[12833] = {op="set", itemLevel=323, midnight="set", sortPriority=3}
bonuses[12834] = {op="set", itemLevel=326, midnight="set", sortPriority=3}
for i = 12835, 12838 do bonuses[i] = {op="set", itemLevel=3*i-38175, midnight="set", sortPriority=3} end
bonuses[12839] = {op="set", itemLevel=343, midnight="set", sortPriority=3}
bonuses[12840] = {op="set", itemLevel=346, midnight="set", sortPriority=3}
bonuses[12841] = {op="set", itemLevel=336, midnight="set", sortPriority=3}
bonuses[12842] = {op="set", itemLevel=339, midnight="set", sortPriority=3}
for i = 12843, 12846 do bonuses[i] = {op="set", itemLevel=3*i-38186, midnight="set", sortPriority=3} end
bonuses[12847] = {op="set", itemLevel=356, midnight="set", sortPriority=3}
bonuses[12848] = {op="set", itemLevel=359, midnight="set", sortPriority=3}
bonuses[12849] = {op="set", itemLevel=349, midnight="set", sortPriority=3}
bonuses[12850] = {op="set", itemLevel=352, midnight="set", sortPriority=3}
for i = 12851, 12854 do bonuses[i] = {op="set", itemLevel=3*i-38197, midnight="set", sortPriority=3} end
bonuses[12855] = {op="set", itemLevel=369, midnight="set", sortPriority=3}
bonuses[12856] = {op="set", itemLevel=372, midnight="set", sortPriority=3}
bonuses[12857] = {op="set", itemLevel=323, midnight="set", sortPriority=3}
bonuses[12858] = {op="set", itemLevel=326, midnight="set", sortPriority=3}
for i = 12859, 12862 do bonuses[i] = {op="set", itemLevel=3*i-38247, midnight="set", sortPriority=3} end
bonuses[12863] = {op="set", itemLevel=343, midnight="set", sortPriority=3}
bonuses[12864] = {op="set", itemLevel=346, midnight="set", sortPriority=3}
bonuses[12865] = {op="set", itemLevel=336, midnight="set", sortPriority=3}
bonuses[12866] = {op="set", itemLevel=339, midnight="set", sortPriority=3}
for i = 12867, 12870 do bonuses[i] = {op="set", itemLevel=3*i-38258, midnight="set", sortPriority=3} end
bonuses[12871] = {op="set", itemLevel=356, midnight="set", sortPriority=3}
bonuses[12872] = {op="set", itemLevel=359, midnight="set", sortPriority=3}
bonuses[12873] = {op="set", itemLevel=349, midnight="set", sortPriority=3}
bonuses[12874] = {op="set", itemLevel=352, midnight="set", sortPriority=3}
for i = 12875, 12878 do bonuses[i] = {op="set", itemLevel=3*i-38269, midnight="set", sortPriority=3} end
bonuses[12879] = {op="set", itemLevel=369, midnight="set", sortPriority=3}
bonuses[12880] = {op="set", itemLevel=372, midnight="set", sortPriority=3}
bonuses[12881] = {op="set", itemLevel=362, midnight="set", sortPriority=3}
bonuses[12882] = {op="set", itemLevel=365, midnight="set", sortPriority=3}
for i = 12883, 12886 do bonuses[i] = {op="set", itemLevel=3*i-38280, midnight="set", sortPriority=3} end
bonuses[12887] = {op="set", itemLevel=382, midnight="set", sortPriority=3}
bonuses[12888] = {op="set", itemLevel=385, midnight="set", sortPriority=3}
bonuses[12889] = {op="set", itemLevel=375, midnight="set", sortPriority=3}
bonuses[12890] = {op="set", itemLevel=378, midnight="set", sortPriority=3}
for i = 12891, 12894 do bonuses[i] = {op="set", itemLevel=3*i-38291, midnight="set", sortPriority=3} end
bonuses[12895] = {op="set", itemLevel=395, midnight="set", sortPriority=3}
bonuses[12896] = {op="set", itemLevel=398, midnight="set", sortPriority=3}
bonuses[12897] = {op="set", itemLevel=388, midnight="set", sortPriority=3}
bonuses[12898] = {op="set", itemLevel=391, midnight="set", sortPriority=3}
for i = 12899, 12902 do bonuses[i] = {op="set", itemLevel=3*i-38302, midnight="set", sortPriority=3} end
bonuses[12903] = {op="set", itemLevel=408, midnight="set", sortPriority=3}
bonuses[12904] = {op="set", itemLevel=411, midnight="set", sortPriority=3}
bonuses[13341] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=233, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13342] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=237, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13343] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=240, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13346] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=250, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13347] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=253, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13350] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=263, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13351] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=266, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13354] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=276, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13355] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=279, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13359] = {op="set", itemLevel=777, midnight="squish", sortPriority=3}
bonuses[13441] = {op="scale", curveId=159, offset=6, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13442] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=214, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13443] = {op="set", itemLevel=714, midnight="squish", sortPriority=3}
bonuses[13444] = {op="set", itemLevel=717, midnight="squish", sortPriority=3}
bonuses[13445] = {op="set", itemLevel=727, midnight="squish", sortPriority=3}
bonuses[13446] = {op="set", itemLevel=730, midnight="squish", sortPriority=3}
bonuses[13468] = {op="add", amount=7, sortPriority=4}
bonuses[13469] = {op="add", amount=3, sortPriority=4}
for i = 13470, 13473 do bonuses[i] = {op="scale", curveId=0, offset=i-13462, midnight="set", defaultLevel=70, sortPriority=2} end
for i = 13474, 13479 do bonuses[i] = {op="scale", curveId=0, offset=i-13466, midnight="set", defaultLevel=70, sortPriority=2} end
bonuses[13480] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13481] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13482] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13483] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13484] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13485] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13486] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13487] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13488] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13489] = {op="scale", curveId=0, offset=9, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13490] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[13491] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[13492] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=40, indirect=true}
bonuses[13493] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=45, sortPriority=2}
bonuses[13494] = {op="scale", curveId=0, offset=3, midnight="set", defaultLevel=40, sortPriority=2}
bonuses[13495] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13496] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13497] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13498] = {op="scale", curveId=0, offset=16, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13499] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13500] = {op="scale", curveId=0, offset=14, midnight="set", defaultLevel=70, sortPriority=2}
for i = 13505, 13508 do bonuses[i] = {op="scale", curveId=0, offset=-2*i+27027, midnight="set", defaultLevel=70, sortPriority=2} end
bonuses[13509] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13510] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=70, sortPriority=2}
for i = 13511, 13514 do bonuses[i] = {op="scale", curveId=0, offset=5*i-67555, midnight="set", defaultLevel=70, sortPriority=2} end
bonuses[13515] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13516] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13517] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13518] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=50, sortPriority=2}
bonuses[13536] = {op="scale", curveId=0, offset=11, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13537] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13538] = {op="scale", curveId=0, offset=13, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13539] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13540] = {op="scale", curveId=0, offset=15, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13541] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13542] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13543] = {op="scale", curveId=0, offset=17, midnight="set", defaultLevel=60, sortPriority=2}
for i = 13544, 13547 do bonuses[i] = {op="scale", curveId=0, offset=2*i-27077, midnight="set", defaultLevel=50, sortPriority=2} end
for i = 13548, 13551 do bonuses[i] = {op="scale", curveId=0, offset=2*i-27090, midnight="set", defaultLevel=50, sortPriority=2} end
bonuses[13558] = {op="scale", curveId=0, offset=6, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13559] = {op="scale", curveId=0, offset=10, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13560] = {op="scale", curveId=0, offset=8, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13561] = {op="scale", curveId=0, offset=12, midnight="set", defaultLevel=50, sortPriority=2}
bonuses[13563] = {op="scale", curveId=152, offset=0, midnight="set", priority=1000, defaultLevel=201, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13564] = {op="scale", curveId=159, offset=0, midnight="set", priority=300, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13565] = {op="scale", curveId=156, contentTuningKey="stat", sortPriority=1}
bonuses[13566] = {op="scale", curveId=157, contentTuningKey="stat", sortPriority=1}
bonuses[13567] = {op="scale", curveId=156, contentTuningKey="stat", sortPriority=1}
bonuses[13568] = {op="scale", curveId=157, contentTuningKey="stat", sortPriority=1}
bonuses[13569] = {op="scale", curveId=157, contentTuningKey="stat", sortPriority=1}
bonuses[13570] = {op="scale", curveId=152, offset=0, midnight="set", priority=1000, defaultLevel=220, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13571] = {op="scale", curveId=152, offset=0, midnight="set", priority=1000, defaultLevel=233, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13572] = {op="scale", curveId=158, contentTuningKey="stat", contentTuningId=2852, sortPriority=1}
bonuses[13573] = {op="scale", curveId=159, offset=0, midnight="set", priority=300, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
for i = 13580, 13582 do bonuses[i] = {op="scale", curveId=i-13425, contentTuningKey="stat", sortPriority=1} end
bonuses[13607] = {op="scale", curveId=160, offset=0, midnight="set", priority=1, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13608] = {op="scale", curveId=161, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13609] = {op="scale", curveId=160, offset=0, midnight="set", priority=290, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13610] = {op="scale", curveId=160, offset=0, midnight="set", priority=290, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13611] = {op="scale", curveId=159, contentTuningKey="stat", sortPriority=1}
bonuses[13613] = {op="scale", curveId=159, offset=6, midnight="set", priority=200, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13614] = {op="scale", curveId=159, offset=13, midnight="set", priority=100, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
for i = 13617, 13619 do bonuses[i] = {op="scale", curveId=0, offset=3*i-40851, midnight="set", priority=-100*i+1362000, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2} end
bonuses[13620] = {op="scale", curveId=152, offset=0, midnight="set", priority=1, defaultLevel=233, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13621] = {op="scale", curveId=152, offset=0, midnight="set", priority=65, defaultLevel=259, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13622] = {op="scale", curveId=152, offset=0, midnight="set", priority=65, defaultLevel=272, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13623] = {op="scale", curveId=152, offset=0, midnight="set", priority=1, defaultLevel=220, contentTuningKey="scalingConfig", sortPriority=2}
for i = 13624, 13628 do bonuses[i] = {op="add", amount=i-13624, midnight="force", sortPriority=4} end
bonuses[13629] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=217, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13634] = {op="scale", curveId=152, offset=0, midnight="set", priority=250, defaultLevel=214, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13635] = {op="scale", curveId=163, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13636] = {op="scale", curveId=0, offset=0, midnight="set", defaultLevel=60, sortPriority=2}
bonuses[13637] = {op="scale", curveId=0, offset=0, midnight="set", defaultLevel=70, sortPriority=2}
bonuses[13638] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=102, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13642] = {redirect=13617}
bonuses[13644] = {op="scale", curveId=152, offset=0, midnight="set", defaultLevel=201, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13645] = {op="scale", curveId=159, offset=6, midnight="set", priority=200, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13646] = {op="scale", curveId=159, offset=13, midnight="set", priority=100, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13647] = {op="scale", curveId=164, offset=0, midnight="set", contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13648] = {op="scale", curveId=159, offset=6, midnight="set", priority=200, contentTuningKey="scalingConfig2", contentTuningDefaultOnly=true, sortPriority=2}
bonuses[13649] = {op="scale", curveId=152, offset=0, midnight="set", priority=100, defaultLevel=180, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13669] = {op="scale", curveId=152, offset=0, midnight="set", priority=1, defaultLevel=220, contentTuningKey="scalingConfig", sortPriority=2}
bonuses[13670] = {op="scale", curveId=152, offset=0, midnight="squish", priority=1, defaultLevel=577, sortPriority=2}
local contentTuning = {
	[1] = {op={"cap", 80}},
	[2] = {op={"clamp", 5, 30}},
	[4] = {op={"clamp", 1, 30}},
	[10] = {op={"clamp", 7, 30}},
	[13] = {op={"clamp", 10, 30}},
	[21] = {op={"clamp", 15, 30}},
	[41] = {op={"clamp", 20, 30}},
	[42] = {op={"clamp", 25, 30}},
	[52] = {op={"clamp", 30, 35}},
	[57] = {op={"clamp", 10, 35}},
	[58] = {op={"clamp", 15, 35}},
	[60] = {op={"clamp", 20, 35}},
	[61] = {op={"clamp", 25, 35}},
	[63] = {op={"clamp", 10, 40}},
	[65] = {op={"clamp", 15, 40}},
	[66] = {op={"clamp", 20, 40}},
	[67] = {op={"clamp", 30, 40}},
	[68] = {op={"clamp", 35, 40}},
	[69] = {scalingConfig2={"cap", 80}},
	[78] = {op={"clamp", 1, 20}},
	[81] = {op={"cap", 1}, scalingConfig={"const", 0}},
	[82] = {scalingConfig2={"clamp", 5, 25}, stat={"clamp", 5, 25}},
	[83] = {scalingConfig2={"clamp", 1, 25}, stat={"clamp", 1, 25}},
	[96] = {scalingConfig2={"clamp", 11, 25}, stat={"clamp", 11, 25}},
	[99] = {scalingConfig2={"clamp", 13, 25}, stat={"clamp", 13, 25}},
	[112] = {scalingConfig2={"clamp", 17, 25}, stat={"clamp", 17, 25}},
	[117] = {scalingConfig2={"clamp", 24, 30}, stat={"clamp", 24, 30}},
	[118] = {scalingConfig2={"clamp", 25, 30}, stat={"clamp", 25, 30}},
	[120] = {scalingConfig2={"clamp", 26, 30}, stat={"clamp", 26, 30}},
	[132] = {scalingConfig2={"clamp", 30, 35}, stat={"clamp", 30, 35}},
	[136] = {scalingConfig2={"clamp", 32, 35}, stat={"clamp", 32, 35}},
	[140] = {scalingConfig2={"clamp", 31, 35}, stat={"clamp", 31, 35}},
	[143] = {scalingConfig2={"clamp", 35, 40}, stat={"clamp", 35, 40}},
	[145] = {scalingConfig2={"clamp", 36, 40}, stat={"clamp", 36, 40}},
	[146] = {scalingConfig2={"clamp", 37, 40}, stat={"clamp", 37, 40}},
	[147] = {scalingConfig2={"clamp", 38, 40}, stat={"clamp", 38, 40}},
	[148] = {scalingConfig2={"clamp", 39, 40}, stat={"clamp", 39, 40}},
	[151] = {scalingConfig2={"clamp", 1, 10}, stat={"clamp", 1, 10}},
	[162] = {scalingConfig2={"const", 30}, stat={"const", 30}},
	[165] = {op={"clamp", 32, 35}},
	[168] = {op={"const", 35}},
	[170] = {scalingConfig2={"const", 35}, stat={"const", 35}},
	[175] = {op={"clamp", 1, 50}},
	[176] = {op={"const", 40}},
	[177] = {scalingConfig2={"const", 40}, stat={"const", 40}},
	[186] = {op={"clamp", 10, 60}},
	[187] = {op={"clamp", 20, 60}},
	[188] = {op={"clamp", 30, 60}},
	[193] = {op={"clamp", 8, 30}},
	[288] = {op={"const", 10}},
	[290] = {op={"const", 50}},
	[317] = {op={"clamp", 40, 45}},
	[323] = {op={"clamp", 37, 40}},
	[331] = {op={"clamp", 10, 45}},
	[335] = {op={"const", 45}},
	[352] = {op={"clamp", 43, 45}},
	[353] = {op={"clamp", 44, 45}},
	[371] = {op={"const", 1}},
	[372] = {op={"cap", 80}, stat={"clamp", 1, 0}},
	[432] = {op={"clamp", 38, 40}},
	[436] = {op={"clamp", 5, 45}},
	[467] = {op={"clamp", 35, 60}},
	[623] = {op={"clamp", 80, 90}},
	[630] = {scalingConfig2={"clamp", 40, 45}, stat={"clamp", 40, 45}},
	[631] = {op={"const", 30}},
	[632] = {op={"clamp", 60, 90}},
	[646] = {op={"clamp", 10, 50}},
	[699] = {op={"clamp", 8, 45}},
	[707] = {op={"clamp", 30, 45}},
	[709] = {op={"clamp", 48, 60}},
	[737] = {op={"clamp", 50, 80}},
	[739] = {op={"cap", 80}, stat={"clamp", 25, 0}},
	[741] = {op={"clamp", 1, 10}},
	[742] = {op={"const", 60}},
	[743] = {op={"clamp", 8, 53}},
	[744] = {op={"clamp", 8, 58}},
	[745] = {op={"clamp", 8, 55}},
	[746] = {op={"clamp", 8, 60}},
	[747] = {op={"clamp", 50, 60}},
	[761] = {op={"clamp", 1, 60}},
	[795] = {op={"clamp", 20, 50}},
	[854] = {op={"clamp", 1, 47}},
	[879] = {op={"clamp", 1, 5}},
	[880] = {op={"clamp", 5, 10}},
	[949] = {op={"const", 255}},
	[955] = {op={"clamp", 6, 9}},
	[956] = {op={"clamp", 7, 10}},
	[962] = {op={"capAdd", 80, 1}},
	[990] = {op={"clamp", 10, 44}},
	[1001] = {scalingConfig2={"const", 25}, stat={"const", 25}},
	[1212] = {op={"clamp", 10, 34}},
	[1214] = {op={"cap", 80}, stat={"clamp", 35, 0}},
	[1230] = {op={"clamp", 8, 56}},
	[1239] = {op={"clamp", 8, 57}},
	[1265] = {op={"capAdd", 80, -1}},
	[1280] = {op={"clamp", 0, 25}},
	[1293] = {op={"clamp", 0, 24}},
	[1295] = {op={"clamp", 40, 60}},
	[1304] = {op={"clamp", 0, 39}},
	[1310] = {op={"clamp", 10, 49}},
	[1314] = {op={"clamp", 8, 51}},
	[1319] = {op={"clamp", 8, 52}},
	[1324] = {op={"clamp", 10, 53}},
	[1326] = {op={"clamp", 8, 54}},
	[1337] = {op={"clamp", 10, 55}},
	[1343] = {op={"clamp", 10, 37}},
	[1344] = {op={"clamp", 48, 49}},
	[1345] = {op={"clamp", 0, 49}},
	[1348] = {op={"clamp", 10, 26}},
	[1349] = {op={"clamp", 27, 43}},
	[1350] = {op={"clamp", 44, 59}},
	[1352] = {op={"clamp", 24, 34}},
	[1358] = {op={"clamp", 0, 9}},
	[1361] = {op={"clamp", 0, 18}},
	[1362] = {op={"clamp", 19, 25}},
	[1363] = {op={"clamp", 26, 30}},
	[1364] = {op={"clamp", 31, 35}},
	[1365] = {op={"clamp", 36, 40}},
	[1366] = {op={"clamp", 41, 45}},
	[1367] = {op={"clamp", 0, 29}},
	[1373] = {op={"clamp", 0, 10}},
	[1375] = {op={"clamp", 0, 5}},
	[1378] = {op={"clamp", 0, 19}},
	[1380] = {op={"const", 17}},
	[1381] = {op={"const", 4}},
	[1400] = {op={"clamp", 48, 50}},
	[1408] = {op={"clamp", 57, 60}},
	[1411] = {op={"clamp", 20, 25}},
	[1412] = {op={"clamp", 4, 9}},
	[1413] = {op={"clamp", 10, 13}},
	[1414] = {op={"clamp", 14, 15}},
	[1415] = {op={"clamp", 16, 17}},
	[1416] = {op={"clamp", 18, 25}},
	[1417] = {op={"clamp", 1, 3}},
	[1422] = {op={"const", 5}},
	[1427] = {op={"clamp", 8, 59}},
	[1429] = {op={"clamp", 58, 60}},
	[1431] = {op={"clamp", 39, 45}},
	[1692] = {op={"cap", 71}},
	[1713] = {op={"cap", 70}},
	[1715] = {op={"clamp", 3, 5}},
	[1716] = {op={"clamp", 5, 7}},
	[1717] = {op={"clamp", 8, 10}},
	[1718] = {op={"clamp", 10, 11}},
	[1719] = {op={"clamp", 12, 13}},
	[1720] = {op={"clamp", 13, 15}},
	[1721] = {op={"clamp", 15, 17}},
	[1725] = {op={"const", 11}},
	[1726] = {op={"const", 12}},
	[1729] = {op={"clamp", 9, 10}},
	[1731] = {op={"clamp", 1, 9}},
	[1732] = {op={"clamp", 1, 12}},
	[1934] = {op={"clamp", 55, 60}},
	[1936] = {op={"clamp", 53, 60}},
	[1958] = {op={"capAdd", 80, 3}},
	[2024] = {op={"clamp", 10, 29}},
	[2030] = {op={"clamp", 10, 19}},
	[2031] = {op={"clamp", 20, 29}},
	[2032] = {op={"clamp", 30, 39}},
	[2033] = {op={"clamp", 40, 49}},
	[2035] = {op={"clamp", 50, 59}},
	[2037] = {op={"clamp", 20, 39}},
	[2038] = {op={"clamp", 40, 59}},
	[2041] = {op={"const", 61}},
	[2047] = {op={"clamp", 20, 49}},
	[2050] = {op={"capAdd", 80, -10}},
	[2051] = {op={"clamp", 1, 29}},
	[2052] = {op={"clamp", 1, 34}},
	[2053] = {op={"clamp", 1, 39}},
	[2054] = {op={"clamp", 1, 44}},
	[2055] = {op={"clamp", 1, 49}},
	[2065] = {op={"clamp", 48, 59}},
	[2078] = {op={"clamp", 10, 70}},
	[2128] = {op={"clamp", 10, 58}},
	[2129] = {op={"clamp", 49, 51}},
	[2130] = {op={"clamp", 50, 52}},
	[2132] = {op={"clamp", 51, 60}},
	[2141] = {op={"clamp", 15, 20}},
	[2152] = {op={"clamp", 18, 70}},
	[2153] = {op={"clamp", 28, 70}},
	[2154] = {op={"clamp", 36, 70}},
	[2156] = {op={"const", 70}},
	[2162] = {op={"clamp", 60, 69}},
	[2169] = {op={"clamp", 60, 61}},
	[2177] = {op={"clamp", 1, 59}},
	[2179] = {op={"clamp", 60, 70}},
	[2181] = {op={"clamp", 1, 70}},
	[2220] = {op={"clamp", 58, 70}},
	[2224] = {op={"clamp", 60, 65}},
	[2268] = {op={"clamp", 58, 62}},
	[2287] = {op={"clamp", 8, 70}},
	[2314] = {op={"clamp", 63, 68}},
	[2359] = {op={"clamp", 66, 70}},
	[2400] = {op={"clamp", 38, 70}},
	[2406] = {op={"clamp", 56, 60}},
	[2423] = {op={"clamp", 10, 9}, stat={"const", 10}},
	[2435] = {op={"cap", 69}},
	[2446] = {op={"clamp", 1, 2}},
	[2462] = {scalingConfig={"const", 80}, stat={"const", 80}},
	[2477] = {op={"clamp", 10, 59}},
	[2480] = {op={"clamp", 20, 70}},
	[2485] = {op={"clamp", 10, 69}},
	[2538] = {op={"clamp", 63, 70}},
	[2550] = {op={"clamp", 30, 70}},
	[2554] = {op={"clamp", 40, 70}},
	[2568] = {op={"clamp", 64, 69}},
	[2577] = {op={"clamp", 10, 61}},
	[2581] = {op={"const", 15}},
	[2582] = {op={"const", 20}},
	[2583] = {op={"const", 25}},
	[2588] = {op={"clamp", 36, 80}},
	[2613] = {op={"clamp", 10, 80}},
	[2649] = {op={"clamp", 6, 80}},
	[2668] = {op={"clamp", 1, 69}},
	[2677] = {op={"clamp", 68, 80}},
	[2685] = {op={"const", 85}},
	[2688] = {op={"clamp", 8, 80}},
	[2718] = {op={"clamp", 68, 80}, stat={"const", 80}},
	[2720] = {op={"const", 80}},
	[2746] = {op={"clamp", 25, 70}},
	[2762] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 74, 80}},
	[2768] = {op={"clamp", 35, 70}},
	[2770] = {op={"clamp", 45, 70}},
	[2771] = {op={"clamp", 50, 70}},
	[2795] = {op={"clamp", 70, 80}},
	[2797] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 68, 73}},
	[2798] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 71, 75}},
	[2799] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 73, 78}},
	[2800] = {op={"clamp", 74, 80}},
	[2805] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 73, 75}},
	[2806] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 75, 78}},
	[2807] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 78, 80}},
	[2808] = {scalingConfig={"clamp", 68, 80}, stat={"clamp", 68, 80}},
	[2809] = {scalingConfig={"clamp", 68, 80}, stat={"const", 80}},
	[2811] = {scalingConfig={"clamp", 70, 80}, stat={"clamp", 70, 80}},
	[2836] = {op={"cap", 80}, stat={"clamp", 12, 0}},
	[2844] = {op={"clamp", 1, 35}},
	[2846] = {op={"clamp", 0, 70}},
	[2851] = {op={"clamp", 10, 20}},
	[2852] = {op={"clamp", 1, 80}},
	[2862] = {op={"clamp", 68, 79}},
	[2868] = {op={"clamp", 68, 70}},
	[2889] = {op={"cap", 80}, stat={"clamp", 71, 0}},
	[2895] = {op={"clamp", 70, 79}},
	[2924] = {op={"clamp", 68, 71}},
	[2932] = {op={"clamp", 30, 80}},
	[2937] = {op={"clamp", 15, 70}},
	[2973] = {op={"clamp", 68, 80}, stat={"clamp", 71, 80}},
	[2975] = {op={"clamp", 68, 80}, stat={"clamp", 73, 80}},
	[2976] = {op={"clamp", 68, 80}, stat={"clamp", 75, 80}},
	[2977] = {op={"clamp", 68, 80}, stat={"clamp", 77, 80}},
	[2998] = {op={"const", 74}},
	[2999] = {op={"const", 72}},
	[3000] = {op={"const", 76}},
	[3001] = {op={"const", 78}},
	[3003] = {op={"clamp", 30, 50}},
	[3016] = {op={"clamp", 68, 79}, stat={"clamp", 74, 79}},
	[3018] = {op={"clamp", 68, 79}, stat={"clamp", 73, 79}},
	[3019] = {op={"clamp", 68, 79}, stat={"clamp", 68, 73}},
	[3021] = {op={"const", 90}},
	[3064] = {op={"cap", 67}},
	[3065] = {op={"clamp", 77, 80}},
	[3084] = {op={"clamp", 86, 90}},
	[3085] = {op={"clamp", 80, 83}},
	[3086] = {op={"clamp", 81, 88}},
	[3096] = {op={"clamp", 78, 80}},
	[3325] = {op={"clamp", 0, 90}},
	[4239] = {op={"clamp", 80, 89}},
	[4282] = {op={"clamp", 83, 85}},
	[4283] = {op={"clamp", 85, 88}},
	[4284] = {op={"clamp", 88, 90}},
	[5103] = {op={"clamp", 80, 90}, stat={"clamp", 81, 90}},
	[5914] = {op={"clamp", 81, 90}},
	[5937] = {op={"clamp", 1, 120}},
	[6003] = {op={"clamp", 81, 89}},
	[6419] = {op={"cap", 21}, scalingConfig={"clamp", 0, 20}},
	[6424] = {op={"cap", 251}, scalingConfig={"const", 250}},
	[6429] = {op={"const", 51}},
	[6735] = {op={"clamp", 30, 79}},
	[6783] = {op={"clamp", 20, 79}},
}
contentTuning[3] = contentTuning[2]
for i = 5, 7 do contentTuning[i] = contentTuning[2] end
contentTuning[8] = contentTuning[4]
contentTuning[9] = contentTuning[2]
contentTuning[11] = contentTuning[10]
contentTuning[12] = contentTuning[10]
for i = 14, 20 do contentTuning[i] = contentTuning[13] end
contentTuning[22] = contentTuning[21]
contentTuning[23] = contentTuning[21]
contentTuning[24] = contentTuning[13]
for i = 25, 36 do contentTuning[i] = contentTuning[21] end
contentTuning[37] = contentTuning[13]
contentTuning[38] = contentTuning[13]
contentTuning[39] = contentTuning[21]
contentTuning[40] = contentTuning[21]
contentTuning[43] = contentTuning[42]
contentTuning[44] = contentTuning[13]
contentTuning[45] = contentTuning[13]
contentTuning[46] = contentTuning[21]
contentTuning[47] = contentTuning[21]
contentTuning[48] = contentTuning[41]
contentTuning[49] = contentTuning[41]
contentTuning[50] = contentTuning[42]
contentTuning[51] = contentTuning[42]
for i = 53, 56 do contentTuning[i] = contentTuning[52] end
contentTuning[59] = contentTuning[58]
contentTuning[62] = contentTuning[52]
contentTuning[64] = contentTuning[63]
for i = 70, 77 do contentTuning[i] = contentTuning[4] end
contentTuning[79] = contentTuning[78]
contentTuning[80] = contentTuning[78]
contentTuning[84] = contentTuning[83]
contentTuning[85] = contentTuning[82]
for i = 86, 95 do contentTuning[i] = contentTuning[83] end
contentTuning[97] = contentTuning[83]
contentTuning[98] = contentTuning[83]
for i = 100, 111 do contentTuning[i] = contentTuning[83] end
contentTuning[113] = contentTuning[112]
contentTuning[114] = contentTuning[83]
contentTuning[115] = contentTuning[83]
contentTuning[116] = contentTuning[112]
contentTuning[119] = contentTuning[118]
contentTuning[121] = contentTuning[120]
contentTuning[124] = contentTuning[21]
contentTuning[125] = contentTuning[117]
contentTuning[126] = contentTuning[118]
contentTuning[127] = contentTuning[118]
for i = 128, 131 do contentTuning[i] = contentTuning[120] end
for i = 133, 135 do contentTuning[i] = contentTuning[132] end
for i = 137, 139 do contentTuning[i] = contentTuning[132] end
contentTuning[141] = contentTuning[140]
contentTuning[142] = contentTuning[136]
contentTuning[144] = contentTuning[143]
contentTuning[149] = contentTuning[69]
contentTuning[152] = contentTuning[151]
contentTuning[154] = contentTuning[151]
contentTuning[155] = contentTuning[83]
contentTuning[156] = contentTuning[151]
contentTuning[157] = contentTuning[83]
contentTuning[159] = contentTuning[78]
contentTuning[160] = contentTuning[151]
contentTuning[161] = contentTuning[42]
contentTuning[163] = contentTuning[42]
contentTuning[164] = contentTuning[120]
contentTuning[166] = contentTuning[132]
contentTuning[167] = contentTuning[165]
contentTuning[169] = contentTuning[52]
contentTuning[171] = contentTuning[136]
contentTuning[172] = contentTuning[57]
contentTuning[173] = contentTuning[52]
contentTuning[174] = contentTuning[136]
contentTuning[178] = contentTuning[63]
contentTuning[179] = contentTuning[170]
contentTuning[180] = contentTuning[69]
for i = 181, 185 do contentTuning[i] = contentTuning[1] end
for i = 189, 191 do contentTuning[i] = contentTuning[i-3] end
contentTuning[192] = contentTuning[168]
contentTuning[194] = contentTuning[1]
contentTuning[195] = contentTuning[1]
contentTuning[196] = contentTuning[13]
for i = 197, 199 do contentTuning[i] = contentTuning[1] end
contentTuning[200] = contentTuning[13]
contentTuning[201] = contentTuning[41]
contentTuning[202] = contentTuning[10]
contentTuning[203] = contentTuning[21]
contentTuning[204] = contentTuning[13]
contentTuning[205] = contentTuning[41]
contentTuning[206] = contentTuning[13]
contentTuning[207] = contentTuning[10]
contentTuning[208] = contentTuning[13]
contentTuning[209] = contentTuning[21]
contentTuning[210] = contentTuning[13]
contentTuning[211] = contentTuning[13]
contentTuning[212] = contentTuning[21]
contentTuning[213] = contentTuning[193]
contentTuning[214] = contentTuning[21]
contentTuning[215] = contentTuning[13]
contentTuning[216] = contentTuning[41]
for i = 217, 219 do contentTuning[i] = contentTuning[21] end
contentTuning[220] = contentTuning[13]
contentTuning[221] = contentTuning[42]
for i = 222, 224 do contentTuning[i] = contentTuning[21] end
contentTuning[225] = contentTuning[41]
contentTuning[226] = contentTuning[42]
contentTuning[227] = contentTuning[42]
contentTuning[228] = contentTuning[13]
for i = 229, 231 do contentTuning[i] = contentTuning[41] end
contentTuning[232] = contentTuning[13]
contentTuning[233] = contentTuning[41]
contentTuning[234] = contentTuning[13]
for i = 235, 237 do contentTuning[i] = contentTuning[21] end
contentTuning[238] = contentTuning[41]
contentTuning[239] = contentTuning[41]
contentTuning[240] = contentTuning[42]
contentTuning[241] = contentTuning[41]
for i = 242, 244 do contentTuning[i] = contentTuning[42] end
contentTuning[245] = contentTuning[13]
contentTuning[246] = contentTuning[41]
contentTuning[247] = contentTuning[21]
contentTuning[248] = contentTuning[42]
contentTuning[249] = contentTuning[13]
contentTuning[250] = contentTuning[41]
contentTuning[251] = contentTuning[52]
contentTuning[252] = contentTuning[168]
contentTuning[253] = contentTuning[52]
contentTuning[254] = contentTuning[52]
contentTuning[255] = contentTuning[168]
for i = 256, 259 do contentTuning[i] = contentTuning[52] end
for i = 260, 262 do contentTuning[i] = contentTuning[168] end
contentTuning[263] = contentTuning[61]
contentTuning[264] = contentTuning[60]
contentTuning[265] = contentTuning[60]
contentTuning[266] = contentTuning[61]
contentTuning[267] = contentTuning[58]
contentTuning[268] = contentTuning[57]
contentTuning[269] = contentTuning[66]
contentTuning[270] = contentTuning[63]
contentTuning[271] = contentTuning[68]
contentTuning[272] = contentTuning[65]
contentTuning[273] = contentTuning[63]
contentTuning[274] = contentTuning[67]
contentTuning[275] = contentTuning[68]
contentTuning[276] = contentTuning[68]
contentTuning[278] = contentTuning[21]
contentTuning[279] = contentTuning[21]
contentTuning[280] = contentTuning[13]
for i = 281, 283 do contentTuning[i] = contentTuning[28*i-7855] end
for i = 284, 286 do contentTuning[i] = contentTuning[69] end
contentTuning[289] = contentTuning[186]
contentTuning[292] = contentTuning[186]
for i = 293, 298 do contentTuning[i] = contentTuning[1] end
contentTuning[300] = contentTuning[1]
contentTuning[301] = contentTuning[63]
contentTuning[302] = contentTuning[63]
contentTuning[303] = contentTuning[168]
contentTuning[304] = contentTuning[168]
contentTuning[305] = contentTuning[176]
contentTuning[306] = contentTuning[63]
contentTuning[307] = contentTuning[57]
contentTuning[308] = contentTuning[52]
contentTuning[309] = contentTuning[13]
contentTuning[310] = contentTuning[13]
contentTuning[311] = contentTuning[4]
contentTuning[313] = contentTuning[69]
contentTuning[314] = contentTuning[69]
contentTuning[315] = contentTuning[52]
contentTuning[316] = contentTuning[42]
for i = 318, 320 do contentTuning[i] = contentTuning[69] end
contentTuning[321] = contentTuning[42]
contentTuning[322] = contentTuning[52]
contentTuning[324] = contentTuning[1]
contentTuning[325] = contentTuning[69]
contentTuning[326] = contentTuning[168]
contentTuning[328] = contentTuning[1]
contentTuning[330] = contentTuning[1]
for i = 332, 334 do contentTuning[i] = contentTuning[331] end
contentTuning[336] = contentTuning[335]
contentTuning[337] = contentTuning[335]
contentTuning[338] = contentTuning[1]
for i = 339, 341 do contentTuning[i] = contentTuning[331] end
contentTuning[342] = contentTuning[317]
contentTuning[343] = contentTuning[335]
contentTuning[344] = contentTuning[335]
contentTuning[345] = contentTuning[331]
contentTuning[346] = contentTuning[331]
contentTuning[347] = contentTuning[335]
contentTuning[348] = contentTuning[331]
for i = 349, 351 do contentTuning[i] = contentTuning[317] end
contentTuning[354] = contentTuning[335]
contentTuning[355] = contentTuning[335]
contentTuning[356] = contentTuning[331]
contentTuning[357] = contentTuning[331]
contentTuning[358] = contentTuning[65]
contentTuning[359] = contentTuning[68]
contentTuning[360] = contentTuning[176]
for i = 361, 370 do contentTuning[i] = contentTuning[1] end
for i = 373, 376 do contentTuning[i] = contentTuning[1] end
contentTuning[377] = contentTuning[52]
for i = 378, 392 do contentTuning[i] = contentTuning[1] end
contentTuning[393] = contentTuning[372]
for i = 394, 409 do contentTuning[i] = contentTuning[1] end
contentTuning[410] = contentTuning[331]
contentTuning[411] = contentTuning[1]
contentTuning[412] = contentTuning[1]
contentTuning[413] = contentTuning[66]
contentTuning[414] = contentTuning[1]
contentTuning[415] = contentTuning[67]
contentTuning[416] = contentTuning[52]
for i = 417, 429 do contentTuning[i] = contentTuning[1] end
contentTuning[430] = contentTuning[176]
contentTuning[431] = contentTuning[331]
for i = 433, 435 do contentTuning[i] = contentTuning[1] end
for i = 437, 445 do contentTuning[i] = contentTuning[1] end
contentTuning[446] = contentTuning[331]
contentTuning[450] = contentTuning[69]
contentTuning[463] = contentTuning[69]
contentTuning[464] = contentTuning[290]
contentTuning[465] = contentTuning[1]
contentTuning[466] = contentTuning[69]
contentTuning[468] = contentTuning[69]
contentTuning[469] = contentTuning[1]
for i = 470, 475 do contentTuning[i] = contentTuning[69] end
contentTuning[476] = contentTuning[335]
contentTuning[477] = contentTuning[335]
contentTuning[478] = contentTuning[69]
contentTuning[479] = contentTuning[1]
contentTuning[480] = contentTuning[331]
for i = 481, 483 do contentTuning[i] = contentTuning[1] end
for i = 484, 486 do contentTuning[i] = contentTuning[331] end
contentTuning[487] = contentTuning[335]
contentTuning[488] = contentTuning[331]
contentTuning[490] = contentTuning[69]
contentTuning[492] = contentTuning[290]
contentTuning[493] = contentTuning[69]
contentTuning[494] = contentTuning[186]
contentTuning[496] = contentTuning[69]
contentTuning[497] = contentTuning[69]
contentTuning[498] = contentTuning[335]
contentTuning[499] = contentTuning[335]
contentTuning[500] = contentTuning[186]
for i = 501, 506 do contentTuning[i] = contentTuning[290] end
contentTuning[507] = contentTuning[69]
contentTuning[517] = contentTuning[1]
for i = 617, 622 do contentTuning[i] = contentTuning[335] end
for i = 624, 629 do contentTuning[i] = contentTuning[335] end
contentTuning[633] = contentTuning[331]
for i = 634, 641 do contentTuning[i] = contentTuning[335] end
contentTuning[642] = contentTuning[331]
contentTuning[644] = contentTuning[290]
contentTuning[645] = contentTuning[290]
contentTuning[650] = contentTuning[331]
contentTuning[651] = contentTuning[371]
contentTuning[652] = contentTuning[69]
contentTuning[653] = contentTuning[4]
contentTuning[654] = contentTuning[118]
contentTuning[655] = contentTuning[118]
contentTuning[656] = contentTuning[52]
contentTuning[657] = contentTuning[57]
contentTuning[658] = contentTuning[143]
contentTuning[659] = contentTuning[630]
contentTuning[662] = contentTuning[631]
contentTuning[663] = contentTuning[1]
contentTuning[664] = contentTuning[631]
contentTuning[666] = contentTuning[631]
contentTuning[667] = contentTuning[168]
contentTuning[668] = contentTuning[168]
contentTuning[669] = contentTuning[176]
contentTuning[670] = contentTuning[290]
contentTuning[671] = contentTuning[1]
contentTuning[672] = contentTuning[335]
contentTuning[673] = contentTuning[1]
contentTuning[674] = contentTuning[1]
contentTuning[676] = contentTuning[13]
contentTuning[677] = contentTuning[13]
contentTuning[678] = contentTuning[69]
contentTuning[679] = contentTuning[52]
contentTuning[680] = contentTuning[57]
contentTuning[681] = contentTuning[63]
contentTuning[682] = contentTuning[331]
contentTuning[683] = contentTuning[4]
contentTuning[684] = contentTuning[1]
for i = 686, 691 do contentTuning[i] = contentTuning[290] end
contentTuning[693] = contentTuning[290]
contentTuning[694] = contentTuning[69]
for i = 695, 698 do contentTuning[i] = contentTuning[290] end
contentTuning[700] = contentTuning[1]
contentTuning[701] = contentTuning[1]
contentTuning[702] = contentTuning[69]
contentTuning[703] = contentTuning[290]
contentTuning[704] = contentTuning[290]
contentTuning[705] = contentTuning[186]
contentTuning[706] = contentTuning[186]
contentTuning[708] = contentTuning[290]
contentTuning[710] = contentTuning[290]
contentTuning[711] = contentTuning[168]
contentTuning[712] = contentTuning[69]
contentTuning[713] = contentTuning[186]
contentTuning[714] = contentTuning[290]
contentTuning[715] = contentTuning[1]
contentTuning[717] = contentTuning[1]
contentTuning[718] = contentTuning[623]
for i = 719, 722 do contentTuning[i] = contentTuning[290] end
for i = 723, 729 do contentTuning[i] = contentTuning[623] end
contentTuning[730] = contentTuning[1]
contentTuning[731] = contentTuning[52]
contentTuning[733] = contentTuning[290]
contentTuning[736] = contentTuning[290]
contentTuning[738] = contentTuning[1]
contentTuning[740] = contentTuning[290]
for i = 748, 753 do contentTuning[i] = contentTuning[742] end
contentTuning[754] = contentTuning[709]
contentTuning[755] = contentTuning[1]
contentTuning[756] = contentTuning[69]
contentTuning[757] = contentTuning[69]
for i = 758, 760 do contentTuning[i] = contentTuning[747] end
contentTuning[762] = contentTuning[1]
contentTuning[765] = contentTuning[69]
contentTuning[766] = contentTuning[761]
contentTuning[767] = contentTuning[761]
contentTuning[771] = contentTuning[290]
contentTuning[772] = contentTuning[1]
contentTuning[773] = contentTuning[331]
contentTuning[774] = contentTuning[1]
contentTuning[775] = contentTuning[13]
contentTuning[776] = contentTuning[186]
contentTuning[777] = contentTuning[13]
contentTuning[778] = contentTuning[1]
contentTuning[779] = contentTuning[168]
contentTuning[780] = contentTuning[1]
contentTuning[781] = contentTuning[290]
contentTuning[782] = contentTuning[1]
contentTuning[783] = contentTuning[709]
for i = 784, 787 do contentTuning[i] = contentTuning[290] end
contentTuning[788] = contentTuning[646]
contentTuning[789] = contentTuning[290]
contentTuning[790] = contentTuning[290]
contentTuning[791] = contentTuning[371]
contentTuning[792] = contentTuning[290]
contentTuning[793] = contentTuning[186]
contentTuning[794] = contentTuning[290]
contentTuning[796] = contentTuning[1]
contentTuning[797] = contentTuning[317]
contentTuning[798] = contentTuning[1]
contentTuning[799] = contentTuning[1]
contentTuning[800] = contentTuning[371]
contentTuning[801] = contentTuning[371]
for i = 802, 804 do contentTuning[i] = contentTuning[290] end
contentTuning[805] = contentTuning[186]
contentTuning[806] = contentTuning[1]
contentTuning[807] = contentTuning[709]
contentTuning[808] = contentTuning[646]
contentTuning[809] = contentTuning[290]
contentTuning[810] = contentTuning[186]
contentTuning[816] = contentTuning[176]
contentTuning[817] = contentTuning[168]
contentTuning[818] = contentTuning[168]
contentTuning[819] = contentTuning[631]
contentTuning[820] = contentTuning[631]
contentTuning[823] = contentTuning[1]
contentTuning[824] = contentTuning[742]
contentTuning[825] = contentTuning[4]
contentTuning[826] = contentTuning[13]
contentTuning[827] = contentTuning[52]
contentTuning[828] = contentTuning[63]
contentTuning[829] = contentTuning[331]
contentTuning[830] = contentTuning[186]
contentTuning[832] = contentTuning[1]
contentTuning[833] = contentTuning[371]
contentTuning[834] = contentTuning[186]
contentTuning[835] = contentTuning[290]
contentTuning[836] = contentTuning[290]
contentTuning[837] = contentTuning[742]
contentTuning[838] = contentTuning[290]
contentTuning[840] = contentTuning[1]
contentTuning[841] = contentTuning[761]
contentTuning[842] = contentTuning[761]
contentTuning[843] = contentTuning[290]
contentTuning[844] = contentTuning[1]
contentTuning[845] = contentTuning[290]
for i = 846, 852 do contentTuning[i] = contentTuning[1] end
contentTuning[853] = contentTuning[290]
contentTuning[856] = contentTuning[13]
contentTuning[857] = contentTuning[63]
contentTuning[859] = contentTuning[57]
contentTuning[860] = contentTuning[57]
contentTuning[861] = contentTuning[4]
contentTuning[862] = contentTuning[168]
for i = 863, 868 do contentTuning[i] = contentTuning[1] end
contentTuning[869] = contentTuning[193]
contentTuning[870] = contentTuning[13]
contentTuning[871] = contentTuning[13]
contentTuning[872] = contentTuning[1]
contentTuning[873] = contentTuning[186]
contentTuning[874] = contentTuning[13]
contentTuning[875] = contentTuning[52]
for i = 876, 878 do contentTuning[i] = contentTuning[1] end
for i = 881, 883 do contentTuning[i] = contentTuning[1] end
contentTuning[884] = contentTuning[4]
contentTuning[885] = contentTuning[331]
contentTuning[886] = contentTuning[1]
contentTuning[887] = contentTuning[168]
contentTuning[888] = contentTuning[1]
contentTuning[889] = contentTuning[42]
contentTuning[890] = contentTuning[1]
contentTuning[948] = contentTuning[1]
contentTuning[951] = contentTuning[631]
contentTuning[957] = contentTuning[879]
contentTuning[958] = contentTuning[1]
contentTuning[959] = contentTuning[21]
contentTuning[960] = contentTuning[63]
contentTuning[961] = contentTuning[1]
contentTuning[963] = contentTuning[168]
contentTuning[964] = contentTuning[956]
contentTuning[965] = contentTuning[13]
for i = 966, 974 do contentTuning[i] = contentTuning[1] end
contentTuning[975] = contentTuning[52]
contentTuning[976] = contentTuning[631]
contentTuning[977] = contentTuning[761]
for i = 978, 985 do contentTuning[i] = contentTuning[1] end
contentTuning[986] = contentTuning[4]
contentTuning[987] = contentTuning[1]
contentTuning[988] = contentTuning[42]
contentTuning[989] = contentTuning[331]
for i = 991, 993 do contentTuning[i] = contentTuning[1] end
contentTuning[994] = contentTuning[13]
contentTuning[995] = contentTuning[1]
contentTuning[996] = contentTuning[1]
contentTuning[997] = contentTuning[21]
contentTuning[998] = contentTuning[21]
contentTuning[999] = contentTuning[631]
contentTuning[1002] = contentTuning[1]
for i = 1003, 1024 do contentTuning[i] = contentTuning[631] end
for i = 1025, 1036 do contentTuning[i] = contentTuning[168] end
for i = 1037, 1040 do contentTuning[i] = contentTuning[176] end
for i = 1064, 1107 do contentTuning[i] = contentTuning[631] end
for i = 1108, 1137 do contentTuning[i] = contentTuning[168] end
for i = 1138, 1151 do contentTuning[i] = contentTuning[176] end
contentTuning[1152] = contentTuning[331]
contentTuning[1153] = contentTuning[335]
contentTuning[1154] = contentTuning[335]
contentTuning[1155] = contentTuning[331]
for i = 1156, 1158 do contentTuning[i] = contentTuning[335] end
contentTuning[1159] = contentTuning[331]
for i = 1160, 1183 do contentTuning[i] = contentTuning[335] end
for i = 1184, 1187 do contentTuning[i] = contentTuning[168] end
for i = 1188, 1195 do contentTuning[i] = contentTuning[176] end
contentTuning[1196] = contentTuning[331]
contentTuning[1197] = contentTuning[335]
contentTuning[1198] = contentTuning[335]
contentTuning[1199] = contentTuning[168]
contentTuning[1200] = contentTuning[42]
contentTuning[1201] = contentTuning[13]
contentTuning[1202] = contentTuning[1]
contentTuning[1203] = contentTuning[41]
contentTuning[1204] = contentTuning[168]
contentTuning[1205] = contentTuning[176]
contentTuning[1206] = contentTuning[290]
contentTuning[1207] = contentTuning[331]
contentTuning[1208] = contentTuning[879]
contentTuning[1210] = contentTuning[186]
contentTuning[1211] = contentTuning[1]
contentTuning[1213] = contentTuning[1]
contentTuning[1215] = contentTuning[1]
contentTuning[1216] = contentTuning[1]
contentTuning[1217] = contentTuning[57]
contentTuning[1218] = contentTuning[63]
contentTuning[1219] = contentTuning[168]
contentTuning[1220] = contentTuning[186]
contentTuning[1221] = contentTuning[63]
for i = 1222, 1228 do contentTuning[i] = contentTuning[186] end
contentTuning[1229] = contentTuning[745]
contentTuning[1231] = contentTuning[1230]
contentTuning[1232] = contentTuning[745]
for i = 1233, 1237 do contentTuning[i] = contentTuning[1230] end
contentTuning[1238] = contentTuning[744]
contentTuning[1240] = contentTuning[1239]
for i = 1241, 1264 do contentTuning[i] = contentTuning[290] end
for i = 1266, 1269 do contentTuning[i] = contentTuning[1265] end
for i = 1270, 1277 do contentTuning[i] = contentTuning[1] end
contentTuning[1278] = contentTuning[176]
contentTuning[1279] = contentTuning[1]
for i = 1281, 1283 do contentTuning[i] = contentTuning[1] end
contentTuning[1284] = contentTuning[631]
contentTuning[1285] = contentTuning[335]
for i = 1286, 1290 do contentTuning[i] = contentTuning[1] end
contentTuning[1291] = contentTuning[761]
contentTuning[1292] = contentTuning[1]
contentTuning[1294] = contentTuning[331]
contentTuning[1296] = contentTuning[467]
for i = 1297, 1301 do contentTuning[i] = contentTuning[331] end
contentTuning[1302] = contentTuning[1]
contentTuning[1303] = contentTuning[1]
for i = 1305, 1307 do contentTuning[i] = contentTuning[1] end
contentTuning[1308] = contentTuning[631]
contentTuning[1309] = contentTuning[1304]
contentTuning[1311] = contentTuning[290]
contentTuning[1312] = contentTuning[176]
contentTuning[1313] = contentTuning[1]
for i = 1315, 1318 do contentTuning[i] = contentTuning[1314] end
for i = 1320, 1323 do contentTuning[i] = contentTuning[1319] end
contentTuning[1325] = contentTuning[743]
for i = 1327, 1336 do contentTuning[i] = contentTuning[1326] end
for i = 1338, 1340 do contentTuning[i] = contentTuning[1326] end
contentTuning[1342] = contentTuning[290]
contentTuning[1346] = contentTuning[990]
contentTuning[1347] = contentTuning[1310]
contentTuning[1351] = contentTuning[1]
contentTuning[1353] = contentTuning[1]
contentTuning[1354] = contentTuning[1265]
contentTuning[1355] = contentTuning[1]
contentTuning[1356] = contentTuning[1343]
contentTuning[1357] = contentTuning[1]
contentTuning[1359] = contentTuning[1310]
contentTuning[1360] = contentTuning[1304]
for i = 1368, 1370 do contentTuning[i] = contentTuning[1] end
contentTuning[1372] = contentTuning[1]
contentTuning[1374] = contentTuning[1358]
contentTuning[1376] = contentTuning[1265]
contentTuning[1377] = contentTuning[1304]
contentTuning[1379] = contentTuning[288]
contentTuning[1382] = contentTuning[371]
contentTuning[1383] = contentTuning[1]
contentTuning[1384] = contentTuning[1295]
contentTuning[1385] = contentTuning[63]
contentTuning[1386] = contentTuning[1]
contentTuning[1387] = contentTuning[1]
contentTuning[1390] = contentTuning[1]
contentTuning[1391] = contentTuning[1]
contentTuning[1392] = contentTuning[467]
for i = 1393, 1396 do contentTuning[i] = contentTuning[1] end
contentTuning[1398] = contentTuning[1]
contentTuning[1399] = contentTuning[1]
contentTuning[1401] = contentTuning[747]
for i = 1403, 1407 do contentTuning[i] = contentTuning[1310] end
contentTuning[1409] = contentTuning[57]
contentTuning[1410] = contentTuning[52]
contentTuning[1418] = contentTuning[21]
for i = 1419, 1421 do contentTuning[i] = contentTuning[288] end
contentTuning[1423] = contentTuning[371]
for i = 1424, 1426 do contentTuning[i] = contentTuning[744] end
contentTuning[1428] = contentTuning[1427]
contentTuning[1430] = contentTuning[63]
for i = 1432, 1461 do contentTuning[i] = contentTuning[646] end
contentTuning[1462] = contentTuning[1]
contentTuning[1463] = contentTuning[631]
contentTuning[1464] = contentTuning[1]
contentTuning[1465] = contentTuning[1265]
contentTuning[1466] = contentTuning[1]
contentTuning[1467] = contentTuning[168]
contentTuning[1468] = contentTuning[1]
contentTuning[1469] = contentTuning[1265]
contentTuning[1470] = contentTuning[1]
contentTuning[1471] = contentTuning[631]
contentTuning[1472] = contentTuning[1]
contentTuning[1473] = contentTuning[1265]
contentTuning[1474] = contentTuning[1]
contentTuning[1475] = contentTuning[168]
for i = 1476, 1479 do contentTuning[i] = contentTuning[741] end
contentTuning[1480] = contentTuning[78]
for i = 1481, 1484 do contentTuning[i] = contentTuning[741] end
contentTuning[1485] = contentTuning[78]
for i = 1486, 1642 do contentTuning[i] = contentTuning[646] end
for i = 1643, 1691 do contentTuning[i] = contentTuning[747] end
for i = 1693, 1705 do contentTuning[i] = contentTuning[1692] end
contentTuning[1706] = contentTuning[747]
contentTuning[1707] = contentTuning[709]
contentTuning[1708] = contentTuning[1]
for i = 1709, 1712 do contentTuning[i] = contentTuning[747] end
contentTuning[1714] = contentTuning[879]
contentTuning[1722] = contentTuning[631]
contentTuning[1723] = contentTuning[1422]
contentTuning[1724] = contentTuning[288]
contentTuning[1733] = contentTuning[1]
contentTuning[1734] = contentTuning[13]
contentTuning[1735] = contentTuning[13]
for i = 1736, 1769 do contentTuning[i] = contentTuning[1692] end
contentTuning[1770] = contentTuning[1]
for i = 1771, 1883 do contentTuning[i] = contentTuning[1692] end
contentTuning[1884] = contentTuning[646]
for i = 1885, 1926 do contentTuning[i] = contentTuning[1692] end
contentTuning[1927] = contentTuning[742]
contentTuning[1929] = contentTuning[742]
contentTuning[1930] = contentTuning[742]
contentTuning[1931] = contentTuning[1239]
contentTuning[1935] = contentTuning[646]
contentTuning[1937] = contentTuning[631]
for i = 1938, 1944 do contentTuning[i] = contentTuning[1692] end
contentTuning[1987] = contentTuning[168]
for i = 1988, 1990 do contentTuning[i] = contentTuning[631] end
for i = 1991, 1994 do contentTuning[i] = contentTuning[168] end
contentTuning[1995] = contentTuning[1]
contentTuning[1996] = contentTuning[631]
contentTuning[1997] = contentTuning[631]
for i = 1998, 2000 do contentTuning[i] = contentTuning[1] end
for i = 2001, 2012 do contentTuning[i] = contentTuning[168] end
for i = 2013, 2021 do contentTuning[i] = contentTuning[176] end
contentTuning[2022] = contentTuning[709]
contentTuning[2025] = contentTuning[1358]
contentTuning[2027] = contentTuning[1]
contentTuning[2028] = contentTuning[1]
contentTuning[2034] = contentTuning[290]
contentTuning[2036] = contentTuning[742]
contentTuning[2039] = contentTuning[1]
contentTuning[2040] = contentTuning[1692]
contentTuning[2042] = contentTuning[742]
contentTuning[2043] = contentTuning[742]
contentTuning[2044] = contentTuning[186]
contentTuning[2045] = contentTuning[335]
contentTuning[2046] = contentTuning[1]
contentTuning[2048] = contentTuning[290]
contentTuning[2049] = contentTuning[631]
contentTuning[2056] = contentTuning[2035]
contentTuning[2057] = contentTuning[742]
contentTuning[2060] = contentTuning[742]
for i = 2061, 2063 do contentTuning[i] = contentTuning[1] end
contentTuning[2066] = contentTuning[1]
contentTuning[2067] = contentTuning[2055]
contentTuning[2068] = contentTuning[1]
contentTuning[2069] = contentTuning[4]
contentTuning[2070] = contentTuning[13]
contentTuning[2071] = contentTuning[13]
contentTuning[2072] = contentTuning[168]
contentTuning[2073] = contentTuning[57]
contentTuning[2074] = contentTuning[63]
contentTuning[2075] = contentTuning[331]
contentTuning[2076] = contentTuning[290]
contentTuning[2077] = contentTuning[747]
for i = 2079, 2081 do contentTuning[i] = contentTuning[631] end
contentTuning[2082] = contentTuning[168]
contentTuning[2083] = contentTuning[176]
contentTuning[2084] = contentTuning[335]
contentTuning[2085] = contentTuning[949]
for i = 2086, 2090 do contentTuning[i] = contentTuning[742] end
contentTuning[2091] = contentTuning[2065]
for i = 2092, 2097 do contentTuning[i] = contentTuning[1692] end
contentTuning[2098] = contentTuning[742]
contentTuning[2099] = contentTuning[709]
contentTuning[2103] = contentTuning[1358]
for i = 2104, 2107 do contentTuning[i] = contentTuning[742] end
for i = 2108, 2110 do contentTuning[i] = contentTuning[631] end
contentTuning[2111] = contentTuning[168]
contentTuning[2112] = contentTuning[168]
contentTuning[2113] = contentTuning[176]
contentTuning[2114] = contentTuning[335]
contentTuning[2115] = contentTuning[742]
contentTuning[2116] = contentTuning[1692]
contentTuning[2117] = contentTuning[1]
contentTuning[2118] = contentTuning[1692]
contentTuning[2119] = contentTuning[176]
contentTuning[2120] = contentTuning[186]
contentTuning[2121] = contentTuning[631]
contentTuning[2122] = contentTuning[1295]
contentTuning[2123] = contentTuning[168]
contentTuning[2125] = contentTuning[742]
contentTuning[2127] = contentTuning[646]
contentTuning[2131] = contentTuning[2065]
contentTuning[2136] = contentTuning[1]
contentTuning[2137] = contentTuning[1]
contentTuning[2139] = contentTuning[742]
contentTuning[2140] = contentTuning[57]
contentTuning[2142] = contentTuning[747]
contentTuning[2144] = contentTuning[371]
contentTuning[2145] = contentTuning[1]
contentTuning[2146] = contentTuning[1]
contentTuning[2148] = contentTuning[1]
contentTuning[2149] = contentTuning[742]
contentTuning[2150] = contentTuning[746]
contentTuning[2151] = contentTuning[2078]
contentTuning[2155] = contentTuning[2078]
for i = 2157, 2161 do contentTuning[i] = contentTuning[2156] end
contentTuning[2163] = contentTuning[2156]
contentTuning[2164] = contentTuning[2078]
for i = 2165, 2168 do contentTuning[i] = contentTuning[742] end
for i = 2170, 2172 do contentTuning[i] = contentTuning[742] end
contentTuning[2173] = contentTuning[1]
contentTuning[2174] = contentTuning[1265]
contentTuning[2175] = contentTuning[1]
contentTuning[2176] = contentTuning[69]
contentTuning[2178] = contentTuning[371]
contentTuning[2182] = contentTuning[742]
contentTuning[2194] = contentTuning[69]
contentTuning[2214] = contentTuning[2078]
contentTuning[2215] = contentTuning[742]
contentTuning[2216] = contentTuning[63]
contentTuning[2217] = contentTuning[1692]
contentTuning[2218] = contentTuning[176]
contentTuning[2219] = contentTuning[176]
for i = 2221, 2223 do contentTuning[i] = contentTuning[2152] end
contentTuning[2225] = contentTuning[2152]
contentTuning[2226] = contentTuning[2152]
contentTuning[2227] = contentTuning[2224]
contentTuning[2228] = contentTuning[2224]
contentTuning[2229] = contentTuning[2220]
contentTuning[2230] = contentTuning[2224]
contentTuning[2231] = contentTuning[2224]
contentTuning[2232] = contentTuning[2152]
for i = 2233, 2236 do contentTuning[i] = contentTuning[2224] end
contentTuning[2237] = contentTuning[2152]
for i = 2238, 2240 do contentTuning[i] = contentTuning[2224] end
for i = 2241, 2243 do contentTuning[i] = contentTuning[2152] end
contentTuning[2244] = contentTuning[2224]
contentTuning[2245] = contentTuning[2224]
contentTuning[2246] = contentTuning[2152]
contentTuning[2247] = contentTuning[2224]
contentTuning[2248] = contentTuning[2224]
for i = 2249, 2254 do contentTuning[i] = contentTuning[2152] end
contentTuning[2255] = contentTuning[2220]
for i = 2256, 2258 do contentTuning[i] = contentTuning[2152] end
for i = 2259, 2261 do contentTuning[i] = contentTuning[2224] end
for i = 2262, 2265 do contentTuning[i] = contentTuning[2152] end
contentTuning[2266] = contentTuning[2078]
contentTuning[2267] = contentTuning[2078]
contentTuning[2269] = contentTuning[2268]
contentTuning[2270] = contentTuning[2078]
contentTuning[2271] = contentTuning[2268]
contentTuning[2272] = contentTuning[2078]
contentTuning[2273] = contentTuning[2268]
contentTuning[2274] = contentTuning[2268]
contentTuning[2275] = contentTuning[2220]
for i = 2276, 2280 do contentTuning[i] = contentTuning[2078] end
contentTuning[2281] = contentTuning[2268]
for i = 2282, 2286 do contentTuning[i] = contentTuning[2078] end
contentTuning[2288] = contentTuning[2268]
contentTuning[2289] = contentTuning[2078]
contentTuning[2290] = contentTuning[2268]
contentTuning[2291] = contentTuning[2078]
contentTuning[2292] = contentTuning[2268]
for i = 2293, 2297 do contentTuning[i] = contentTuning[2078] end
contentTuning[2298] = contentTuning[2268]
contentTuning[2299] = contentTuning[2268]
contentTuning[2300] = contentTuning[2078]
contentTuning[2301] = contentTuning[2268]
contentTuning[2302] = contentTuning[2078]
contentTuning[2303] = contentTuning[2220]
contentTuning[2304] = contentTuning[2078]
contentTuning[2305] = contentTuning[2287]
for i = 2306, 2309 do contentTuning[i] = contentTuning[2078] end
contentTuning[2310] = contentTuning[2268]
for i = 2311, 2313 do contentTuning[i] = contentTuning[2153] end
for i = 2315, 2320 do contentTuning[i] = contentTuning[2153] end
for i = 2321, 2325 do contentTuning[i] = contentTuning[2314] end
contentTuning[2326] = contentTuning[2153]
contentTuning[2327] = contentTuning[2153]
contentTuning[2328] = contentTuning[2314]
contentTuning[2329] = contentTuning[2314]
contentTuning[2330] = contentTuning[2153]
contentTuning[2331] = contentTuning[2314]
contentTuning[2332] = contentTuning[2153]
contentTuning[2333] = contentTuning[2314]
contentTuning[2334] = contentTuning[2153]
contentTuning[2335] = contentTuning[2153]
for i = 2336, 2339 do contentTuning[i] = contentTuning[2314] end
contentTuning[2340] = contentTuning[2153]
for i = 2341, 2345 do contentTuning[i] = contentTuning[2314] end
contentTuning[2346] = contentTuning[2153]
contentTuning[2347] = contentTuning[2153]
contentTuning[2348] = contentTuning[2314]
contentTuning[2349] = contentTuning[2153]
contentTuning[2350] = contentTuning[2314]
contentTuning[2351] = contentTuning[2153]
contentTuning[2352] = contentTuning[2153]
contentTuning[2353] = contentTuning[2314]
contentTuning[2354] = contentTuning[2153]
contentTuning[2355] = contentTuning[2153]
contentTuning[2356] = contentTuning[2314]
contentTuning[2357] = contentTuning[2153]
contentTuning[2358] = contentTuning[2153]
contentTuning[2360] = contentTuning[2359]
contentTuning[2361] = contentTuning[2359]
contentTuning[2362] = contentTuning[2154]
for i = 2363, 2365 do contentTuning[i] = contentTuning[2359] end
for i = 2366, 2368 do contentTuning[i] = contentTuning[2154] end
contentTuning[2369] = contentTuning[2359]
for i = 2370, 2372 do contentTuning[i] = contentTuning[2154] end
contentTuning[2373] = contentTuning[2359]
contentTuning[2374] = contentTuning[2359]
contentTuning[2375] = contentTuning[2154]
contentTuning[2376] = contentTuning[2359]
contentTuning[2377] = contentTuning[2359]
contentTuning[2378] = contentTuning[2154]
for i = 2379, 2381 do contentTuning[i] = contentTuning[2359] end
contentTuning[2382] = contentTuning[2154]
contentTuning[2383] = contentTuning[2154]
contentTuning[2384] = contentTuning[2359]
contentTuning[2385] = contentTuning[2154]
contentTuning[2386] = contentTuning[2154]
contentTuning[2387] = contentTuning[2359]
contentTuning[2388] = contentTuning[2154]
contentTuning[2389] = contentTuning[2359]
contentTuning[2390] = contentTuning[2154]
contentTuning[2391] = contentTuning[2154]
contentTuning[2392] = contentTuning[2359]
for i = 2393, 2395 do contentTuning[i] = contentTuning[2154] end
contentTuning[2396] = contentTuning[2359]
contentTuning[2397] = contentTuning[2154]
contentTuning[2398] = contentTuning[2154]
contentTuning[2399] = contentTuning[2359]
contentTuning[2401] = contentTuning[2154]
contentTuning[2402] = contentTuning[2359]
contentTuning[2403] = contentTuning[2359]
contentTuning[2404] = contentTuning[2154]
contentTuning[2405] = contentTuning[746]
contentTuning[2407] = contentTuning[746]
contentTuning[2408] = contentTuning[2406]
contentTuning[2409] = contentTuning[746]
contentTuning[2410] = contentTuning[2406]
contentTuning[2411] = contentTuning[746]
for i = 2412, 2416 do contentTuning[i] = contentTuning[2406] end
for i = 2417, 2420 do contentTuning[i] = contentTuning[746] end
contentTuning[2421] = contentTuning[742]
contentTuning[2422] = contentTuning[742]
contentTuning[2424] = contentTuning[2078]
contentTuning[2425] = contentTuning[186]
contentTuning[2426] = contentTuning[742]
contentTuning[2428] = contentTuning[742]
contentTuning[2429] = contentTuning[52]
for i = 2430, 2433 do contentTuning[i] = contentTuning[742] end
contentTuning[2436] = contentTuning[2152]
contentTuning[2437] = contentTuning[2078]
contentTuning[2438] = contentTuning[2224]
contentTuning[2439] = contentTuning[2152]
contentTuning[2440] = contentTuning[2224]
contentTuning[2441] = contentTuning[2152]
contentTuning[2442] = contentTuning[2224]
contentTuning[2444] = contentTuning[2078]
contentTuning[2445] = contentTuning[2224]
contentTuning[2455] = contentTuning[2156]
contentTuning[2456] = contentTuning[2156]
contentTuning[2466] = contentTuning[2078]
contentTuning[2467] = contentTuning[2359]
contentTuning[2468] = contentTuning[2153]
contentTuning[2469] = contentTuning[2152]
contentTuning[2471] = contentTuning[2156]
contentTuning[2472] = contentTuning[2078]
contentTuning[2473] = contentTuning[288]
contentTuning[2474] = contentTuning[2156]
contentTuning[2475] = contentTuning[2153]
contentTuning[2476] = contentTuning[2154]
contentTuning[2479] = contentTuning[2224]
contentTuning[2481] = contentTuning[2154]
contentTuning[2483] = contentTuning[2153]
contentTuning[2484] = contentTuning[2181]
contentTuning[2486] = contentTuning[2156]
contentTuning[2501] = contentTuning[2287]
contentTuning[2502] = contentTuning[2224]
contentTuning[2503] = contentTuning[2268]
contentTuning[2504] = contentTuning[2152]
contentTuning[2505] = contentTuning[2152]
contentTuning[2506] = contentTuning[2400]
contentTuning[2507] = contentTuning[2156]
contentTuning[2508] = contentTuning[2181]
for i = 2509, 2512 do contentTuning[i] = contentTuning[2152] end
contentTuning[2514] = contentTuning[69]
contentTuning[2516] = contentTuning[2153]
contentTuning[2517] = contentTuning[2078]
contentTuning[2518] = contentTuning[2078]
contentTuning[2519] = contentTuning[2153]
contentTuning[2520] = contentTuning[2314]
contentTuning[2521] = contentTuning[2156]
for i = 2522, 2524 do contentTuning[i] = contentTuning[2078] end
contentTuning[2525] = contentTuning[2179]
contentTuning[2526] = contentTuning[2179]
contentTuning[2527] = contentTuning[2078]
for i = 2528, 2530 do contentTuning[i] = contentTuning[2152] end
contentTuning[2531] = contentTuning[2156]
contentTuning[2532] = contentTuning[2156]
contentTuning[2533] = contentTuning[2078]
contentTuning[2534] = contentTuning[2078]
contentTuning[2535] = contentTuning[2152]
contentTuning[2536] = contentTuning[2287]
contentTuning[2537] = contentTuning[2078]
contentTuning[2539] = contentTuning[2078]
contentTuning[2540] = contentTuning[2078]
contentTuning[2541] = contentTuning[2154]
contentTuning[2542] = contentTuning[2152]
contentTuning[2543] = contentTuning[2153]
contentTuning[2545] = contentTuning[2154]
contentTuning[2546] = contentTuning[2154]
contentTuning[2547] = contentTuning[742]
contentTuning[2548] = contentTuning[2078]
contentTuning[2549] = contentTuning[2480]
contentTuning[2551] = contentTuning[2078]
contentTuning[2552] = contentTuning[2154]
contentTuning[2553] = contentTuning[2154]
contentTuning[2555] = contentTuning[2156]
contentTuning[2563] = contentTuning[1692]
contentTuning[2564] = contentTuning[57]
contentTuning[2565] = contentTuning[168]
contentTuning[2566] = contentTuning[168]
contentTuning[2567] = contentTuning[2287]
contentTuning[2569] = contentTuning[69]
contentTuning[2570] = contentTuning[1692]
contentTuning[2571] = contentTuning[1692]
contentTuning[2572] = contentTuning[742]
contentTuning[2573] = contentTuning[2078]
for i = 2574, 2576 do contentTuning[i] = contentTuning[1692] end
contentTuning[2578] = contentTuning[1692]
contentTuning[2579] = contentTuning[2224]
contentTuning[2580] = contentTuning[288]
contentTuning[2584] = contentTuning[631]
contentTuning[2585] = contentTuning[168]
contentTuning[2586] = contentTuning[2078]
contentTuning[2587] = contentTuning[2078]
contentTuning[2589] = contentTuning[2156]
contentTuning[2590] = contentTuning[2156]
contentTuning[2591] = contentTuning[2220]
contentTuning[2592] = contentTuning[1]
contentTuning[2593] = contentTuning[1]
contentTuning[2594] = contentTuning[2554]
contentTuning[2595] = contentTuning[1]
contentTuning[2596] = contentTuning[81]
contentTuning[2597] = contentTuning[41]
contentTuning[2598] = contentTuning[66]
contentTuning[2599] = contentTuning[1692]
contentTuning[2600] = contentTuning[2550]
contentTuning[2601] = contentTuning[2550]
contentTuning[2602] = contentTuning[2078]
contentTuning[2603] = contentTuning[2078]
contentTuning[2604] = contentTuning[2480]
contentTuning[2605] = contentTuning[2550]
contentTuning[2606] = contentTuning[2554]
contentTuning[2607] = contentTuning[2078]
for i = 2608, 2611 do contentTuning[i] = contentTuning[2156] end
contentTuning[2612] = contentTuning[69]
for i = 2614, 2620 do contentTuning[i] = contentTuning[2613] end
contentTuning[2621] = contentTuning[2156]
for i = 2622, 2633 do contentTuning[i] = contentTuning[2613] end
contentTuning[2635] = contentTuning[2078]
contentTuning[2636] = contentTuning[1692]
contentTuning[2637] = contentTuning[1]
contentTuning[2638] = contentTuning[1]
contentTuning[2639] = contentTuning[1713]
contentTuning[2640] = contentTuning[290]
contentTuning[2641] = contentTuning[2179]
for i = 2642, 2644 do contentTuning[i] = contentTuning[742] end
for i = 2645, 2648 do contentTuning[i] = contentTuning[2156] end
contentTuning[2650] = contentTuning[2613]
contentTuning[2651] = contentTuning[186]
contentTuning[2652] = contentTuning[2078]
contentTuning[2658] = contentTuning[186]
contentTuning[2659] = contentTuning[631]
contentTuning[2660] = contentTuning[168]
contentTuning[2661] = contentTuning[631]
contentTuning[2662] = contentTuning[335]
contentTuning[2663] = contentTuning[631]
contentTuning[2664] = contentTuning[168]
contentTuning[2665] = contentTuning[742]
contentTuning[2666] = contentTuning[176]
contentTuning[2667] = contentTuning[2156]
contentTuning[2669] = contentTuning[2156]
contentTuning[2670] = contentTuning[742]
contentTuning[2671] = contentTuning[57]
contentTuning[2672] = contentTuning[168]
contentTuning[2673] = contentTuning[168]
contentTuning[2674] = contentTuning[742]
contentTuning[2675] = contentTuning[742]
contentTuning[2676] = contentTuning[2613]
contentTuning[2678] = contentTuning[2550]
contentTuning[2679] = contentTuning[1]
contentTuning[2680] = contentTuning[2181]
contentTuning[2681] = contentTuning[2156]
contentTuning[2682] = contentTuning[2156]
contentTuning[2683] = contentTuning[2485]
contentTuning[2684] = contentTuning[2156]
contentTuning[2687] = contentTuning[2156]
contentTuning[2689] = contentTuning[1]
contentTuning[2690] = contentTuning[69]
contentTuning[2691] = contentTuning[2613]
contentTuning[2692] = contentTuning[2613]
contentTuning[2693] = contentTuning[2435]
contentTuning[2694] = contentTuning[2613]
contentTuning[2695] = contentTuning[1]
contentTuning[2696] = contentTuning[2613]
contentTuning[2697] = contentTuning[1]
contentTuning[2698] = contentTuning[2156]
contentTuning[2699] = contentTuning[2613]
contentTuning[2700] = contentTuning[2359]
contentTuning[2701] = contentTuning[2613]
for i = 2702, 2704 do contentTuning[i] = contentTuning[1] end
contentTuning[2705] = contentTuning[2613]
for i = 2706, 2709 do contentTuning[i] = contentTuning[2156] end
contentTuning[2711] = contentTuning[2613]
contentTuning[2713] = contentTuning[2613]
contentTuning[2714] = contentTuning[2156]
contentTuning[2715] = contentTuning[2550]
contentTuning[2716] = contentTuning[2078]
for i = 2722, 2724 do contentTuning[i] = contentTuning[2720] end
contentTuning[2727] = contentTuning[2720]
contentTuning[2729] = contentTuning[2720]
contentTuning[2731] = contentTuning[2156]
contentTuning[2732] = contentTuning[1265]
contentTuning[2734] = contentTuning[2677]
contentTuning[2735] = contentTuning[742]
contentTuning[2736] = contentTuning[2156]
contentTuning[2737] = contentTuning[1]
contentTuning[2739] = contentTuning[2078]
contentTuning[2740] = contentTuning[2078]
contentTuning[2741] = contentTuning[2554]
contentTuning[2742] = contentTuning[2554]
for i = 2743, 2745 do contentTuning[i] = contentTuning[2078] end
contentTuning[2747] = contentTuning[2550]
contentTuning[2748] = contentTuning[2480]
contentTuning[2749] = contentTuning[2078]
contentTuning[2750] = contentTuning[2550]
contentTuning[2751] = contentTuning[2480]
contentTuning[2752] = contentTuning[2078]
contentTuning[2753] = contentTuning[2078]
contentTuning[2754] = contentTuning[2746]
contentTuning[2755] = contentTuning[2554]
contentTuning[2756] = contentTuning[2078]
contentTuning[2757] = contentTuning[2554]
for i = 2758, 2760 do contentTuning[i] = contentTuning[2078] end
contentTuning[2761] = contentTuning[1]
contentTuning[2763] = contentTuning[2078]
contentTuning[2764] = contentTuning[2480]
contentTuning[2765] = contentTuning[2480]
contentTuning[2766] = contentTuning[2746]
contentTuning[2767] = contentTuning[2550]
contentTuning[2769] = contentTuning[2554]
contentTuning[2772] = contentTuning[2746]
contentTuning[2773] = contentTuning[2746]
contentTuning[2774] = contentTuning[2156]
contentTuning[2775] = contentTuning[2156]
contentTuning[2776] = contentTuning[2768]
contentTuning[2777] = contentTuning[2768]
contentTuning[2778] = contentTuning[2156]
contentTuning[2779] = contentTuning[2554]
contentTuning[2780] = contentTuning[2554]
contentTuning[2781] = contentTuning[2156]
contentTuning[2782] = contentTuning[2771]
contentTuning[2783] = contentTuning[2771]
contentTuning[2784] = contentTuning[2156]
contentTuning[2785] = contentTuning[2179]
contentTuning[2786] = contentTuning[2179]
contentTuning[2787] = contentTuning[2746]
contentTuning[2788] = contentTuning[2156]
contentTuning[2789] = contentTuning[2770]
contentTuning[2790] = contentTuning[2078]
contentTuning[2791] = contentTuning[2078]
contentTuning[2792] = contentTuning[2554]
contentTuning[2793] = contentTuning[2078]
contentTuning[2794] = contentTuning[2554]
contentTuning[2796] = contentTuning[1]
contentTuning[2802] = contentTuning[2720]
contentTuning[2803] = contentTuning[2462]
contentTuning[2804] = contentTuning[2797]
contentTuning[2810] = contentTuning[2462]
contentTuning[2814] = contentTuning[151]
for i = 2815, 2818 do contentTuning[i] = contentTuning[1] end
for i = 2819, 2823 do contentTuning[i] = contentTuning[2156] end
contentTuning[2824] = contentTuning[2720]
contentTuning[2825] = contentTuning[288]
contentTuning[2826] = contentTuning[2078]
contentTuning[2827] = contentTuning[623]
contentTuning[2828] = contentTuning[2156]
contentTuning[2829] = contentTuning[2462]
contentTuning[2831] = contentTuning[2554]
contentTuning[2832] = contentTuning[2677]
for i = 2833, 2835 do contentTuning[i] = contentTuning[2078] end
contentTuning[2837] = contentTuning[2809]
contentTuning[2838] = contentTuning[2808]
contentTuning[2839] = contentTuning[2181]
contentTuning[2840] = contentTuning[2156]
contentTuning[2843] = contentTuning[151]
contentTuning[2845] = contentTuning[2078]
contentTuning[2847] = contentTuning[2846]
contentTuning[2848] = contentTuning[2156]
contentTuning[2849] = contentTuning[2846]
contentTuning[2850] = contentTuning[2746]
contentTuning[2855] = contentTuning[2677]
contentTuning[2856] = contentTuning[1]
contentTuning[2857] = contentTuning[2795]
contentTuning[2860] = contentTuning[2462]
contentTuning[2861] = contentTuning[2809]
contentTuning[2863] = contentTuning[2462]
for i = 2864, 2867 do contentTuning[i] = contentTuning[2156] end
contentTuning[2869] = contentTuning[2809]
for i = 2871, 2873 do contentTuning[i] = contentTuning[1] end
contentTuning[2874] = contentTuning[2795]
for i = 2875, 2881 do contentTuning[i] = contentTuning[2720] end
contentTuning[2882] = contentTuning[2795]
contentTuning[2883] = contentTuning[2795]
contentTuning[2884] = contentTuning[13]
contentTuning[2885] = contentTuning[168]
contentTuning[2886] = contentTuning[168]
contentTuning[2887] = contentTuning[2462]
contentTuning[2888] = contentTuning[2720]
contentTuning[2892] = contentTuning[2720]
contentTuning[2893] = contentTuning[2677]
contentTuning[2894] = contentTuning[2677]
contentTuning[2896] = contentTuning[2720]
for i = 2897, 2904 do contentTuning[i] = contentTuning[168] end
contentTuning[2905] = contentTuning[1]
contentTuning[2906] = contentTuning[742]
for i = 2907, 2922 do contentTuning[i] = contentTuning[1692] end
contentTuning[2925] = contentTuning[168]
contentTuning[2926] = contentTuning[1]
contentTuning[2927] = contentTuning[13]
contentTuning[2928] = contentTuning[631]
contentTuning[2929] = contentTuning[631]
contentTuning[2930] = contentTuning[1]
contentTuning[2933] = contentTuning[2720]
contentTuning[2934] = contentTuning[2720]
contentTuning[2938] = contentTuning[2746]
contentTuning[2939] = contentTuning[2768]
contentTuning[2940] = contentTuning[2770]
contentTuning[2942] = contentTuning[1]
contentTuning[2943] = contentTuning[2550]
for i = 2945, 2949 do contentTuning[i] = contentTuning[1] end
contentTuning[2951] = contentTuning[13]
contentTuning[2952] = contentTuning[631]
contentTuning[2953] = contentTuning[631]
contentTuning[2954] = contentTuning[1]
contentTuning[2955] = contentTuning[2937]
contentTuning[2956] = contentTuning[2768]
contentTuning[2957] = contentTuning[1]
contentTuning[2958] = contentTuning[2770]
contentTuning[2967] = contentTuning[2868]
contentTuning[2974] = contentTuning[2677]
for i = 2979, 2982 do contentTuning[i] = contentTuning[2720] end
contentTuning[2983] = contentTuning[1]
contentTuning[2984] = contentTuning[2588]
contentTuning[2985] = contentTuning[2156]
contentTuning[2989] = contentTuning[2720]
contentTuning[2991] = contentTuning[1]
contentTuning[2992] = contentTuning[2720]
contentTuning[2993] = contentTuning[2720]
contentTuning[2994] = contentTuning[2462]
contentTuning[2995] = contentTuning[2435]
contentTuning[2996] = contentTuning[1713]
contentTuning[2997] = contentTuning[2435]
contentTuning[3002] = contentTuning[2179]
contentTuning[3004] = contentTuning[2720]
contentTuning[3005] = contentTuning[2720]
contentTuning[3006] = contentTuning[1]
for i = 3007, 3010 do contentTuning[i] = contentTuning[2720] end
contentTuning[3011] = contentTuning[1]
contentTuning[3013] = contentTuning[2720]
contentTuning[3014] = contentTuning[2720]
contentTuning[3017] = contentTuning[2862]
contentTuning[3020] = contentTuning[2462]
contentTuning[3022] = contentTuning[623]
contentTuning[3023] = contentTuning[623]
contentTuning[3024] = contentTuning[3021]
contentTuning[3025] = contentTuning[3021]
contentTuning[3026] = contentTuning[623]
contentTuning[3031] = contentTuning[2795]
for i = 3032, 3060 do contentTuning[i] = contentTuning[1692] end
contentTuning[3062] = contentTuning[1713]
contentTuning[3063] = contentTuning[1265]
contentTuning[3066] = contentTuning[1]
contentTuning[3087] = contentTuning[3086]
contentTuning[3088] = contentTuning[3086]
contentTuning[3098] = contentTuning[2613]
contentTuning[3110] = contentTuning[1]
contentTuning[3126] = contentTuning[1]
contentTuning[3128] = contentTuning[2720]
contentTuning[3129] = contentTuning[2720]
contentTuning[3140] = contentTuning[3021]
contentTuning[3141] = contentTuning[623]
contentTuning[3227] = contentTuning[1]
for i = 3228, 3231 do contentTuning[i] = contentTuning[2720] end
contentTuning[3233] = contentTuning[623]
contentTuning[3313] = contentTuning[3021]
contentTuning[3320] = contentTuning[3021]
contentTuning[3321] = contentTuning[623]
contentTuning[3322] = contentTuning[623]
contentTuning[3323] = contentTuning[3021]
contentTuning[3343] = contentTuning[371]
contentTuning[3344] = contentTuning[1]
contentTuning[3356] = contentTuning[1]
contentTuning[3358] = contentTuning[1]
contentTuning[3361] = contentTuning[2720]
contentTuning[3365] = contentTuning[1]
contentTuning[3366] = contentTuning[3096]
contentTuning[3380] = contentTuning[1]
contentTuning[3382] = contentTuning[1]
contentTuning[3387] = contentTuning[1]
contentTuning[3394] = contentTuning[1]
contentTuning[3396] = contentTuning[1]
contentTuning[3408] = contentTuning[1]
contentTuning[3411] = contentTuning[1]
contentTuning[3413] = contentTuning[1]
contentTuning[3415] = contentTuning[1]
contentTuning[3418] = contentTuning[1]
contentTuning[3420] = contentTuning[1]
contentTuning[3422] = contentTuning[1]
contentTuning[3424] = contentTuning[1]
contentTuning[3426] = contentTuning[1]
contentTuning[3428] = contentTuning[1]
contentTuning[3430] = contentTuning[1]
contentTuning[3432] = contentTuning[1]
contentTuning[3434] = contentTuning[1]
contentTuning[3436] = contentTuning[1]
contentTuning[3438] = contentTuning[1]
contentTuning[3440] = contentTuning[1]
contentTuning[3442] = contentTuning[1]
contentTuning[3444] = contentTuning[1]
contentTuning[3446] = contentTuning[1]
contentTuning[3448] = contentTuning[1]
contentTuning[3450] = contentTuning[1]
contentTuning[3452] = contentTuning[1]
contentTuning[3457] = contentTuning[1]
contentTuning[3459] = contentTuning[1]
contentTuning[3461] = contentTuning[1]
contentTuning[3463] = contentTuning[1]
contentTuning[3465] = contentTuning[1]
contentTuning[3467] = contentTuning[1]
contentTuning[3469] = contentTuning[1]
contentTuning[3471] = contentTuning[1]
contentTuning[3473] = contentTuning[1]
contentTuning[3483] = contentTuning[1]
contentTuning[3493] = contentTuning[1]
contentTuning[3495] = contentTuning[1]
contentTuning[3497] = contentTuning[1]
contentTuning[3499] = contentTuning[1]
contentTuning[3501] = contentTuning[1]
contentTuning[3503] = contentTuning[1]
contentTuning[3505] = contentTuning[1]
contentTuning[3507] = contentTuning[1]
contentTuning[3509] = contentTuning[1]
contentTuning[3511] = contentTuning[1]
contentTuning[3514] = contentTuning[1]
contentTuning[3516] = contentTuning[1]
contentTuning[3518] = contentTuning[2795]
contentTuning[3519] = contentTuning[1]
contentTuning[3521] = contentTuning[1]
contentTuning[3523] = contentTuning[1]
contentTuning[3525] = contentTuning[1]
contentTuning[3527] = contentTuning[1]
contentTuning[3529] = contentTuning[1]
contentTuning[3531] = contentTuning[1]
contentTuning[3534] = contentTuning[1]
contentTuning[3536] = contentTuning[1]
contentTuning[3538] = contentTuning[1]
contentTuning[3540] = contentTuning[1]
contentTuning[3542] = contentTuning[1]
contentTuning[3544] = contentTuning[1]
contentTuning[3546] = contentTuning[1]
contentTuning[3548] = contentTuning[1]
contentTuning[3550] = contentTuning[1]
contentTuning[3552] = contentTuning[1]
contentTuning[3554] = contentTuning[1]
contentTuning[3556] = contentTuning[1]
contentTuning[3558] = contentTuning[1]
contentTuning[3560] = contentTuning[1]
contentTuning[3563] = contentTuning[1]
contentTuning[3592] = contentTuning[2720]
contentTuning[3594] = contentTuning[1]
contentTuning[3595] = contentTuning[1]
contentTuning[3602] = contentTuning[2720]
contentTuning[3603] = contentTuning[3021]
for i = 3605, 3613 do contentTuning[i] = contentTuning[3021] end
contentTuning[3615] = contentTuning[623]
contentTuning[3617] = contentTuning[2720]
contentTuning[3631] = contentTuning[1]
contentTuning[3644] = contentTuning[1]
contentTuning[3906] = contentTuning[623]
contentTuning[4150] = contentTuning[737]
contentTuning[4153] = contentTuning[2078]
contentTuning[4159] = contentTuning[2720]
contentTuning[4179] = contentTuning[290]
contentTuning[4182] = contentTuning[290]
contentTuning[4183] = contentTuning[737]
contentTuning[4193] = contentTuning[1]
contentTuning[4240] = contentTuning[3021]
contentTuning[4271] = contentTuning[2720]
contentTuning[4278] = contentTuning[3021]
contentTuning[4279] = contentTuning[3085]
contentTuning[4280] = contentTuning[623]
contentTuning[4281] = contentTuning[3021]
contentTuning[4285] = contentTuning[1]
contentTuning[4305] = contentTuning[1]
contentTuning[4306] = contentTuning[1]
contentTuning[4311] = contentTuning[3021]
contentTuning[4325] = contentTuning[1]
contentTuning[4329] = contentTuning[1]
contentTuning[4442] = contentTuning[623]
contentTuning[4455] = contentTuning[1]
for i = 4467, 4471 do contentTuning[i] = contentTuning[1] end
contentTuning[4532] = contentTuning[1]
contentTuning[4540] = contentTuning[1]
contentTuning[4544] = contentTuning[1]
for i = 4567, 4569 do contentTuning[i] = contentTuning[3021] end
contentTuning[4576] = contentTuning[2720]
for i = 4579, 4581 do contentTuning[i] = contentTuning[1] end
contentTuning[4685] = contentTuning[1]
contentTuning[4898] = contentTuning[623]
contentTuning[4907] = contentTuning[3021]
for i = 4911, 4913 do contentTuning[i] = contentTuning[371] end
contentTuning[5011] = contentTuning[1]
contentTuning[5042] = contentTuning[1]
contentTuning[5071] = contentTuning[623]
contentTuning[5087] = contentTuning[1]
contentTuning[5096] = contentTuning[2720]
contentTuning[5097] = contentTuning[2720]
contentTuning[5102] = contentTuning[623]
contentTuning[5117] = contentTuning[623]
contentTuning[5122] = contentTuning[5103]
contentTuning[5127] = contentTuning[623]
contentTuning[5128] = contentTuning[5103]
contentTuning[5130] = contentTuning[623]
contentTuning[5131] = contentTuning[5103]
contentTuning[5135] = contentTuning[623]
contentTuning[5136] = contentTuning[5103]
contentTuning[5138] = contentTuning[623]
contentTuning[5139] = contentTuning[5103]
contentTuning[5140] = contentTuning[623]
contentTuning[5141] = contentTuning[623]
contentTuning[5142] = contentTuning[5103]
contentTuning[5143] = contentTuning[623]
contentTuning[5144] = contentTuning[623]
contentTuning[5145] = contentTuning[5103]
contentTuning[5223] = contentTuning[3021]
contentTuning[5224] = contentTuning[623]
contentTuning[5236] = contentTuning[3021]
contentTuning[5262] = contentTuning[371]
contentTuning[5267] = contentTuning[1345]
contentTuning[5268] = contentTuning[290]
for i = 5382, 5384 do contentTuning[i] = contentTuning[1] end
contentTuning[5402] = contentTuning[1]
contentTuning[5645] = contentTuning[3021]
contentTuning[5754] = contentTuning[1]
contentTuning[5840] = contentTuning[741]
contentTuning[5915] = contentTuning[4284]
contentTuning[5916] = contentTuning[3021]
contentTuning[5945] = contentTuning[2720]
contentTuning[5997] = contentTuning[4239]
contentTuning[6001] = contentTuning[3085]
contentTuning[6002] = contentTuning[3021]
contentTuning[6006] = contentTuning[3021]
contentTuning[6007] = contentTuning[3021]
contentTuning[6008] = contentTuning[623]
contentTuning[6009] = contentTuning[623]
for i = 6010, 6016 do contentTuning[i] = contentTuning[3021] end
for i = 6018, 6020 do contentTuning[i] = contentTuning[3021] end
contentTuning[6070] = contentTuning[623]
contentTuning[6157] = contentTuning[3021]
contentTuning[6257] = contentTuning[3021]
contentTuning[6380] = contentTuning[2156]
contentTuning[6413] = contentTuning[3085]
for i = 6414, 6418 do contentTuning[i] = contentTuning[1] end
contentTuning[6420] = contentTuning[1265]
contentTuning[6421] = contentTuning[1]
contentTuning[6423] = contentTuning[1]
contentTuning[6425] = contentTuning[1]
contentTuning[6782] = contentTuning[6735]
contentTuning[6864] = contentTuning[1]
contentTuning[6872] = contentTuning[52]
contentTuning[6879] = contentTuning[1713]
contentTuning[6880] = contentTuning[6003]
contentTuning[6888] = contentTuning[6735]
contentTuning[6915] = contentTuning[2720]
contentTuning[6998] = contentTuning[4239]
local curves = {
	{[1]=1, [80]=80},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=40, [40]=44},
	{[32]=36, [39]=43, [40]=44, [42]=47, [43]=48, [44]=49},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50},
	{[32]=36, [39]=44, [40]=45, [42]=47, [43]=49, [44]=50},
	{[32]=36, [39]=45, [40]=45, [42]=48, [43]=49, [44]=50},
	{[1]=10, [2]=11, [6]=16, [7]=17, [8]=19, [9]=22, [10]=24, [11]=30, [19]=77, [20]=84, [21]=89, [22]=95, [23]=100, [24]=106, [27]=123, [28]=129, [31]=146, [32]=152, [33]=157, [34]=163, [37]=180, [38]=186, [39]=191, [40]=197, [41]=202, [43]=214, [44]=219, [45]=225, [46]=230, [47]=236, [48]=241, [49]=247, [50]=252, [51]=258, [52]=267, [54]=284, [55]=294, [56]=301, [57]=309, [58]=316, [59]=325, [60]=332, [62]=344, [64]=352, [67]=362, [68]=365, [70]=371},
	{[650]=0, [689]=0, [690]=1, [691]=0, [850]=0},
	{[650]=0, [809]=0, [810]=1, [811]=0, [850]=0},
	{[37]=1, [40]=6, [44]=12, [45]=12, [47]=18},
	{[32]=37, [39]=46, [40]=46, [42]=49, [43]=50, [44]=50},
	{[32]=39, [39]=47, [40]=48, [42]=50, [43]=50, [44]=50},
	{[32]=37, [39]=45, [40]=46, [42]=48, [43]=50, [44]=50},
	{[32]=37, [39]=46, [40]=47, [42]=50, [43]=50, [44]=50},
	{[32]=39, [39]=48, [40]=49, [42]=50, [43]=50, [44]=50},
	{[1]=5, [3]=5, [17]=22},
	{[1]=5, [3]=6, [17]=24},
	{[1]=5, [3]=8, [17]=25},
	{[1]=5, [3]=5, [24]=29},
	{[39]=44, [40]=44, [44]=49},
	{[1]=5, [3]=5, [24]=29, [26]=30, [27]=32, [30]=35, [32]=37, [33]=37, [35]=40, [38]=43, [39]=44, [40]=44},
	{[39]=44, [40]=44, [44]=47},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=44, [39]=44, [40]=45, [45]=45},
	{[1]=5, [3]=8, [24]=30, [26]=32, [27]=33, [30]=35, [32]=37, [33]=37, [35]=41, [38]=44, [39]=44, [40]=46, [45]=46},
	{[1]=5, [3]=12, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=45, [40]=46, [45]=46},
	{[38]=39, [39]=47, [44]=50},
	{[1]=5, [3]=5, [24]=29, [26]=30, [27]=32, [30]=35, [32]=37, [33]=37, [35]=40, [38]=43, [39]=44, [40]=44, [44]=48, [45]=50},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50},
	{[1]=5, [3]=9, [24]=30, [26]=32, [27]=33, [30]=35, [32]=37, [33]=37, [35]=41, [38]=44, [39]=44, [40]=47, [44]=50, [45]=50},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [45]=50},
	{[1]=5, [3]=9, [24]=30, [26]=32, [27]=33, [30]=35, [32]=37, [33]=37, [35]=41, [38]=44, [39]=44, [40]=47, [44]=50, [45]=52},
	{[1]=1, [7]=7, [10]=10, [11]=12, [12]=16, [14]=22, [15]=24, [17]=30, [18]=32, [21]=40, [22]=42, [24]=48, [25]=50, [37]=86, [38]=90, [40]=96, [41]=100, [43]=106, [44]=110, [47]=120, [49]=128, [50]=131, [53]=143, [54]=146, [60]=170, [70]=170},
	{[1]=7, [7]=13, [10]=19, [11]=22, [12]=26, [14]=32, [15]=34, [17]=40, [18]=42, [21]=50, [22]=52, [24]=58, [25]=60, [37]=96, [38]=100, [40]=106, [41]=110, [43]=116, [44]=120, [47]=130, [49]=138, [50]=141, [53]=153, [54]=156, [60]=180, [70]=180},
	{[1]=17, [7]=23, [10]=29, [11]=32, [12]=36, [14]=42, [15]=44, [17]=50, [18]=52, [21]=60, [22]=62, [24]=68, [25]=70, [37]=106, [38]=110, [40]=116, [41]=120, [43]=126, [44]=130, [47]=140, [49]=148, [50]=151, [53]=163, [54]=166, [60]=190, [70]=190},
	{[1]=33, [31]=35, [120]=35},
	{[1]=15, [2]=16, [6]=21, [7]=22, [8]=24, [9]=27, [10]=29, [11]=35, [19]=82, [20]=89, [21]=94, [22]=100, [23]=105, [24]=111, [27]=128, [28]=134, [31]=151, [32]=157, [33]=162, [34]=168, [37]=185, [38]=191, [39]=196, [40]=202, [41]=207, [43]=219, [44]=224, [45]=230, [46]=235, [47]=241, [48]=246, [49]=252, [50]=257, [51]=263, [52]=272, [54]=289, [55]=299, [56]=306, [57]=314, [58]=321, [59]=330, [60]=337, [62]=349, [64]=357, [67]=367, [68]=370, [70]=376},
	{[1]=5, [2]=6, [6]=11, [7]=12, [8]=14, [9]=17, [10]=19, [11]=25, [19]=72, [20]=79, [21]=84, [22]=90, [23]=95, [24]=101, [27]=118, [28]=124, [31]=141, [32]=147, [33]=152, [34]=158, [37]=175, [38]=181, [39]=186, [40]=192, [41]=197, [43]=209, [44]=214, [45]=220, [46]=225, [47]=231, [48]=236, [49]=242, [50]=247, [51]=253, [52]=262, [54]=279, [55]=289, [56]=296, [57]=304, [58]=311, [59]=320, [60]=327, [62]=339, [64]=347, [67]=357, [68]=360, [70]=366},
	{[44]=50, [45]=50, [49]=57, [50]=57},
	{[5]=5, [45]=50, [49]=58},
	{[5]=5, [45]=50, [49]=59},
	{[45]=50, [49]=56, [50]=56},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=60},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=51, [49]=60, [50]=60},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=52, [49]=60, [50]=60},
	{[1]=201, [60]=240.59234619141},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=60},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=60},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=60},
	{[1]=5, [3]=5, [33]=29, [50]=60},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=64},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=68},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=51, [49]=60, [50]=62},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=66},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=52, [49]=60, [50]=70},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=52, [49]=60, [50]=82},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=78},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=64},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=51, [49]=60, [50]=74},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=70},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=72},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=76},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=80},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=85},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=82},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=51, [49]=60, [50]=90},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [49]=59, [50]=100},
	{[1]=5, [3]=11, [24]=30, [26]=32, [27]=33, [30]=37, [32]=39, [33]=39, [35]=43, [38]=45, [39]=46, [40]=48, [44]=50, [45]=52, [49]=60, [50]=105},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=76},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=85},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=95},
	{[1]=8, [3]=8, [24]=30, [26]=32, [27]=33, [30]=36, [32]=38, [33]=38, [35]=42, [38]=45, [39]=45, [40]=47, [44]=50, [45]=50, [50]=105},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=105},
	{[1]=5, [2]=6, [6]=11, [7]=12, [8]=14, [9]=17, [10]=19, [11]=25, [19]=72, [20]=79, [21]=84, [22]=90, [23]=95, [24]=101, [27]=118, [28]=124, [31]=141, [32]=147, [33]=152, [34]=158, [37]=175, [38]=181, [39]=186, [40]=192, [41]=197, [43]=209, [44]=214, [45]=220, [46]=225, [47]=231, [48]=236, [49]=242, [50]=247, [51]=253, [52]=262, [54]=279, [55]=289, [56]=296, [57]=304, [58]=311, [59]=320, [60]=327, [62]=339, [64]=347, [67]=357, [69]=382, [70]=408, [71]=434, [72]=460, [73]=483, [74]=506, [75]=515, [76]=525, [77]=532, [78]=538, [79]=545, [80]=551},
	{[0]=1, [11]=6, [16]=11, [19]=14, [21]=16, [24]=19, [26]=21, [29]=24, [31]=26, [34]=29, [36]=31, [39]=34, [41]=36, [44]=39, [46]=41, [49]=44, [53]=48, [56]=51, [59]=54, [63]=56, [67]=59, [71]=63, [75]=67, [78]=71, [80]=74},
	{[1]=14, [7]=20, [10]=26, [11]=29, [12]=33, [14]=39, [15]=41, [17]=47, [18]=49, [21]=57, [22]=59, [24]=65, [25]=67, [37]=103, [38]=107, [40]=113, [41]=117, [43]=123, [44]=127, [47]=137, [49]=145, [50]=148, [53]=160, [54]=163, [60]=187, [70]=187},
	{[1]=1, [7]=7, [10]=13, [11]=16, [12]=20, [14]=26, [15]=28, [17]=34, [18]=36, [21]=44, [22]=46, [24]=52, [25]=54, [37]=90, [38]=94, [40]=100, [41]=104, [43]=110, [44]=114, [47]=124, [49]=132, [50]=135, [53]=147, [54]=150, [60]=174, [70]=174},
	{[1]=27, [7]=33, [10]=39, [11]=42, [12]=46, [14]=52, [15]=54, [17]=60, [18]=62, [21]=70, [22]=72, [24]=78, [25]=80, [37]=116, [38]=120, [40]=126, [41]=130, [43]=136, [44]=140, [47]=150, [49]=158, [50]=161, [53]=173, [54]=176, [60]=200, [70]=200},
	{[1]=5, [7]=11, [10]=17, [11]=20, [12]=24, [14]=30, [15]=32, [17]=38, [18]=40, [21]=48, [22]=50, [24]=56, [25]=58, [37]=94, [38]=98, [40]=104, [41]=108, [43]=114, [44]=118, [47]=128, [49]=136, [50]=139, [53]=151, [54]=154, [60]=178, [70]=178},
	{[1]=21, [7]=27, [10]=33, [11]=36, [12]=40, [14]=46, [15]=48, [17]=54, [18]=56, [21]=64, [22]=66, [24]=72, [25]=74, [37]=110, [38]=114, [40]=120, [41]=124, [43]=130, [44]=134, [47]=144, [49]=152, [50]=155, [53]=167, [54]=170, [60]=194, [70]=194},
	{[1]=47, [7]=53, [10]=59, [11]=62, [12]=66, [14]=72, [15]=74, [17]=80, [18]=82, [21]=90, [22]=92, [24]=98, [25]=100, [37]=136, [38]=140, [40]=146, [41]=150, [43]=156, [44]=160, [47]=170, [49]=178, [50]=181, [53]=193, [54]=196, [60]=220, [70]=220},
	{[1]=2, [2]=2, [22]=24, [39]=49, [40]=50, [41]=51, [42]=52, [43]=53, [45]=55, [48]=58, [49]=59, [50]=59, [51]=59, [56]=59, [59]=59, [60]=59, [70]=59},
	{[1]=4, [2]=5, [7]=13, [10]=19, [16]=24, [33]=49, [34]=50, [35]=51, [36]=52, [37]=53, [39]=55, [42]=58, [43]=59, [44]=60, [49]=65, [51]=65, [56]=65, [59]=65, [60]=65, [70]=65},
	{[1]=6, [2]=7, [4]=13, [10]=24, [27]=49, [28]=50, [29]=51, [30]=52, [31]=53, [33]=55, [36]=58, [37]=59, [38]=60, [49]=71, [51]=71, [56]=71, [59]=71, [60]=71, [70]=71},
	{[50]=50, [70]=70},
	{[1]=1, [10]=1, [11]=16, [15]=16, [16]=31, [18]=31, [19]=39, [20]=39, [21]=44, [23]=44, [24]=52, [25]=52, [26]=57, [28]=57, [29]=66, [30]=66, [31]=72, [33]=72, [34]=81, [35]=81, [36]=87, [38]=87, [39]=97, [40]=97, [41]=104, [43]=104, [44]=114, [45]=114, [46]=121, [48]=121, [49]=132, [50]=132, [51]=139, [53]=139, [54]=150, [55]=150, [56]=158, [58]=158, [59]=170},
	{[1]=14, [10]=14, [11]=29, [15]=29, [16]=44, [18]=44, [19]=52, [20]=52, [21]=57, [23]=57, [24]=65, [25]=65, [26]=70, [28]=70, [29]=79, [30]=79, [31]=85, [33]=85, [34]=94, [35]=94, [36]=100, [38]=100, [39]=110, [40]=110, [41]=117, [43]=117, [44]=127, [45]=127, [46]=134, [48]=134, [49]=145, [50]=145, [51]=152, [53]=152, [54]=163, [55]=163, [56]=171, [58]=171, [59]=183},
	{[1]=1, [10]=1, [11]=6, [15]=6, [16]=21, [18]=21, [19]=29, [20]=29, [21]=34, [23]=34, [24]=42, [25]=42, [26]=47, [28]=47, [29]=56, [30]=56, [31]=62, [33]=62, [34]=71, [35]=71, [36]=77, [38]=77, [39]=87, [40]=87, [41]=94, [43]=94, [44]=104, [45]=104, [46]=111, [48]=111, [49]=122, [50]=122, [51]=129, [53]=129, [54]=140, [55]=140, [56]=148, [58]=148, [59]=160},
	{[1]=27, [10]=27, [11]=42, [15]=42, [16]=57, [18]=57, [19]=65, [20]=65, [21]=70, [23]=70, [24]=78, [25]=78, [26]=83, [28]=83, [29]=92, [30]=92, [31]=98, [33]=98, [34]=107, [35]=107, [36]=113, [38]=113, [39]=123, [40]=123, [41]=130, [43]=130, [44]=140, [45]=140, [46]=147, [48]=147, [49]=158, [50]=158, [51]=165, [53]=165, [54]=176, [55]=176, [56]=184, [58]=184, [59]=196},
	{[48]=85, [50]=91, [51]=96, [52]=103, [55]=121, [56]=128, [57]=134, [58]=146, [59]=150, [60]=154},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [49]=57, [50]=57, [51]=88, [60]=158},
	{[10]=15, [40]=58},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=76, [51]=90, [59]=138, [60]=138},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [49]=57, [50]=57, [51]=88, [59]=146, [60]=184},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=76, [51]=90, [59]=138, [60]=164},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=85, [59]=155, [60]=220},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [49]=57, [50]=57, [51]=88, [59]=146, [60]=210},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=76, [51]=90, [59]=138, [60]=190},
	{[45]=219, [58]=219, [69]=329, [70]=340, [80]=340},
	{[45]=232, [58]=232, [69]=342, [70]=353, [80]=353},
	{[60]=60, [80]=80},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=85, [59]=155, [60]=272},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [49]=57, [50]=57, [51]=88, [59]=146, [60]=236},
	{[1]=5, [3]=5, [24]=30, [26]=32, [27]=33, [30]=36, [32]=37, [33]=38, [35]=42, [38]=44, [39]=44, [40]=45, [44]=49, [45]=50, [49]=58, [50]=76, [51]=90, [59]=138, [60]=200},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [48]=83, [50]=92, [59]=146, [60]=252, [70]=252},
	{[59]=146, [60]=252, [70]=252},
	{[1]=12, [2]=13, [6]=18, [7]=19, [8]=21, [9]=24, [10]=26, [11]=32, [19]=79, [20]=86, [21]=91, [22]=97, [23]=102, [24]=108, [27]=125, [28]=131, [31]=148, [32]=154, [33]=159, [34]=165, [37]=182, [38]=188, [39]=193, [40]=199, [41]=204, [43]=216, [44]=221, [45]=227, [46]=232, [47]=238, [48]=243, [49]=249, [50]=254, [51]=260, [52]=269, [54]=286, [55]=296, [56]=303, [57]=311, [58]=318, [59]=327, [60]=334, [62]=346, [64]=354, [67]=364, [68]=367, [70]=373},
	{[60]=249, [69]=329, [70]=340, [72]=340},
	{[1]=21, [7]=27, [10]=33, [11]=36, [12]=40, [14]=46, [15]=48, [17]=54, [18]=56, [21]=64, [22]=66, [24]=72, [25]=74, [37]=110, [38]=114, [40]=120, [41]=124, [43]=130, [44]=134, [47]=144, [49]=152, [50]=155, [53]=167, [54]=170, [59]=190, [60]=236, [70]=236},
	{[60]=252, [69]=342, [70]=353, [72]=353},
	{[58]=206, [69]=316},
	{[10]=13, [20]=41, [25]=54, [30]=69, [35]=84, [40]=100, [50]=135, [60]=174, [61]=220, [62]=234, [63]=248, [64]=262, [65]=276, [66]=290, [67]=304, [68]=318, [69]=332, [70]=342},
	{[10]=15, [68]=356, [69]=382, [70]=408, [71]=434, [72]=460, [73]=483, [74]=506, [75]=515, [76]=522, [77]=528, [78]=535, [79]=541, [80]=548},
	{[0]=0, [70]=379, [80]=450},
	{[0]=0, [70]=382, [80]=453},
	{[0]=0, [70]=385, [80]=456},
	{[0]=0, [70]=388, [80]=459},
	{[0]=0, [70]=392, [80]=463},
	{[55]=356, [68]=356, [69]=382, [70]=408, [71]=434, [72]=460, [73]=483, [74]=506, [75]=515, [76]=525, [77]=532, [78]=538, [79]=545, [80]=551, [90]=551},
	{[55]=363, [68]=363, [69]=389, [70]=415, [71]=441, [72]=467, [73]=490, [74]=509, [75]=518, [76]=528, [77]=535, [78]=541, [79]=548, [80]=554, [90]=554},
	{[55]=369, [68]=369, [69]=395, [70]=421, [71]=447, [72]=473, [73]=496, [74]=513, [75]=522, [76]=532, [77]=539, [78]=545, [79]=552, [80]=554, [90]=554},
	{[50]=447, [75]=447, [76]=513, [78]=513, [79]=539, [90]=539},
	{[50]=447, [72]=447, [73]=473, [75]=473, [76]=522, [78]=522, [79]=545, [90]=545},
	{[50]=441, [75]=441, [76]=509, [78]=509, [79]=535, [90]=535},
	{[50]=441, [72]=441, [73]=467, [75]=467, [76]=518, [78]=518, [79]=541, [90]=541},
	{[50]=434, [75]=434, [76]=506, [78]=506, [79]=532, [90]=532},
	{[50]=434, [72]=434, [73]=460, [75]=460, [76]=515, [78]=515, [79]=538, [90]=538},
	{[1]=3, [25]=31, [26]=31, [27]=32, [28]=33, [31]=37, [32]=37, [39]=45, [40]=46, [43]=49, [44]=50, [45]=50, [46]=51, [48]=83, [50]=92, [59]=146, [60]=202, [69]=450, [80]=450},
	{[1]=21, [27]=123, [28]=129, [31]=146, [32]=152, [39]=191, [40]=197, [43]=214, [44]=219, [45]=225, [46]=230, [49]=247, [50]=252, [51]=258, [59]=325, [60]=332, [67]=362, [70]=415, [74]=509, [76]=528, [79]=548, [80]=554},
	{[1]=24, [27]=136, [28]=142, [31]=161, [32]=168, [39]=211, [40]=217, [43]=236, [44]=241, [45]=248, [46]=253, [49]=272, [50]=278, [51]=284, [59]=358, [60]=366, [69]=405, [70]=445, [74]=539, [76]=558, [79]=578, [80]=584},
	{[1]=19, [27]=111, [28]=117, [31]=132, [32]=137, [39]=172, [40]=178, [43]=193, [44]=198, [45]=212, [46]=217, [49]=234, [50]=239, [51]=245, [59]=312, [60]=319, [69]=355, [70]=402, [74]=496, [76]=515, [79]=534, [80]=541},
	{[1]=1, [7]=7, [10]=13, [11]=18, [12]=24, [14]=35, [15]=40, [17]=51, [18]=57, [21]=73, [22]=79, [24]=90, [25]=95, [37]=161, [38]=167, [40]=178, [41]=183, [43]=194, [44]=199, [47]=216, [49]=227, [50]=232, [53]=249, [54]=254, [60]=287, [61]=293, [62]=298, [63]=304, [64]=309, [65]=315, [66]=320, [67]=326, [68]=331, [69]=337, [70]=467},
	{[1]=5, [3]=5, [24]=29, [26]=31, [27]=32, [30]=35, [32]=37, [33]=37, [35]=41, [38]=43, [39]=44, [40]=46, [44]=50, [45]=50, [50]=85, [59]=155, [60]=272, [70]=480, [80]=571},
	{[10]=15, [68]=363, [69]=389, [70]=415, [71]=441, [72]=467, [73]=489, [74]=509, [75]=519, [76]=525, [77]=532, [78]=538, [79]=545, [80]=551},
	{[70]=70, [90]=90},
	{[50]=70, [75]=70, [76]=73, [78]=73, [79]=76, [90]=76},
	{[10]=15, [68]=369, [69]=395, [70]=421, [71]=447, [72]=473, [73]=496, [74]=512, [75]=522, [76]=528, [77]=535, [78]=541, [79]=548, [80]=554},
	{[10]=15, [68]=356, [69]=382, [70]=408, [71]=434, [72]=460, [73]=483, [74]=506, [75]=515, [76]=522, [77]=528, [78]=535, [79]=541, [80]=587},
	{[10]=15, [68]=363, [69]=389, [70]=415, [71]=441, [72]=467, [73]=489, [74]=509, [75]=519, [76]=525, [77]=532, [78]=538, [79]=545, [80]=590},
	{[10]=15, [68]=369, [69]=395, [70]=421, [71]=447, [72]=473, [73]=496, [74]=512, [75]=522, [76]=528, [77]=535, [78]=541, [79]=548, [80]=593},
	{[1]=21, [27]=123, [28]=129, [31]=146, [32]=152, [39]=191, [40]=197, [43]=214, [44]=219, [45]=225, [46]=230, [49]=247, [50]=252, [51]=258, [59]=325, [60]=332, [67]=362, [70]=415, [74]=509, [76]=528, [79]=548, [80]=593},
	{[1]=24, [27]=136, [28]=142, [31]=161, [32]=168, [39]=211, [40]=217, [43]=236, [44]=241, [45]=248, [46]=253, [49]=272, [50]=278, [51]=284, [59]=358, [60]=366, [69]=405, [70]=445, [74]=539, [76]=558, [79]=607, [80]=623},
	{[1]=19, [27]=111, [28]=117, [31]=132, [32]=137, [39]=172, [40]=178, [43]=193, [44]=198, [45]=212, [46]=217, [49]=234, [50]=239, [51]=245, [59]=312, [60]=319, [69]=355, [70]=402, [74]=496, [76]=515, [79]=569, [80]=587},
	{[10]=15, [68]=356, [69]=382, [70]=408, [71]=434, [72]=460, [73]=483, [74]=506, [75]=515, [76]=522, [77]=528, [78]=535, [79]=541, [80]=626},
	{[10]=15, [68]=363, [69]=389, [70]=415, [71]=441, [72]=467, [73]=489, [74]=509, [75]=519, [76]=525, [77]=532, [78]=538, [79]=545, [80]=629},
	{[10]=15, [68]=369, [69]=395, [70]=421, [71]=447, [72]=473, [73]=496, [74]=512, [75]=522, [76]=528, [77]=535, [78]=541, [79]=548, [80]=632},
	{[1]=19, [27]=111, [28]=117, [31]=132, [32]=137, [39]=172, [40]=178, [43]=193, [44]=198, [45]=212, [46]=217, [49]=234, [50]=239, [51]=245, [59]=312, [60]=319, [69]=355, [70]=402, [74]=496, [76]=515, [79]=603, [80]=632},
	{[1]=24, [27]=136, [28]=142, [31]=161, [32]=168, [39]=211, [40]=217, [43]=236, [44]=241, [45]=248, [46]=253, [49]=272, [50]=278, [51]=284, [59]=358, [60]=366, [69]=405, [70]=445, [74]=539, [76]=558, [79]=640, [80]=668},
	{[1]=21, [27]=123, [28]=129, [31]=146, [32]=152, [39]=191, [40]=197, [43]=214, [44]=219, [45]=225, [46]=230, [49]=247, [50]=252, [51]=258, [59]=325, [60]=332, [67]=362, [70]=415, [74]=509, [76]=528, [79]=548, [80]=632},
	{[1]=1, [10]=13, [11]=18, [12.11676692963]=26.55172157288, [13]=29, [14]=35, [15]=40, [16]=46, [17]=51, [18]=57, [19]=62, [20]=68, [21]=73, [22]=79, [23]=84, [24]=90, [25]=95, [26]=101, [27]=106, [28]=112, [29]=117, [30]=123, [31]=128, [32]=134, [33]=139, [34]=145, [35]=150, [36]=156, [37]=161, [38]=167, [39]=172, [40]=178, [41]=183, [43]=194, [44]=199, [45]=205, [46]=210, [47]=216, [48]=221, [49]=227, [50]=232, [51]=238, [52]=243, [53]=249, [54]=254, [55]=260, [56]=265, [57]=271, [58]=276, [59]=282, [60]=287, [61]=293, [62]=298, [63]=304, [64]=309, [65]=315, [66]=320, [67]=326, [68]=331, [70]=342, [80]=571},
	{[1]=1, [1300]=1300},
	{[1]=13, [10]=13, [11]=18, [12]=24, [13]=29, [14]=35, [15]=40, [16]=46, [17]=51, [18]=57, [19]=62, [20]=68, [21]=73, [22]=79, [23]=84, [24]=90, [25]=95, [26]=101, [27]=106, [28]=112, [29]=117, [30]=123, [31]=128, [32]=134, [33]=139, [34]=145, [35]=150, [36]=156, [37]=161, [38]=167, [39]=172, [40]=178, [41]=183, [42.00400161743]=188, [43]=194, [44]=199, [45]=205, [46]=210, [47]=216, [48]=221, [49]=227, [50]=232, [51]=238, [52]=243, [53]=249, [54]=254, [55]=260, [56]=265, [57]=271, [58]=276, [59]=282, [60]=287, [61]=293, [62]=298, [63]=304, [64]=309, [65]=315, [66]=320, [67]=326, [68]=331, [69]=337, [70]=342, [71]=365, [72]=388, [73]=411, [74]=434, [75]=457, [76]=480, [77]=503, [78]=526, [79]=549, [80]=571},
	{[1]=18, [10]=18, [11]=24, [12]=29, [13]=35, [14]=40, [15]=46, [16]=51, [17]=57, [18]=62, [19]=68, [20]=73, [21]=79, [22]=84, [23]=90, [24]=95, [25]=101, [26]=106, [27]=112, [28]=117, [29]=123, [30]=128, [31]=134, [32]=139, [33]=145, [34]=150, [35]=156, [36]=161, [37]=167, [38]=172, [39]=178, [40]=183, [41]=188, [42.00400161743]=194, [43]=199, [44]=205, [45]=210, [46]=216, [47]=221, [48]=227, [49]=232, [50]=238, [51]=243, [52]=249, [53]=254, [54]=260, [55]=265, [56]=271, [57]=276, [58]=282, [59]=287, [60]=293, [61]=298, [62]=304, [63]=309, [64]=315, [65]=320, [66]=326, [67]=331, [68]=337, [69]=342, [70]=365, [71]=388, [72]=411, [73]=434, [74]=457, [75]=480, [76]=503, [77]=526, [78]=549, [79]=571, [80]=578},
	{[0]=0, [1300]=1300},
	{[1]=24, [10]=24, [11]=29, [12]=35, [13]=40, [14]=46, [15]=51, [16]=57, [17]=62, [18]=68, [19]=73, [20]=79, [21]=84, [22]=90, [23]=95, [24]=101, [25]=106, [26]=112, [27]=117, [28]=123, [29]=128, [30]=134, [31]=139, [32]=145, [33]=150, [34]=156, [35]=161, [36]=167, [37]=172, [38]=178, [39]=183, [40]=188, [41]=194, [42]=199, [43]=205, [44]=210, [45]=216, [46]=221, [47]=227, [48]=232, [49]=238, [50]=243, [51]=249, [52]=254, [53]=260, [54]=265, [55]=271, [56]=276, [57]=282, [58]=287, [59]=293, [60]=298, [61]=304, [62]=309, [63]=315, [64]=320, [65]=326, [66]=331, [67]=337, [68]=342, [69]=365, [70]=388, [71]=411, [72]=434, [73]=457, [74]=480, [75]=503, [76]=526, [77]=549, [78]=571, [79]=578, [80]=584},
	{[1]=1, [10]=10, [342]=70, [571]=80, [574]=80, [577]=80, [580]=80, [584]=83, [587]=83, [590]=83, [593]=83, [597]=86, [600]=86, [603]=86, [606]=86, [610]=89, [613]=89, [616]=89, [619]=89, [623]=92, [626]=92, [629]=92, [632]=92, [636]=95, [639]=95, [642]=98, [645]=99, [649]=100, [652]=101, [655]=102, [658]=103, [662]=104, [665]=105, [668]=108, [671]=111, [675]=115, [678]=118, [681]=121, [684]=124, [688]=128, [691]=131, [694]=134, [697]=137, [701]=141, [704]=144, [707]=147, [710]=150, [714]=154, [717]=157, [720]=160, [723]=163, [727]=167, [730]=170, [1300]=170},
	{[10]=15, [80]=80, [81]=100, [82]=114, [83]=128, [84]=142, [85]=156, [86]=170, [87]=184, [88]=198, [89]=212, [90]=226},
	{[10]=15, [80]=86, [81]=106, [82]=120, [83]=134, [84]=148, [85]=162, [86]=176, [87]=190, [88]=204, [89]=218, [90]=232},
	{[10]=15, [80]=93, [81]=113, [82]=127, [83]=141, [84]=155, [85]=169, [86]=183, [87]=197, [88]=211, [89]=225, [90]=239},
	{[1]=1, [7]=7, [10]=15, [27]=123, [51]=258, [59]=325, [67]=362, [74]=509, [76]=528, [79]=548, [80]=655},
	{[80]=120, [81]=133, [82]=139, [83]=145, [84]=152, [85]=159, [86]=165, [87]=174, [88]=183, [89]=192, [90]=201},
	{[1]=4, [79]=82, [80]=126, [81]=139, [82]=145, [83]=151, [84]=158, [85]=165, [86]=171, [87]=180, [88]=189, [89]=198, [90]=207},
	{[1]=7, [79]=85, [80]=133, [81]=146, [82]=152, [83]=158, [84]=165, [85]=172, [86]=178, [87]=187, [88]=196, [89]=205, [90]=214},
	{[80]=80, [81]=120, [82]=133, [83]=139, [84]=145, [85]=152, [86]=159, [87]=165, [88]=174, [89]=183, [90]=197},
	{[1]=1, [130]=130},
	{[1]=1, [79]=79, [80]=120, [81]=133, [82]=139, [83]=145, [84]=152, [85]=159, [86]=165, [87]=174, [88]=183, [89]=192, [90]=201},
	{[1]=1, [80]=80, [81]=133, [82]=139, [83]=145, [84]=152, [85]=159, [86]=165, [87]=174, [88]=183, [89]=192, [90]=201},
}
local squishCurve = curves[155]
Lib.LoadData({
	version = DATA_VERSION,
	build = BUILD,
	squishMax = 1300,
	squishCurve = squishCurve,
	bonuses = bonuses,
	curves = curves,
	contentTuning = contentTuning,
})
