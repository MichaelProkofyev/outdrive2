// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:False,igpj:True,qofs:0,qpre:0,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1833,x:35475,y:32397,varname:node_1833,prsc:2|emission-2411-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:543,x:31847,y:32936,ptovrint:False,ptlb:stars,ptin:_stars,varname:_stars,tex:7c03dcd86a770de44a76c740763e3afd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5200,x:32239,y:32580,varname:_node_5200,prsc:2,tex:7c03dcd86a770de44a76c740763e3afd,ntxv:0,isnm:False|UVIN-1884-OUT,TEX-543-TEX;n:type:ShaderForge.SFN_ValueProperty,id:1006,x:32613,y:32969,ptovrint:False,ptlb:final_power,ptin:_final_power,varname:_final_power,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1242,x:33045,y:32716,varname:node_1242,prsc:2|A-5665-OUT,B-8810-OUT;n:type:ShaderForge.SFN_TexCoord,id:208,x:31430,y:32426,varname:node_208,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:4748,x:31948,y:32333,ptovrint:False,ptlb:tile1,ptin:_tile1,varname:_tile1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1884,x:31892,y:32420,varname:node_1884,prsc:2|A-208-UVOUT,B-4748-OUT;n:type:ShaderForge.SFN_Color,id:1934,x:32415,y:32517,ptovrint:False,ptlb:color 1,ptin:_color1,varname:_color1,prsc:2,glob:False,c1:0,c2:0.751724,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:7014,x:31611,y:33320,ptovrint:False,ptlb:mask,ptin:_mask,varname:_mask,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3094,x:32523,y:33111,varname:_node_3094,prsc:2,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False|UVIN-2620-OUT,TEX-7014-TEX;n:type:ShaderForge.SFN_TexCoord,id:742,x:32092,y:33126,varname:node_742,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4453,x:32258,y:33153,varname:node_4453,prsc:2|A-742-UVOUT,B-165-OUT;n:type:ShaderForge.SFN_ValueProperty,id:165,x:32092,y:33140,ptovrint:False,ptlb:mask tile1,ptin:_masktile1,varname:_masktile1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:9298,x:32523,y:33286,varname:_node_5977,prsc:2,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False|UVIN-4587-OUT,TEX-7014-TEX;n:type:ShaderForge.SFN_ValueProperty,id:9143,x:31781,y:33172,ptovrint:False,ptlb:mask tile2,ptin:_masktile2,varname:_masktile2,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5590,x:32258,y:33328,varname:node_5590,prsc:2|A-742-UVOUT,B-9143-OUT;n:type:ShaderForge.SFN_Multiply,id:1071,x:33111,y:33170,varname:node_1071,prsc:2|A-6750-OUT,B-6750-OUT;n:type:ShaderForge.SFN_Add,id:6750,x:32743,y:33254,varname:node_6750,prsc:2|A-3094-R,B-9298-R;n:type:ShaderForge.SFN_Lerp,id:5665,x:32768,y:32786,varname:node_5665,prsc:2|A-4559-OUT,B-8461-OUT,T-5200-A;n:type:ShaderForge.SFN_Vector1,id:4559,x:33432,y:32221,varname:node_4559,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:8810,x:32963,y:32932,varname:node_8810,prsc:2|A-4559-OUT,B-1006-OUT,T-1071-OUT;n:type:ShaderForge.SFN_Lerp,id:8461,x:32658,y:32360,varname:node_8461,prsc:2|A-2438-RGB,B-1934-RGB,T-2240-OUT;n:type:ShaderForge.SFN_Clamp01,id:2240,x:34939,y:32855,varname:node_2240,prsc:2|IN-3094-R;n:type:ShaderForge.SFN_Color,id:2438,x:32415,y:32360,ptovrint:False,ptlb:color2,ptin:_color2,varname:_color2,prsc:2,glob:False,c1:1,c2:0.08823532,c3:0.08823532,c4:1;n:type:ShaderForge.SFN_Time,id:381,x:31771,y:33670,varname:node_381,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4206,x:32107,y:33570,varname:node_4206,prsc:2|A-3049-OUT,B-381-TSL;n:type:ShaderForge.SFN_ValueProperty,id:3049,x:31874,y:33482,ptovrint:False,ptlb:speed mask,ptin:_speedmask,varname:_speedmask,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:2620,x:32403,y:33153,varname:node_2620,prsc:2|A-4453-OUT,B-4206-OUT;n:type:ShaderForge.SFN_Add,id:4587,x:32432,y:33546,varname:node_4587,prsc:2|A-5590-OUT,B-8920-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2054,x:31928,y:33847,ptovrint:False,ptlb:speed mask 2,ptin:_speedmask2,varname:_speedmask2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8920,x:32132,y:33656,varname:node_8920,prsc:2|A-2054-OUT,B-381-TSL;n:type:ShaderForge.SFN_Tex2d,id:15,x:32273,y:32828,varname:_node_155,prsc:2,tex:7c03dcd86a770de44a76c740763e3afd,ntxv:0,isnm:False|UVIN-4758-OUT,TEX-543-TEX;n:type:ShaderForge.SFN_ValueProperty,id:7647,x:31638,y:32788,ptovrint:False,ptlb:tile2,ptin:_tile2,varname:_tile2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4758,x:31943,y:32713,varname:node_4758,prsc:2|A-7504-OUT,B-7647-OUT;n:type:ShaderForge.SFN_Add,id:1653,x:34356,y:32266,varname:node_1653,prsc:2|A-5200-RGB,B-15-RGB;n:type:ShaderForge.SFN_Add,id:6663,x:34725,y:32416,varname:node_6663,prsc:2|A-7707-OUT,B-1242-OUT;n:type:ShaderForge.SFN_Color,id:6306,x:32137,y:32202,ptovrint:False,ptlb:color3,ptin:_color3,varname:_color3,prsc:2,glob:False,c1:1,c2:0.9724138,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:4176,x:32137,y:31948,ptovrint:False,ptlb:color4,ptin:_color4,varname:_color4,prsc:2,glob:False,c1:0,c2:1,c3:0.3379309,c4:1;n:type:ShaderForge.SFN_Lerp,id:8251,x:32946,y:32303,varname:node_8251,prsc:2|A-8741-OUT,B-1046-OUT,T-2240-OUT;n:type:ShaderForge.SFN_Lerp,id:7707,x:33655,y:32294,varname:node_7707,prsc:2|A-4559-OUT,B-6922-OUT,T-1653-OUT;n:type:ShaderForge.SFN_Multiply,id:7746,x:32694,y:32015,varname:node_7746,prsc:2|A-2510-OUT,B-4176-RGB;n:type:ShaderForge.SFN_Multiply,id:1046,x:32676,y:32193,varname:node_1046,prsc:2|A-3537-OUT,B-6306-RGB;n:type:ShaderForge.SFN_ValueProperty,id:2510,x:32512,y:31717,ptovrint:False,ptlb:color4M,ptin:_color4M,varname:_color4M,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3537,x:32483,y:32193,ptovrint:False,ptlb:color3M,ptin:_color3M,varname:_color3M,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Dot,id:8202,x:33500,y:32717,varname:node_8202,prsc:2,dt:3|A-3467-OUT,B-1397-OUT;n:type:ShaderForge.SFN_NormalVector,id:1397,x:33325,y:32717,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector3,id:3467,x:33333,y:32914,varname:node_3467,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_OneMinus,id:3757,x:33673,y:32752,varname:node_3757,prsc:2|IN-8202-OUT;n:type:ShaderForge.SFN_Power,id:1775,x:33615,y:32966,varname:node_1775,prsc:2|VAL-3757-OUT,EXP-5172-OUT;n:type:ShaderForge.SFN_Slider,id:5737,x:32784,y:33412,ptovrint:False,ptlb:horizont power,ptin:_horizontpower,varname:_horizontpower,prsc:2,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Color,id:3867,x:33695,y:33386,ptovrint:False,ptlb:horizon color1,ptin:_horizoncolor1,varname:_horizoncolor1,prsc:2,glob:False,c1:1,c2:0.5990872,c3:0.5073529,c4:1;n:type:ShaderForge.SFN_Color,id:9008,x:33829,y:32752,ptovrint:False,ptlb:horizon color2,ptin:_horizoncolor2,varname:_horizoncolor2,prsc:2,glob:False,c1:0.6551723,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:6000,x:34361,y:32814,varname:node_6000,prsc:2|A-9008-RGB,B-7943-OUT,T-7410-OUT;n:type:ShaderForge.SFN_Clamp01,id:7410,x:34032,y:32605,varname:node_7410,prsc:2|IN-1775-OUT;n:type:ShaderForge.SFN_Lerp,id:3075,x:34493,y:32649,varname:node_3075,prsc:2|A-1697-OUT,B-6000-OUT,T-7410-OUT;n:type:ShaderForge.SFN_Vector1,id:1697,x:34256,y:32594,varname:node_1697,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:2939,x:34820,y:32658,varname:node_2939,prsc:2|A-3075-OUT,B-7888-OUT;n:type:ShaderForge.SFN_Lerp,id:2185,x:35080,y:32621,varname:node_2185,prsc:2|A-2202-OUT,B-2939-OUT,T-7410-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7888,x:34391,y:33557,ptovrint:False,ptlb:fin hor power time,ptin:_finhorpowertime,varname:_finhorpowertime,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Color,id:242,x:33695,y:33587,ptovrint:False,ptlb:horizon color1_mix,ptin:_horizoncolor1_mix,varname:_horizoncolor1_mix,prsc:2,glob:False,c1:1,c2:0.5990872,c3:0.5073529,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4499,x:33541,y:34008,ptovrint:False,ptlb:color1mix speed,ptin:_color1mixspeed,varname:_color1mixspeed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:7943,x:34107,y:33200,varname:node_7943,prsc:2|A-3867-RGB,B-242-RGB,T-4499-OUT;n:type:ShaderForge.SFN_Slider,id:5191,x:32804,y:33567,ptovrint:False,ptlb:horizont power_2,ptin:_horizontpower_2,varname:_horizontpower_2,prsc:2,min:0,cur:0,max:5;n:type:ShaderForge.SFN_ValueProperty,id:3956,x:33083,y:33652,ptovrint:False,ptlb:horizont power speed,ptin:_horizontpowerspeed,varname:_horizontpowerspeed,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5172,x:33379,y:33238,varname:node_5172,prsc:2|A-5737-OUT,B-5191-OUT,T-3956-OUT;n:type:ShaderForge.SFN_Time,id:5571,x:32361,y:31760,varname:node_5571,prsc:2;n:type:ShaderForge.SFN_Sin,id:6610,x:32820,y:31794,varname:node_6610,prsc:2|IN-5571-TSL;n:type:ShaderForge.SFN_Lerp,id:8741,x:32894,y:32042,varname:node_8741,prsc:2|A-7746-OUT,B-8461-OUT,T-6610-OUT;n:type:ShaderForge.SFN_Multiply,id:6922,x:33217,y:32253,varname:node_6922,prsc:2|A-2441-OUT,B-8251-OUT;n:type:ShaderForge.SFN_Add,id:2441,x:33105,y:31768,varname:node_2441,prsc:2|A-7784-OUT,B-6610-OUT;n:type:ShaderForge.SFN_Vector1,id:7784,x:32896,y:31653,varname:node_7784,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:4951,x:31136,y:32943,varname:node_4951,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9162,x:31349,y:32963,varname:node_9162,prsc:2|A-4951-TSL,B-1943-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1943,x:31286,y:33144,ptovrint:False,ptlb:star_speed,ptin:_star_speed,varname:_star_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:7504,x:31638,y:32566,varname:node_7504,prsc:2|A-208-UVOUT,B-9162-OUT;n:type:ShaderForge.SFN_Lerp,id:2411,x:35286,y:32650,varname:node_2411,prsc:2|A-2185-OUT,B-2939-OUT,T-9964-OUT;n:type:ShaderForge.SFN_Multiply,id:9964,x:35214,y:32802,varname:node_9964,prsc:2|A-2240-OUT,B-8330-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8330,x:35133,y:32946,ptovrint:False,ptlb:din lerp,ptin:_dinlerp,varname:_dinlerp,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Desaturate,id:2202,x:35309,y:32285,varname:node_2202,prsc:2|COL-6663-OUT,DES-6891-OUT;n:type:ShaderForge.SFN_Blend,id:1199,x:35043,y:32445,varname:node_1199,prsc:2,blmd:16,clmp:False|SRC-2240-OUT,DST-2240-OUT;n:type:ShaderForge.SFN_Multiply,id:6891,x:34988,y:32163,varname:node_6891,prsc:2|A-1199-OUT,B-4170-OUT;n:type:ShaderForge.SFN_Vector1,id:4170,x:35016,y:32335,varname:node_4170,prsc:2,v1:2;proporder:543-1006-4748-1934-7014-165-9143-2438-3049-2054-7647-6306-4176-2510-3537-5737-3867-9008-7888-242-4499-5191-3956-1943-8330;pass:END;sub:END;*/

Shader "Almgp/vhsrace/sky/sky_stars" {
    Properties {
        _stars ("stars", 2D) = "white" {}
        _final_power ("final_power", Float ) = 1
        _tile1 ("tile1", Float ) = 1
        _color1 ("color 1", Color) = (0,0.751724,1,1)
        _mask ("mask", 2D) = "white" {}
        _masktile1 ("mask tile1", Float ) = 1
        _masktile2 ("mask tile2", Float ) = 5
        _color2 ("color2", Color) = (1,0.08823532,0.08823532,1)
        _speedmask ("speed mask", Float ) = 1
        _speedmask2 ("speed mask 2", Float ) = 1
        _tile2 ("tile2", Float ) = 1
        _color3 ("color3", Color) = (1,0.9724138,0,1)
        _color4 ("color4", Color) = (0,1,0.3379309,1)
        _color4M ("color4M", Float ) = 1
        _color3M ("color3M", Float ) = 1
        _horizontpower ("horizont power", Range(0, 5)) = 0
        _horizoncolor1 ("horizon color1", Color) = (1,0.5990872,0.5073529,1)
        _horizoncolor2 ("horizon color2", Color) = (0.6551723,0,1,1)
        _finhorpowertime ("fin hor power time", Float ) = 0
        _horizoncolor1_mix ("horizon color1_mix", Color) = (1,0.5990872,0.5073529,1)
        _color1mixspeed ("color1mix speed", Float ) = 1
        _horizontpower_2 ("horizont power_2", Range(0, 5)) = 0
        _horizontpowerspeed ("horizont power speed", Float ) = 0
        _star_speed ("star_speed", Float ) = 1
        _dinlerp ("din lerp", Float ) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _stars; uniform float4 _stars_ST;
            uniform float _final_power;
            uniform float _tile1;
            uniform float4 _color1;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            uniform float _masktile1;
            uniform float _masktile2;
            uniform float4 _color2;
            uniform float _speedmask;
            uniform float _speedmask2;
            uniform float _tile2;
            uniform float4 _color3;
            uniform float4 _color4;
            uniform float _color4M;
            uniform float _color3M;
            uniform float _horizontpower;
            uniform float4 _horizoncolor1;
            uniform float4 _horizoncolor2;
            uniform float _finhorpowertime;
            uniform float4 _horizoncolor1_mix;
            uniform float _color1mixspeed;
            uniform float _horizontpower_2;
            uniform float _horizontpowerspeed;
            uniform float _star_speed;
            uniform float _dinlerp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
////// Lighting:
////// Emissive:
                float node_4559 = 0.0;
                float4 node_5571 = _Time + _TimeEditor;
                float node_6610 = sin(node_5571.r);
                float4 node_381 = _Time + _TimeEditor;
                float2 node_2620 = ((i.uv0*_masktile1)+(_speedmask*node_381.r));
                float4 _node_3094 = tex2D(_mask,TRANSFORM_TEX(node_2620, _mask));
                float node_2240 = saturate(_node_3094.r);
                float3 node_8461 = lerp(_color2.rgb,_color1.rgb,node_2240);
                float2 node_1884 = (i.uv0*_tile1);
                float4 _node_5200 = tex2D(_stars,TRANSFORM_TEX(node_1884, _stars));
                float4 node_4951 = _Time + _TimeEditor;
                float2 node_4758 = ((i.uv0+(node_4951.r*_star_speed))*_tile2);
                float4 _node_155 = tex2D(_stars,TRANSFORM_TEX(node_4758, _stars));
                float2 node_4587 = ((i.uv0*_masktile2)+(_speedmask2*node_381.r));
                float4 _node_5977 = tex2D(_mask,TRANSFORM_TEX(node_4587, _mask));
                float node_6750 = (_node_3094.r+_node_5977.r);
                float node_1697 = 0.0;
                float node_7410 = saturate(pow((1.0 - abs(dot(float3(0,1,0),i.normalDir))),lerp(_horizontpower,_horizontpower_2,_horizontpowerspeed)));
                float3 node_2939 = (lerp(float3(node_1697,node_1697,node_1697),lerp(_horizoncolor2.rgb,lerp(_horizoncolor1.rgb,_horizoncolor1_mix.rgb,_color1mixspeed),node_7410),node_7410)*_finhorpowertime);
                float3 emissive = lerp(lerp(lerp((lerp(float3(node_4559,node_4559,node_4559),((1.0+node_6610)*lerp(lerp((_color4M*_color4.rgb),node_8461,node_6610),(_color3M*_color3.rgb),node_2240)),(_node_5200.rgb+_node_155.rgb))+(lerp(float3(node_4559,node_4559,node_4559),node_8461,_node_5200.a)*lerp(node_4559,_final_power,(node_6750*node_6750)))),dot((lerp(float3(node_4559,node_4559,node_4559),((1.0+node_6610)*lerp(lerp((_color4M*_color4.rgb),node_8461,node_6610),(_color3M*_color3.rgb),node_2240)),(_node_5200.rgb+_node_155.rgb))+(lerp(float3(node_4559,node_4559,node_4559),node_8461,_node_5200.a)*lerp(node_4559,_final_power,(node_6750*node_6750)))),float3(0.3,0.59,0.11)),(round( 0.5*(node_2240 + node_2240))*2.0)),node_2939,node_7410),node_2939,(node_2240*_dinlerp));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
