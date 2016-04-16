// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:3,spmd:1,grmd:1,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1855,x:36095,y:33070,varname:node_1855,prsc:2|diff-8901-OUT,spec-7518-OUT,gloss-9689-OUT,normal-1493-OUT,lwrap-3219-OUT;n:type:ShaderForge.SFN_Tex2d,id:1058,x:32560,y:32842,varname:_node_1058,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|MIP-250-OUT,TEX-872-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:872,x:35211,y:32898,ptovrint:False,ptlb:car paint mask ( r g - oil uv b - water a - diff,ptin:_carpaintmaskrgoiluvbwateradiff,varname:_carpaintmaskrgoiluvbwateradiff,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5483,x:31898,y:32897,varname:_node_3928,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|UVIN-3330-OUT,MIP-343-OUT,TEX-872-TEX;n:type:ShaderForge.SFN_Slider,id:1909,x:32729,y:32544,ptovrint:False,ptlb:metallic,ptin:_metallic,varname:_metallic,prsc:2,min:0,cur:0.8457574,max:1;n:type:ShaderForge.SFN_Slider,id:7949,x:32012,y:33200,ptovrint:False,ptlb:mask roughness exponent,ptin:_maskroughnessexponent,varname:_maskroughnessexponent,prsc:2,min:-1,cur:0.09171758,max:1;n:type:ShaderForge.SFN_Append,id:3669,x:32015,y:32598,varname:node_3669,prsc:2|A-311-OUT,B-2054-OUT;n:type:ShaderForge.SFN_Vector1,id:311,x:31766,y:32430,varname:node_311,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:2112,x:32187,y:32585,varname:node_2112,prsc:2|A-3669-OUT,B-7687-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7687,x:31531,y:32604,ptovrint:False,ptlb:mask random uv,ptin:_maskrandomuv,varname:_maskrandomuv,prsc:2,glob:False,v1:8;n:type:ShaderForge.SFN_Vector1,id:7283,x:32415,y:32750,varname:node_7283,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:3670,x:32335,y:32360,varname:node_3670,prsc:2,blmd:20,clmp:True|SRC-5483-G,DST-1058-A;n:type:ShaderForge.SFN_Power,id:1615,x:32169,y:32999,varname:node_1615,prsc:2|VAL-5483-R,EXP-7949-OUT;n:type:ShaderForge.SFN_Lerp,id:1116,x:32416,y:32972,varname:node_1116,prsc:2|A-3106-OUT,B-3670-OUT,T-1615-OUT;n:type:ShaderForge.SFN_Vector1,id:3106,x:32365,y:32842,varname:node_3106,prsc:2,v1:1;n:type:ShaderForge.SFN_Subtract,id:1316,x:31823,y:32730,varname:node_1316,prsc:2|A-1058-B,B-1058-G;n:type:ShaderForge.SFN_Add,id:2054,x:31793,y:32632,varname:node_2054,prsc:2|A-1316-OUT,B-1058-R;n:type:ShaderForge.SFN_ValueProperty,id:2601,x:32074,y:32489,ptovrint:False,ptlb:size,ptin:_size,varname:_size,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3330,x:32174,y:32726,varname:node_3330,prsc:2|A-2112-OUT,B-2601-OUT;n:type:ShaderForge.SFN_Lerp,id:9062,x:33339,y:32782,varname:node_9062,prsc:2|A-7329-OUT,B-1116-OUT,T-7811-OUT;n:type:ShaderForge.SFN_Slider,id:7811,x:32539,y:33144,ptovrint:False,ptlb:Oil factor,ptin:_Oilfactor,varname:_Oilfactor,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7329,x:32509,y:33271,ptovrint:False,ptlb:Oil,ptin:_Oil,varname:_Oil,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:1101,x:32875,y:32884,varname:node_1101,prsc:2|NRM-3984-OUT,EXP-4293-OUT;n:type:ShaderForge.SFN_NormalVector,id:3984,x:32807,y:32704,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:4293,x:32681,y:33041,ptovrint:False,ptlb:freshnel exponent,ptin:_freshnelexponent,varname:_freshnelexponent,prsc:2,min:0,cur:1.019264,max:8;n:type:ShaderForge.SFN_Vector1,id:2762,x:33165,y:32544,varname:node_2762,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:7518,x:34729,y:33350,varname:node_7518,prsc:2|A-2762-OUT,B-1909-OUT,T-523-OUT;n:type:ShaderForge.SFN_Clamp01,id:523,x:33187,y:32841,varname:node_523,prsc:2|IN-3923-OUT;n:type:ShaderForge.SFN_Power,id:1380,x:33128,y:33156,varname:node_1380,prsc:2|VAL-1101-OUT,EXP-4293-OUT;n:type:ShaderForge.SFN_Slider,id:250,x:31241,y:32757,ptovrint:False,ptlb:blur uv,ptin:_bluruv,varname:_bluruv,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:343,x:31568,y:33159,ptovrint:False,ptlb:Oil blur,ptin:_Oilblur,varname:_Oilblur,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Color,id:4996,x:33025,y:31787,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:8901,x:33399,y:32338,varname:node_8901,prsc:2|A-4996-RGB,B-9647-OUT,C-3641-OUT;n:type:ShaderForge.SFN_Slider,id:3641,x:32943,y:32277,ptovrint:False,ptlb:color power,ptin:_colorpower,varname:_colorpower,prsc:2,min:0,cur:2,max:2;n:type:ShaderForge.SFN_Clamp,id:9167,x:33887,y:32977,varname:node_9167,prsc:2|IN-9062-OUT,MIN-3072-OUT,MAX-8816-OUT;n:type:ShaderForge.SFN_Slider,id:3072,x:33398,y:32957,ptovrint:False,ptlb:min  oil,ptin:_minoil,varname:_minoil,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8816,x:33398,y:33077,ptovrint:False,ptlb:max oil,ptin:_maxoil,varname:_maxoil,prsc:2,min:0,cur:0.8634691,max:1;n:type:ShaderForge.SFN_Clamp,id:7162,x:33479,y:32170,varname:node_7162,prsc:2|IN-1453-A,MIN-2890-OUT,MAX-5744-OUT;n:type:ShaderForge.SFN_Slider,id:2890,x:33208,y:31982,ptovrint:False,ptlb:min color,ptin:_mincolor,varname:_mincolor,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:5744,x:32993,y:32054,ptovrint:False,ptlb:max color,ptin:_maxcolor,varname:_maxcolor,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Blend,id:9647,x:33604,y:31981,varname:node_9647,prsc:2,blmd:18,clmp:True|SRC-7162-OUT,DST-3670-OUT;n:type:ShaderForge.SFN_Tex2d,id:1453,x:32960,y:32121,varname:_node_7810,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|UVIN-6895-OUT,TEX-872-TEX;n:type:ShaderForge.SFN_TexCoord,id:313,x:30937,y:32948,varname:node_313,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6895,x:31168,y:32948,varname:node_6895,prsc:2|A-313-UVOUT,B-3421-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3421,x:30937,y:33146,ptovrint:False,ptlb:color tile,ptin:_colortile,varname:_colortile,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:3219,x:34117,y:32805,ptovrint:False,ptlb:oil  ranbow,ptin:_oilranbow,varname:_oilranbow,prsc:2,on:False|A-6172-OUT,B-3037-OUT;n:type:ShaderForge.SFN_Vector1,id:6172,x:33399,y:32527,varname:node_6172,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:8150,x:33661,y:32455,ptovrint:False,ptlb:oil gradient,ptin:_oilgradient,varname:_oilgradient,prsc:2,tex:b4b37353918a99140b9c304ac0aa8e3b,ntxv:0,isnm:False|UVIN-9479-OUT;n:type:ShaderForge.SFN_Multiply,id:9479,x:32565,y:32450,varname:node_9479,prsc:2|A-3670-OUT,B-3330-OUT;n:type:ShaderForge.SFN_Multiply,id:2436,x:33595,y:32706,varname:node_2436,prsc:2|A-8150-RGB,B-9062-OUT;n:type:ShaderForge.SFN_Desaturate,id:5770,x:33918,y:32437,varname:node_5770,prsc:2|COL-8150-RGB,DES-3777-OUT;n:type:ShaderForge.SFN_Slider,id:3777,x:33753,y:32782,ptovrint:False,ptlb:Raindow satturate,ptin:_Raindowsatturate,varname:_Raindowsatturate,prsc:2,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:1180,x:32631,y:32306,varname:node_1180,prsc:2;n:type:ShaderForge.SFN_Dot,id:9920,x:34074,y:32437,varname:node_9920,prsc:2,dt:0|A-1838-OUT,B-1180-OUT;n:type:ShaderForge.SFN_LightVector,id:1838,x:32624,y:32110,varname:node_1838,prsc:2;n:type:ShaderForge.SFN_Lerp,id:3037,x:33970,y:32166,varname:node_3037,prsc:2|A-4023-OUT,B-5770-OUT,T-9920-OUT;n:type:ShaderForge.SFN_Vector1,id:4023,x:34217,y:32395,varname:node_4023,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:98,x:34141,y:33084,ptovrint:False,ptlb:invert oil freshnel,ptin:_invertoilfreshnel,varname:_invertoilfreshnel,prsc:2,on:False|A-3923-OUT,B-2526-OUT;n:type:ShaderForge.SFN_OneMinus,id:2526,x:33915,y:33157,varname:node_2526,prsc:2|IN-3923-OUT;n:type:ShaderForge.SFN_Lerp,id:2454,x:34349,y:32735,varname:node_2454,prsc:2|A-98-OUT,B-9167-OUT,T-1000-OUT;n:type:ShaderForge.SFN_Slider,id:1000,x:33984,y:32924,ptovrint:False,ptlb:oil freshnel,ptin:_oilfreshnel,varname:_oilfreshnel,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:1547,x:34929,y:33167,varname:node_1547,prsc:2|A-4765-OUT,B-2454-OUT,T-2432-OUT;n:type:ShaderForge.SFN_Slider,id:2432,x:34313,y:33095,ptovrint:False,ptlb:final water\oil,ptin:_finalwateroil,varname:_finalwateroil,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:2499,x:34943,y:33350,varname:_node_5194,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|UVIN-2376-OUT,TEX-872-TEX;n:type:ShaderForge.SFN_Multiply,id:2376,x:31398,y:33565,varname:node_2376,prsc:2|A-313-UVOUT,B-3472-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3472,x:31182,y:33565,ptovrint:False,ptlb:water tile,ptin:_watertile,varname:_watertile,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:7920,x:33676,y:33312,ptovrint:False,ptlb:water mult,ptin:_watermult,varname:_watermult,prsc:2,min:-0.25,cur:0,max:0.25;n:type:ShaderForge.SFN_Multiply,id:4765,x:34178,y:33317,varname:node_4765,prsc:2|A-3578-OUT,B-7920-OUT;n:type:ShaderForge.SFN_Multiply,id:3923,x:33230,y:33019,varname:node_3923,prsc:2|A-1101-OUT,B-1380-OUT;n:type:ShaderForge.SFN_Multiply,id:8146,x:34668,y:32688,varname:node_8146,prsc:2|A-2454-OUT,B-1547-OUT;n:type:ShaderForge.SFN_OneMinus,id:5116,x:33702,y:33493,varname:node_5116,prsc:2|IN-2499-B;n:type:ShaderForge.SFN_Multiply,id:3578,x:33934,y:33470,varname:node_3578,prsc:2|A-5116-OUT,B-5116-OUT;n:type:ShaderForge.SFN_Tex2d,id:6418,x:34144,y:33625,ptovrint:False,ptlb:Drop normal,ptin:_Dropnormal,varname:_Dropnormal,prsc:2,tex:39cf1fc87ef43d143842b0ff81ee616f,ntxv:3,isnm:True|UVIN-4276-OUT;n:type:ShaderForge.SFN_Tex2d,id:5765,x:34300,y:33848,ptovrint:False,ptlb:Drop ,ptin:_Drop,varname:_Drop,prsc:2,tex:39cf1fc87ef43d143842b0ff81ee616f,ntxv:3,isnm:False|UVIN-4276-OUT;n:type:ShaderForge.SFN_TexCoord,id:128,x:33382,y:33845,varname:node_128,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4276,x:34049,y:33848,varname:node_4276,prsc:2|A-5977-OUT,B-5314-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5977,x:33833,y:33717,ptovrint:False,ptlb:drops scale,ptin:_dropsscale,varname:_dropsscale,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:6433,x:34534,y:33832,varname:node_6433,prsc:2|A-8881-OUT,B-2659-OUT,T-5765-R;n:type:ShaderForge.SFN_Vector1,id:2659,x:34516,y:33740,varname:node_2659,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8881,x:34638,y:33504,varname:node_8881,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Dot,id:7341,x:34728,y:33891,varname:node_7341,prsc:2,dt:1|A-716-OUT,B-771-OUT;n:type:ShaderForge.SFN_Vector3,id:716,x:34437,y:34148,varname:node_716,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_NormalVector,id:771,x:33623,y:34201,prsc:2,pt:False;n:type:ShaderForge.SFN_Lerp,id:2773,x:34977,y:33607,varname:node_2773,prsc:2|A-1547-OUT,B-6433-OUT,T-6669-OUT;n:type:ShaderForge.SFN_Lerp,id:312,x:34340,y:33642,varname:node_312,prsc:2|A-47-RGB,B-6418-RGB,T-7341-OUT;n:type:ShaderForge.SFN_Time,id:707,x:33189,y:34005,varname:node_707,prsc:2;n:type:ShaderForge.SFN_Add,id:5314,x:33788,y:33879,varname:node_5314,prsc:2|A-8244-OUT,B-8677-OUT;n:type:ShaderForge.SFN_Multiply,id:8677,x:33412,y:34079,varname:node_8677,prsc:2|A-707-TSL,B-7102-OUT;n:type:ShaderForge.SFN_Slider,id:7102,x:33108,y:34333,ptovrint:False,ptlb:drops speed,ptin:_dropsspeed,varname:_dropsspeed,prsc:2,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:2709,x:33896,y:34211,varname:node_2709,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-771-OUT;n:type:ShaderForge.SFN_Add,id:7417,x:34489,y:34452,varname:node_7417,prsc:2|A-7656-OUT,B-6790-OUT;n:type:ShaderForge.SFN_Append,id:285,x:34091,y:34108,varname:node_285,prsc:2|A-7417-OUT,B-2709-G;n:type:ShaderForge.SFN_Lerp,id:8244,x:33817,y:34036,varname:node_8244,prsc:2|A-128-UVOUT,B-285-OUT,T-3924-OUT;n:type:ShaderForge.SFN_Slider,id:3924,x:33421,y:34444,ptovrint:False,ptlb:drops speed_uv,ptin:_dropsspeed_uv,varname:_dropsspeed_uv,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Abs,id:5828,x:34143,y:34388,varname:node_5828,prsc:2|IN-2709-R;n:type:ShaderForge.SFN_Abs,id:5653,x:34159,y:34522,varname:node_5653,prsc:2|IN-2709-B;n:type:ShaderForge.SFN_Multiply,id:6790,x:34320,y:34388,varname:node_6790,prsc:2|A-5828-OUT,B-3993-OUT;n:type:ShaderForge.SFN_Vector1,id:3993,x:34163,y:34305,varname:node_3993,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7656,x:34335,y:34526,varname:node_7656,prsc:2|A-3993-OUT,B-5653-OUT;n:type:ShaderForge.SFN_Lerp,id:1493,x:34722,y:33607,varname:node_1493,prsc:2|A-47-RGB,B-312-OUT,T-7757-OUT;n:type:ShaderForge.SFN_Slider,id:7757,x:34705,y:34154,ptovrint:False,ptlb:normal power,ptin:_normalpower,varname:_normalpower,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Clamp,id:6669,x:35108,y:33866,varname:node_6669,prsc:2|IN-7341-OUT,MIN-9929-OUT,MAX-4626-OUT;n:type:ShaderForge.SFN_Vector1,id:4626,x:34843,y:33976,varname:node_4626,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:9929,x:34942,y:34075,varname:node_9929,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Tex2d,id:47,x:33983,y:33551,ptovrint:False,ptlb:node_47,ptin:_node_47,varname:_node_47,prsc:2,tex:1ef92884829156b42bf35c4d7bfba2b6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:9535,x:35536,y:33473,varname:node_9535,prsc:2|A-2773-OUT,B-1547-OUT,T-4335-OUT;n:type:ShaderForge.SFN_Slider,id:4335,x:35236,y:33725,ptovrint:False,ptlb:drops and water,ptin:_dropsandwater,varname:_dropsandwater,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:951,x:35248,y:33397,varname:node_951,prsc:2|IN-2499-B;n:type:ShaderForge.SFN_Multiply,id:1958,x:35594,y:33283,varname:node_1958,prsc:2|A-951-OUT,B-9535-OUT;n:type:ShaderForge.SFN_Tex2d,id:5160,x:35507,y:33047,varname:_node_5160,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|TEX-872-TEX;n:type:ShaderForge.SFN_Lerp,id:9689,x:35845,y:33146,varname:node_9689,prsc:2|A-90-OUT,B-1958-OUT,T-7859-OUT;n:type:ShaderForge.SFN_Vector1,id:7859,x:35742,y:33278,varname:node_7859,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:90,x:35716,y:33069,varname:node_90,prsc:2|A-1958-OUT,B-5160-B;proporder:1909-7949-872-7687-2601-7811-7329-4293-250-343-4996-3641-3072-8816-2890-5744-3421-3219-8150-3777-98-1000-2432-3472-7920-5765-5977-6418-7102-3924-7757-47-4335;pass:END;sub:END;*/

Shader "Almgp/CarPaint/Almgp_Car_Paint" {
    Properties {
        _metallic ("metallic", Range(0, 1)) = 0.8457574
        _maskroughnessexponent ("mask roughness exponent", Range(-1, 1)) = 0.09171758
        _carpaintmaskrgoiluvbwateradiff ("car paint mask ( r g - oil uv b - water a - diff", 2D) = "white" {}
        _maskrandomuv ("mask random uv", Float ) = 8
        _size ("size", Float ) = 1
        _Oilfactor ("Oil factor", Range(0, 1)) = 0
        _Oil ("Oil", Range(0, 1)) = 0
        _freshnelexponent ("freshnel exponent", Range(0, 8)) = 1.019264
        _bluruv ("blur uv", Range(0, 10)) = 0
        _Oilblur ("Oil blur", Range(0, 10)) = 0
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _colorpower ("color power", Range(0, 2)) = 2
        _minoil ("min  oil", Range(0, 1)) = 0
        _maxoil ("max oil", Range(0, 1)) = 0.8634691
        _mincolor ("min color", Range(0, 1)) = 0
        _maxcolor ("max color", Range(0, 1)) = 1
        _colortile ("color tile", Float ) = 1
        [MaterialToggle] _oilranbow ("oil  ranbow", Float ) = 0
        _oilgradient ("oil gradient", 2D) = "white" {}
        _Raindowsatturate ("Raindow satturate", Range(-2, 2)) = 0
        [MaterialToggle] _invertoilfreshnel ("invert oil freshnel", Float ) = 0
        _oilfreshnel ("oil freshnel", Range(0, 1)) = 1
        _finalwateroil ("final water\oil", Range(0, 1)) = 0
        _watertile ("water tile", Float ) = 1
        _watermult ("water mult", Range(-0.25, 0.25)) = 0
        _Drop ("Drop ", 2D) = "bump" {}
        _dropsscale ("drops scale", Float ) = 1
        _Dropnormal ("Drop normal", 2D) = "bump" {}
        _dropsspeed ("drops speed", Range(-1, 1)) = 0
        _dropsspeed_uv ("drops speed_uv", Range(0, 1)) = 0
        _normalpower ("normal power", Range(0, 1)) = 1
        _node_47 ("node_47", 2D) = "bump" {}
        _dropsandwater ("drops and water", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _carpaintmaskrgoiluvbwateradiff; uniform float4 _carpaintmaskrgoiluvbwateradiff_ST;
            uniform float _metallic;
            uniform float _maskroughnessexponent;
            uniform float _maskrandomuv;
            uniform float _size;
            uniform float _Oilfactor;
            uniform float _Oil;
            uniform float _freshnelexponent;
            uniform float _bluruv;
            uniform float _Oilblur;
            uniform float4 _color;
            uniform float _colorpower;
            uniform float _minoil;
            uniform float _maxoil;
            uniform float _mincolor;
            uniform float _maxcolor;
            uniform float _colortile;
            uniform fixed _oilranbow;
            uniform sampler2D _oilgradient; uniform float4 _oilgradient_ST;
            uniform float _Raindowsatturate;
            uniform fixed _invertoilfreshnel;
            uniform float _oilfreshnel;
            uniform float _finalwateroil;
            uniform float _watertile;
            uniform float _watermult;
            uniform sampler2D _Dropnormal; uniform float4 _Dropnormal_ST;
            uniform sampler2D _Drop; uniform float4 _Drop_ST;
            uniform float _dropsscale;
            uniform float _dropsspeed;
            uniform float _dropsspeed_uv;
            uniform float _normalpower;
            uniform sampler2D _node_47; uniform float4 _node_47_ST;
            uniform float _dropsandwater;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_47_var = UnpackNormal(tex2D(_node_47,TRANSFORM_TEX(i.uv0, _node_47)));
                float node_3993 = 0.5;
                float3 node_2709 = i.normalDir.rgb;
                float4 node_707 = _Time + _TimeEditor;
                float2 node_4276 = (_dropsscale*(lerp(i.uv0,float2(((node_3993*abs(node_2709.b))+(abs(node_2709.r)*node_3993)),node_2709.g),_dropsspeed_uv)+(node_707.r*_dropsspeed)));
                float3 _Dropnormal_var = UnpackNormal(tex2D(_Dropnormal,TRANSFORM_TEX(node_4276, _Dropnormal)));
                float node_7341 = max(0,dot(float3(0,1,0),i.normalDir));
                float3 normalLocal = lerp(_node_47_var.rgb,lerp(_node_47_var.rgb,_Dropnormal_var.rgb,node_7341),_normalpower);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float2 node_2376 = (i.uv0*_watertile);
                float4 _node_5194 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(node_2376, _carpaintmaskrgoiluvbwateradiff));
                float node_5116 = (1.0 - _node_5194.b);
                float node_1101 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_freshnelexponent);
                float node_3923 = (node_1101*pow(node_1101,_freshnelexponent));
                float4 _node_1058 = tex2Dlod(_carpaintmaskrgoiluvbwateradiff,float4(TRANSFORM_TEX(i.uv0, _carpaintmaskrgoiluvbwateradiff),0.0,_bluruv));
                float2 node_3330 = ((float2(0.0,((_node_1058.b-_node_1058.g)+_node_1058.r))+_maskrandomuv)/_size);
                float4 _node_3928 = tex2Dlod(_carpaintmaskrgoiluvbwateradiff,float4(TRANSFORM_TEX(node_3330, _carpaintmaskrgoiluvbwateradiff),0.0,_Oilblur));
                float node_3670 = saturate((_node_1058.a/_node_3928.g));
                float node_9062 = lerp(_Oil,lerp(1.0,node_3670,pow(_node_3928.r,_maskroughnessexponent)),_Oilfactor);
                float node_2454 = lerp(lerp( node_3923, (1.0 - node_3923), _invertoilfreshnel ),clamp(node_9062,_minoil,_maxoil),_oilfreshnel);
                float node_1547 = lerp(((node_5116*node_5116)*_watermult),node_2454,_finalwateroil);
                float4 _Drop_var = tex2D(_Drop,TRANSFORM_TEX(node_4276, _Drop));
                float node_1958 = ((1.0 - _node_5194.b)*lerp(lerp(node_1547,lerp(0.25,0.0,_Drop_var.r),clamp(node_7341,0.25,1.0)),node_1547,_dropsandwater));
                float4 _node_5160 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(i.uv0, _carpaintmaskrgoiluvbwateradiff));
                float gloss = 1.0 - lerp((node_1958*_node_5160.b),node_1958,0.5); // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float2 node_6895 = (i.uv0*_colortile);
                float4 _node_7810 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(node_6895, _carpaintmaskrgoiluvbwateradiff));
                float3 diffuseColor = (_color.rgb*saturate((0.5 - 2.0*(clamp(_node_7810.a,_mincolor,_maxcolor)-0.5)*(node_3670-0.5)))*_colorpower); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, lerp(0.0,_metallic,saturate(node_3923)), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_4023 = 0.0;
                float2 node_9479 = (node_3670*node_3330);
                float4 _oilgradient_var = tex2D(_oilgradient,TRANSFORM_TEX(node_9479, _oilgradient));
                float3 w = lerp( 0.0, lerp(float3(node_4023,node_4023,node_4023),lerp(_oilgradient_var.rgb,dot(_oilgradient_var.rgb,float3(0.3,0.59,0.11)),_Raindowsatturate),dot(lightDirection,viewReflectDirection)), _oilranbow )*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _carpaintmaskrgoiluvbwateradiff; uniform float4 _carpaintmaskrgoiluvbwateradiff_ST;
            uniform float _metallic;
            uniform float _maskroughnessexponent;
            uniform float _maskrandomuv;
            uniform float _size;
            uniform float _Oilfactor;
            uniform float _Oil;
            uniform float _freshnelexponent;
            uniform float _bluruv;
            uniform float _Oilblur;
            uniform float4 _color;
            uniform float _colorpower;
            uniform float _minoil;
            uniform float _maxoil;
            uniform float _mincolor;
            uniform float _maxcolor;
            uniform float _colortile;
            uniform fixed _oilranbow;
            uniform sampler2D _oilgradient; uniform float4 _oilgradient_ST;
            uniform float _Raindowsatturate;
            uniform fixed _invertoilfreshnel;
            uniform float _oilfreshnel;
            uniform float _finalwateroil;
            uniform float _watertile;
            uniform float _watermult;
            uniform sampler2D _Dropnormal; uniform float4 _Dropnormal_ST;
            uniform sampler2D _Drop; uniform float4 _Drop_ST;
            uniform float _dropsscale;
            uniform float _dropsspeed;
            uniform float _dropsspeed_uv;
            uniform float _normalpower;
            uniform sampler2D _node_47; uniform float4 _node_47_ST;
            uniform float _dropsandwater;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_47_var = UnpackNormal(tex2D(_node_47,TRANSFORM_TEX(i.uv0, _node_47)));
                float node_3993 = 0.5;
                float3 node_2709 = i.normalDir.rgb;
                float4 node_707 = _Time + _TimeEditor;
                float2 node_4276 = (_dropsscale*(lerp(i.uv0,float2(((node_3993*abs(node_2709.b))+(abs(node_2709.r)*node_3993)),node_2709.g),_dropsspeed_uv)+(node_707.r*_dropsspeed)));
                float3 _Dropnormal_var = UnpackNormal(tex2D(_Dropnormal,TRANSFORM_TEX(node_4276, _Dropnormal)));
                float node_7341 = max(0,dot(float3(0,1,0),i.normalDir));
                float3 normalLocal = lerp(_node_47_var.rgb,lerp(_node_47_var.rgb,_Dropnormal_var.rgb,node_7341),_normalpower);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float2 node_2376 = (i.uv0*_watertile);
                float4 _node_5194 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(node_2376, _carpaintmaskrgoiluvbwateradiff));
                float node_5116 = (1.0 - _node_5194.b);
                float node_1101 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_freshnelexponent);
                float node_3923 = (node_1101*pow(node_1101,_freshnelexponent));
                float4 _node_1058 = tex2Dlod(_carpaintmaskrgoiluvbwateradiff,float4(TRANSFORM_TEX(i.uv0, _carpaintmaskrgoiluvbwateradiff),0.0,_bluruv));
                float2 node_3330 = ((float2(0.0,((_node_1058.b-_node_1058.g)+_node_1058.r))+_maskrandomuv)/_size);
                float4 _node_3928 = tex2Dlod(_carpaintmaskrgoiluvbwateradiff,float4(TRANSFORM_TEX(node_3330, _carpaintmaskrgoiluvbwateradiff),0.0,_Oilblur));
                float node_3670 = saturate((_node_1058.a/_node_3928.g));
                float node_9062 = lerp(_Oil,lerp(1.0,node_3670,pow(_node_3928.r,_maskroughnessexponent)),_Oilfactor);
                float node_2454 = lerp(lerp( node_3923, (1.0 - node_3923), _invertoilfreshnel ),clamp(node_9062,_minoil,_maxoil),_oilfreshnel);
                float node_1547 = lerp(((node_5116*node_5116)*_watermult),node_2454,_finalwateroil);
                float4 _Drop_var = tex2D(_Drop,TRANSFORM_TEX(node_4276, _Drop));
                float node_1958 = ((1.0 - _node_5194.b)*lerp(lerp(node_1547,lerp(0.25,0.0,_Drop_var.r),clamp(node_7341,0.25,1.0)),node_1547,_dropsandwater));
                float4 _node_5160 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(i.uv0, _carpaintmaskrgoiluvbwateradiff));
                float gloss = 1.0 - lerp((node_1958*_node_5160.b),node_1958,0.5); // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float2 node_6895 = (i.uv0*_colortile);
                float4 _node_7810 = tex2D(_carpaintmaskrgoiluvbwateradiff,TRANSFORM_TEX(node_6895, _carpaintmaskrgoiluvbwateradiff));
                float3 diffuseColor = (_color.rgb*saturate((0.5 - 2.0*(clamp(_node_7810.a,_mincolor,_maxcolor)-0.5)*(node_3670-0.5)))*_colorpower); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, lerp(0.0,_metallic,saturate(node_3923)), specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_4023 = 0.0;
                float2 node_9479 = (node_3670*node_3330);
                float4 _oilgradient_var = tex2D(_oilgradient,TRANSFORM_TEX(node_9479, _oilgradient));
                float3 w = lerp( 0.0, lerp(float3(node_4023,node_4023,node_4023),lerp(_oilgradient_var.rgb,dot(_oilgradient_var.rgb,float3(0.3,0.59,0.11)),_Raindowsatturate),dot(lightDirection,viewReflectDirection)), _oilranbow )*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                NdotLWrap = max(float3(0,0,0), NdotLWrap);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*pow((1.00001-NdotLWrap), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL))*(0.5-max(w.r,max(w.g,w.b))*0.5) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
