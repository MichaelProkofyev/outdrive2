// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:3,spmd:1,grmd:1,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3671,x:35980,y:32946,varname:node_3671,prsc:2|diff-8614-OUT,spec-9216-OUT,gloss-5067-OUT,normal-1412-OUT,emission-9268-OUT;n:type:ShaderForge.SFN_Color,id:9715,x:33078,y:32509,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0,c2:1,c3:0.1310346,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:1528,x:31737,y:33650,ptovrint:False,ptlb:rain mask,ptin:_rainmask,varname:_rainmask,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:14,x:32193,y:32523,varname:_node_14,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-8183-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_Vector2,id:5082,x:31735,y:32193,varname:node_5082,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Vector2,id:6852,x:31560,y:32625,varname:node_6852,prsc:2,v1:0,v2:1;n:type:ShaderForge.SFN_ValueProperty,id:8358,x:31560,y:32512,ptovrint:False,ptlb:dist check,ptin:_distcheck,varname:_distcheck,prsc:2,glob:False,v1:0.02;n:type:ShaderForge.SFN_Multiply,id:3844,x:31629,y:32307,varname:node_3844,prsc:2|A-5082-OUT,B-8358-OUT;n:type:ShaderForge.SFN_Multiply,id:362,x:31736,y:32647,varname:node_362,prsc:2|A-6852-OUT,B-8358-OUT;n:type:ShaderForge.SFN_Add,id:609,x:31750,y:32498,varname:node_609,prsc:2|A-3844-OUT,B-1947-OUT;n:type:ShaderForge.SFN_Add,id:8183,x:31917,y:32699,varname:node_8183,prsc:2|A-1947-OUT,B-362-OUT;n:type:ShaderForge.SFN_Tex2d,id:6695,x:31982,y:32279,varname:_node_6695,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-609-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_Tex2d,id:4866,x:31982,y:32472,varname:_node_4866,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-8183-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_Subtract,id:1438,x:32290,y:32261,varname:node_1438,prsc:2|A-6695-R,B-14-R;n:type:ShaderForge.SFN_Subtract,id:4446,x:32352,y:32604,varname:node_4446,prsc:2|A-4866-R,B-14-R;n:type:ShaderForge.SFN_ValueProperty,id:1927,x:32193,y:32376,ptovrint:False,ptlb:bump,ptin:_bump,varname:_bump,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1312,x:32643,y:32414,varname:node_1312,prsc:2|A-1438-OUT,B-4459-OUT;n:type:ShaderForge.SFN_Multiply,id:3321,x:32643,y:32665,varname:node_3321,prsc:2|A-4459-OUT,B-4446-OUT;n:type:ShaderForge.SFN_Append,id:6118,x:32832,y:32469,varname:node_6118,prsc:2|A-1312-OUT,B-3321-OUT;n:type:ShaderForge.SFN_Append,id:1412,x:33009,y:32519,varname:node_1412,prsc:2|A-6118-OUT,B-2190-OUT;n:type:ShaderForge.SFN_Vector1,id:2190,x:32832,y:32665,varname:node_2190,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:6640,x:35410,y:32726,varname:node_6640,prsc:2|A-9270-R,B-4866-R;n:type:ShaderForge.SFN_Vector1,id:8627,x:33527,y:32634,varname:node_8627,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Vector1,id:3614,x:33369,y:32948,varname:node_3614,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:5508,x:33251,y:33024,varname:node_5508,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:7653,x:33402,y:32463,varname:node_7653,prsc:2|A-9715-RGB,B-5508-OUT,T-3154-OUT;n:type:ShaderForge.SFN_Fresnel,id:3154,x:33402,y:32695,varname:node_3154,prsc:2|NRM-8357-OUT,EXP-4073-OUT;n:type:ShaderForge.SFN_NormalVector,id:8357,x:33878,y:33369,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:4073,x:32879,y:32970,ptovrint:False,ptlb:exponent clearcoat,ptin:_exponentclearcoat,varname:_exponentclearcoat,prsc:2,min:0.05,cur:0.05,max:0.75;n:type:ShaderForge.SFN_Tex2d,id:4760,x:32978,y:33112,varname:_node_9547,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-2252-OUT,MIP-4281-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_TexCoord,id:7546,x:31595,y:33049,varname:node_7546,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2252,x:32444,y:33216,varname:node_2252,prsc:2|A-7546-UVOUT,B-7916-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7916,x:32304,y:33554,ptovrint:False,ptlb:microtile,ptin:_microtile,varname:_microtile,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_Multiply,id:1767,x:32744,y:33327,varname:node_1767,prsc:2|A-6920-OUT,B-7916-OUT;n:type:ShaderForge.SFN_Vector1,id:6920,x:32570,y:33292,varname:node_6920,prsc:2,v1:3.33;n:type:ShaderForge.SFN_Tex2d,id:4503,x:32683,y:33002,varname:_node_8236,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-9196-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_Multiply,id:9196,x:32920,y:33246,varname:node_9196,prsc:2|A-7546-UVOUT,B-1767-OUT;n:type:ShaderForge.SFN_Add,id:3788,x:33341,y:33203,varname:node_3788,prsc:2|A-4503-R,B-4760-R,C-7864-RGB,D-4760-RGB;n:type:ShaderForge.SFN_Lerp,id:3078,x:34424,y:32329,varname:node_3078,prsc:2|A-3614-OUT,B-3788-OUT,T-3659-OUT;n:type:ShaderForge.SFN_Slider,id:3659,x:33526,y:33276,ptovrint:False,ptlb:microFactor,ptin:_microFactor,varname:_microFactor,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:80,x:32976,y:33449,varname:node_80,prsc:2|A-1767-OUT,B-9196-OUT;n:type:ShaderForge.SFN_Tex2d,id:7864,x:33087,y:33287,varname:_node_6327,prsc:2,tex:3583cc10b8bed3b44bf49107bd1bd30e,ntxv:0,isnm:False|UVIN-80-OUT,TEX-1528-TEX;n:type:ShaderForge.SFN_Multiply,id:1947,x:31884,y:32965,varname:node_1947,prsc:2|A-7546-UVOUT,B-9285-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9285,x:31581,y:32898,ptovrint:False,ptlb:bumpsize,ptin:_bumpsize,varname:_bumpsize,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:792,x:33535,y:32854,varname:node_792,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:9216,x:33716,y:32696,varname:node_9216,prsc:2|A-8627-OUT,B-792-OUT,T-3154-OUT;n:type:ShaderForge.SFN_Cubemap,id:2250,x:33894,y:33142,ptovrint:False,ptlb:cubemap,ptin:_cubemap,varname:_cubemap,prsc:2,cube:7101731e2b6206b459eec4a7d3bd704c,pvfc:3|DIR-7206-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:7206,x:33721,y:33074,varname:node_7206,prsc:2;n:type:ShaderForge.SFN_Lerp,id:9134,x:34014,y:32694,varname:node_9134,prsc:2|A-792-OUT,B-7726-OUT,T-9641-OUT;n:type:ShaderForge.SFN_Lerp,id:7726,x:34203,y:32741,varname:node_7726,prsc:2|A-792-OUT,B-2250-RGB,T-7371-OUT;n:type:ShaderForge.SFN_Slider,id:7371,x:33150,y:33230,ptovrint:False,ptlb:cubemap power,ptin:_cubemappower,varname:_cubemappower,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Fresnel,id:9641,x:34142,y:33062,varname:node_9641,prsc:2|NRM-8357-OUT,EXP-8807-OUT;n:type:ShaderForge.SFN_Slider,id:8807,x:34118,y:33299,ptovrint:False,ptlb:cubemap exponent,ptin:_cubemapexponent,varname:_cubemapexponent,prsc:2,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Vector1,id:4281,x:33261,y:33504,varname:node_4281,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4459,x:32449,y:32450,varname:node_4459,prsc:2|A-1927-OUT,B-8988-OUT;n:type:ShaderForge.SFN_Vector1,id:8988,x:32140,y:32711,varname:node_8988,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Tex2d,id:6750,x:33237,y:32145,ptovrint:False,ptlb:mud mask,ptin:_mudmask,varname:_mudmask,prsc:2,tex:daa46a46b21190c4dac0d80767123110,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2973,x:34814,y:33242,varname:_dotMask,prsc:2,tex:01b3a7d48922413498dfdaa63dd17bb1,ntxv:0,isnm:False|TEX-1855-TEX;n:type:ShaderForge.SFN_Multiply,id:8614,x:34007,y:32406,varname:node_8614,prsc:2|A-6491-OUT,B-7653-OUT;n:type:ShaderForge.SFN_Lerp,id:6491,x:33788,y:32236,varname:node_6491,prsc:2|A-5626-OUT,B-6750-R,T-2800-OUT;n:type:ShaderForge.SFN_Vector1,id:5626,x:33500,y:32396,varname:node_5626,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:2800,x:33532,y:32152,ptovrint:False,ptlb:mud power,ptin:_mudpower,varname:_mudpower,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9268,x:33787,y:32552,varname:node_9268,prsc:2|A-6491-OUT,B-9134-OUT;n:type:ShaderForge.SFN_ComponentMask,id:493,x:35245,y:32423,varname:node_493,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2280-OUT;n:type:ShaderForge.SFN_Blend,id:8508,x:34845,y:32449,varname:node_8508,prsc:2,blmd:10,clmp:True|SRC-3078-OUT,DST-4158-OUT;n:type:ShaderForge.SFN_Multiply,id:4158,x:35205,y:32684,varname:node_4158,prsc:2|A-9441-OUT,B-3996-OUT;n:type:ShaderForge.SFN_Slider,id:3996,x:34528,y:32946,ptovrint:False,ptlb:dot factor,ptin:_dotfactor,varname:_dotfactor,prsc:2,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:5595,x:34571,y:32734,ptovrint:False,ptlb:dot base,ptin:_dotbase,varname:_dotbase,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:2280,x:35023,y:32363,varname:node_2280,prsc:2|A-3078-OUT,B-8508-OUT,T-5595-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1855,x:34374,y:33574,ptovrint:False,ptlb:dot texture ( R G),ptin:_dottextureRG,varname:_dottextureRG,tex:01b3a7d48922413498dfdaa63dd17bb1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9270,x:35538,y:33236,varname:_node_2781,prsc:2,tex:01b3a7d48922413498dfdaa63dd17bb1,ntxv:0,isnm:False|UVIN-5730-OUT,TEX-1855-TEX;n:type:ShaderForge.SFN_NormalVector,id:2025,x:34511,y:33290,prsc:2,pt:False;n:type:ShaderForge.SFN_Lerp,id:3713,x:32411,y:32895,varname:node_3713,prsc:2|A-3566-OUT,B-9670-OUT,T-7691-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6285,x:35051,y:33009,varname:node_6285,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-2025-OUT;n:type:ShaderForge.SFN_Slider,id:7691,x:35656,y:32819,ptovrint:False,ptlb:rain power,ptin:_rainpower,varname:_rainpower,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:3566,x:35335,y:33292,varname:node_3566,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:3155,x:34695,y:33538,varname:node_3155,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:432,x:35101,y:33355,varname:node_432,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8710,x:35170,y:33531,varname:node_8710,prsc:2|A-8352-OUT,B-432-TSL;n:type:ShaderForge.SFN_ValueProperty,id:8352,x:34868,y:33617,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:5730,x:35357,y:33463,varname:node_5730,prsc:2|A-3155-UVOUT,B-8710-OUT;n:type:ShaderForge.SFN_Lerp,id:9670,x:35635,y:33097,varname:node_9670,prsc:2|A-3566-OUT,B-9735-OUT,T-6285-OUT;n:type:ShaderForge.SFN_Multiply,id:9735,x:35335,y:33116,varname:node_9735,prsc:2|A-6285-OUT,B-9270-R;n:type:ShaderForge.SFN_Add,id:9441,x:34995,y:32606,varname:node_9441,prsc:2|A-2973-R,B-8484-OUT,C-6640-OUT;n:type:ShaderForge.SFN_Blend,id:8484,x:35221,y:32831,varname:node_8484,prsc:2,blmd:19,clmp:True|SRC-2973-R,DST-3713-OUT;n:type:ShaderForge.SFN_OneMinus,id:5067,x:35616,y:32650,varname:node_5067,prsc:2|IN-6640-OUT;proporder:9715-1528-8358-1927-4073-7916-3659-9285-2250-7371-8807-6750-2800-3996-5595-1855-7691-8352;pass:END;sub:END;*/

Shader "Almgp/Rain/RainShader" {
    Properties {
        _color ("color", Color) = (0,1,0.1310346,1)
        _rainmask ("rain mask", 2D) = "white" {}
        _distcheck ("dist check", Float ) = 0.02
        _bump ("bump", Float ) = 1
        _exponentclearcoat ("exponent clearcoat", Range(0.05, 0.75)) = 0.05
        _microtile ("microtile", Float ) = 4
        _microFactor ("microFactor", Range(0, 1)) = 0
        _bumpsize ("bumpsize", Float ) = 1
        _cubemap ("cubemap", Cube) = "_Skybox" {}
        _cubemappower ("cubemap power", Range(0, 1)) = 0
        _cubemapexponent ("cubemap exponent", Range(0, 5)) = 0
        _mudmask ("mud mask", 2D) = "white" {}
        _mudpower ("mud power", Range(0, 1)) = 0
        _dotfactor ("dot factor", Range(0, 3)) = 0
        _dotbase ("dot base", Range(0, 1)) = 0
        _dottextureRG ("dot texture ( R G)", 2D) = "white" {}
        _rainpower ("rain power", Range(0, 1)) = 0
        _speed ("speed", Float ) = 1
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
            uniform float4 _TimeEditor;
            uniform float4 _color;
            uniform sampler2D _rainmask; uniform float4 _rainmask_ST;
            uniform float _distcheck;
            uniform float _bump;
            uniform float _exponentclearcoat;
            uniform float _bumpsize;
            uniform samplerCUBE _cubemap;
            uniform float _cubemappower;
            uniform float _cubemapexponent;
            uniform sampler2D _mudmask; uniform float4 _mudmask_ST;
            uniform float _mudpower;
            uniform sampler2D _dottextureRG; uniform float4 _dottextureRG_ST;
            uniform float _speed;
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
                float2 node_1947 = (i.uv0*_bumpsize);
                float2 node_609 = ((float2(1,0)*_distcheck)+node_1947);
                float4 _node_6695 = tex2D(_rainmask,TRANSFORM_TEX(node_609, _rainmask));
                float2 node_8183 = (node_1947+(float2(0,1)*_distcheck));
                float4 _node_14 = tex2D(_rainmask,TRANSFORM_TEX(node_8183, _rainmask));
                float node_4459 = (_bump*0.01);
                float4 _node_4866 = tex2D(_rainmask,TRANSFORM_TEX(node_8183, _rainmask));
                float3 normalLocal = float3(float2(((_node_6695.r-_node_14.r)*node_4459),(node_4459*(_node_4866.r-_node_14.r))),1.0);
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
                float4 node_432 = _Time + _TimeEditor;
                float2 node_5730 = (i.uv0+(_speed*node_432.r));
                float4 _node_2781 = tex2D(_dottextureRG,TRANSFORM_TEX(node_5730, _dottextureRG));
                float node_6640 = (_node_2781.r+_node_4866.r);
                float gloss = 1.0 - (1.0 - node_6640); // Convert roughness to gloss
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
                float4 _mudmask_var = tex2D(_mudmask,TRANSFORM_TEX(i.uv0, _mudmask));
                float node_6491 = lerp(1.0,_mudmask_var.r,_mudpower);
                float node_5508 = 0.0;
                float node_3154 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_exponentclearcoat);
                float3 diffuseColor = (node_6491*lerp(_color.rgb,float3(node_5508,node_5508,node_5508),node_3154)); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                float node_792 = 0.0;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, lerp(0.7,node_792,node_3154), specularColor, specularMonochrome );
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
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_6491*lerp(float3(node_792,node_792,node_792),lerp(float3(node_792,node_792,node_792),texCUBE(_cubemap,viewReflectDirection).rgb,_cubemappower),pow(1.0-max(0,dot(i.normalDir, viewDirection)),_cubemapexponent)));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            uniform float4 _TimeEditor;
            uniform float4 _color;
            uniform sampler2D _rainmask; uniform float4 _rainmask_ST;
            uniform float _distcheck;
            uniform float _bump;
            uniform float _exponentclearcoat;
            uniform float _bumpsize;
            uniform samplerCUBE _cubemap;
            uniform float _cubemappower;
            uniform float _cubemapexponent;
            uniform sampler2D _mudmask; uniform float4 _mudmask_ST;
            uniform float _mudpower;
            uniform sampler2D _dottextureRG; uniform float4 _dottextureRG_ST;
            uniform float _speed;
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
                float2 node_1947 = (i.uv0*_bumpsize);
                float2 node_609 = ((float2(1,0)*_distcheck)+node_1947);
                float4 _node_6695 = tex2D(_rainmask,TRANSFORM_TEX(node_609, _rainmask));
                float2 node_8183 = (node_1947+(float2(0,1)*_distcheck));
                float4 _node_14 = tex2D(_rainmask,TRANSFORM_TEX(node_8183, _rainmask));
                float node_4459 = (_bump*0.01);
                float4 _node_4866 = tex2D(_rainmask,TRANSFORM_TEX(node_8183, _rainmask));
                float3 normalLocal = float3(float2(((_node_6695.r-_node_14.r)*node_4459),(node_4459*(_node_4866.r-_node_14.r))),1.0);
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
                float4 node_432 = _Time + _TimeEditor;
                float2 node_5730 = (i.uv0+(_speed*node_432.r));
                float4 _node_2781 = tex2D(_dottextureRG,TRANSFORM_TEX(node_5730, _dottextureRG));
                float node_6640 = (_node_2781.r+_node_4866.r);
                float gloss = 1.0 - (1.0 - node_6640); // Convert roughness to gloss
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _mudmask_var = tex2D(_mudmask,TRANSFORM_TEX(i.uv0, _mudmask));
                float node_6491 = lerp(1.0,_mudmask_var.r,_mudpower);
                float node_5508 = 0.0;
                float node_3154 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_exponentclearcoat);
                float3 diffuseColor = (node_6491*lerp(_color.rgb,float3(node_5508,node_5508,node_5508),node_3154)); // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                float node_792 = 0.0;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, lerp(0.7,node_792,node_3154), specularColor, specularMonochrome );
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
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
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
