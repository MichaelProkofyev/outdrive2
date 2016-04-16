// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:0,grmd:1,uamb:True,mssp:True,bkdf:False,rprd:True,enco:True,rmgx:False,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9492,x:35844,y:32625,varname:node_9492,prsc:2|diff-2356-OUT,emission-6681-OUT,voffset-8512-OUT;n:type:ShaderForge.SFN_Tex2d,id:5799,x:32585,y:32800,varname:_node_5799,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-8786-UVOUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8422,x:32058,y:33197,ptovrint:False,ptlb:GRID(RGBA),ptin:_GRIDRGBA,varname:_GRIDRGBA,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1659,x:32607,y:32985,varname:_node_6818,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-8786-UVOUT,MIP-1789-OUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Slider,id:1789,x:32122,y:33440,ptovrint:False,ptlb:blur grid,ptin:_blurgrid,varname:_blurgrid,prsc:2,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Add,id:2487,x:33434,y:32993,varname:node_2487,prsc:2|A-5799-RGB,B-1659-RGB,C-705-OUT,D-5130-RGB;n:type:ShaderForge.SFN_Clamp01,id:224,x:33850,y:33120,varname:node_224,prsc:2|IN-2487-OUT;n:type:ShaderForge.SFN_Add,id:1407,x:32486,y:33336,varname:node_1407,prsc:2|A-5944-OUT,B-1789-OUT;n:type:ShaderForge.SFN_Vector1,id:5944,x:32324,y:33291,varname:node_5944,prsc:2,v1:1.25;n:type:ShaderForge.SFN_Tex2d,id:5130,x:32560,y:33158,varname:_node_7471,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-8786-UVOUT,MIP-1407-OUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Lerp,id:3298,x:32813,y:33077,varname:node_3298,prsc:2|A-1659-RGB,B-5130-RGB,T-7418-OUT;n:type:ShaderForge.SFN_Time,id:767,x:32233,y:33595,varname:node_767,prsc:2;n:type:ShaderForge.SFN_Sin,id:7418,x:32838,y:33417,varname:node_7418,prsc:2|IN-7523-OUT;n:type:ShaderForge.SFN_Multiply,id:7523,x:32633,y:33626,varname:node_7523,prsc:2|A-767-TDB,B-3802-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3802,x:32498,y:33771,ptovrint:False,ptlb:speed glow,ptin:_speedglow,varname:_speedglow,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_Lerp,id:8203,x:32941,y:33241,varname:node_8203,prsc:2|A-3298-OUT,B-1659-RGB,T-3726-OUT;n:type:ShaderForge.SFN_Vector1,id:3726,x:32745,y:33354,varname:node_3726,prsc:2,v1:0.33;n:type:ShaderForge.SFN_Lerp,id:705,x:33135,y:33113,varname:node_705,prsc:2|A-3298-OUT,B-8203-OUT,T-3726-OUT;n:type:ShaderForge.SFN_TexCoord,id:8786,x:32058,y:33039,varname:node_8786,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2356,x:34533,y:32625,varname:node_2356,prsc:2|A-5274-RGB,B-224-OUT;n:type:ShaderForge.SFN_Color,id:5274,x:33793,y:32802,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6681,x:34839,y:32630,varname:node_6681,prsc:2|A-2356-OUT,B-1231-OUT;n:type:ShaderForge.SFN_Time,id:701,x:33955,y:33475,varname:node_701,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1853,x:34634,y:33330,varname:node_1853,prsc:2|A-701-TSL,B-2775-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2775,x:34011,y:33692,ptovrint:False,ptlb:sps,ptin:_sps,varname:_sps,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:2858,x:35424,y:32956,varname:node_2858,prsc:2|A-2588-RGB,B-3851-RGB,T-9590-OUT;n:type:ShaderForge.SFN_Tex2d,id:3851,x:35204,y:33167,varname:_vertexmask,prsc:2,ntxv:0,isnm:False|UVIN-516-OUT,TEX-9674-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:54,x:34213,y:33192,varname:node_54,prsc:2;n:type:ShaderForge.SFN_Tex2dAsset,id:9674,x:34876,y:33330,ptovrint:False,ptlb:vertex text,ptin:_vertextext,varname:_vertextext,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2588,x:35188,y:32905,varname:_node_9254,prsc:2,ntxv:0,isnm:False|UVIN-7364-OUT,TEX-9674-TEX;n:type:ShaderForge.SFN_Append,id:7615,x:34772,y:32757,varname:node_7615,prsc:2|A-54-X,B-54-Z;n:type:ShaderForge.SFN_ValueProperty,id:6647,x:34591,y:33018,ptovrint:False,ptlb:v mask scale,ptin:_vmaskscale,varname:_vmaskscale,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:1231,x:34403,y:32823,ptovrint:False,ptlb:fin P,ptin:_finP,varname:_finP,prsc:2,min:0,cur:0,max:1.8;n:type:ShaderForge.SFN_Divide,id:6312,x:34874,y:32869,varname:node_6312,prsc:2|A-7615-OUT,B-6647-OUT;n:type:ShaderForge.SFN_Add,id:7364,x:35062,y:32804,varname:node_7364,prsc:2|A-6312-OUT,B-1853-OUT;n:type:ShaderForge.SFN_Add,id:516,x:35044,y:33043,varname:node_516,prsc:2|A-6312-OUT,B-7590-OUT;n:type:ShaderForge.SFN_OneMinus,id:3911,x:34762,y:33147,varname:node_3911,prsc:2|IN-1853-OUT;n:type:ShaderForge.SFN_Multiply,id:7590,x:34888,y:33164,varname:node_7590,prsc:2|A-3911-OUT,B-173-OUT;n:type:ShaderForge.SFN_Vector1,id:173,x:34799,y:33077,varname:node_173,prsc:2,v1:-1.15;n:type:ShaderForge.SFN_Clamp,id:9590,x:34515,y:33216,varname:node_9590,prsc:2|IN-54-Y,MIN-8072-OUT,MAX-8102-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8072,x:34304,y:33346,ptovrint:False,ptlb:clamp Y min,ptin:_clampYmin,varname:_clampYmin,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:8102,x:34368,y:33461,ptovrint:False,ptlb:clamp Y max,ptin:_clampYmax,varname:_clampYmax,prsc:2,glob:False,v1:50;n:type:ShaderForge.SFN_Multiply,id:8512,x:35653,y:32954,varname:node_8512,prsc:2|A-2858-OUT,B-4770-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4770,x:35597,y:33202,ptovrint:False,ptlb:disp power,ptin:_disppower,varname:_disppower,prsc:2,glob:False,v1:1;proporder:8422-1789-3802-5274-2775-1231-9674-6647-8072-8102-4770;pass:END;sub:END;*/

Shader "Almgp/vhsrace/GRID_VHS_modelUV" {
    Properties {
        _GRIDRGBA ("GRID(RGBA)", 2D) = "white" {}
        _blurgrid ("blur grid", Range(0, 5)) = 5
        _speedglow ("speed glow", Float ) = 4
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _sps ("sps", Float ) = 1
        _finP ("fin P", Range(0, 1.8)) = 0
        _vertextext ("vertex text", 2D) = "white" {}
        _vmaskscale ("v mask scale", Float ) = 1
        _clampYmin ("clamp Y min", Float ) = 0
        _clampYmax ("clamp Y max", Float ) = 50
        _disppower ("disp power", Float ) = 1
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _GRIDRGBA; uniform float4 _GRIDRGBA_ST;
            uniform float _blurgrid;
            uniform float _speedglow;
            uniform float4 _color;
            uniform float _sps;
            uniform sampler2D _vertextext; uniform float4 _vertextext_ST;
            uniform float _vmaskscale;
            uniform float _finP;
            uniform float _clampYmin;
            uniform float _clampYmax;
            uniform float _disppower;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float2 node_6312 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b)/_vmaskscale);
                float4 node_701 = _Time + _TimeEditor;
                float node_1853 = (node_701.r*_sps);
                float2 node_7364 = (node_6312+node_1853);
                float4 _node_9254 = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_7364, _vertextext),0.0,0));
                float2 node_516 = (node_6312+((1.0 - node_1853)*(-1.15)));
                float4 _vertexmask = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_516, _vertextext),0.0,0));
                float node_9590 = clamp(mul(_Object2World, v.vertex).g,_clampYmin,_clampYmax);
                float3 node_8512 = (lerp(_node_9254.rgb,_vertexmask.rgb,node_9590)*_disppower);
                v.vertex.xyz += node_8512;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float4 _node_5799 = tex2D(_GRIDRGBA,TRANSFORM_TEX(i.uv0, _GRIDRGBA));
                float4 _node_6818 = tex2Dlod(_GRIDRGBA,float4(TRANSFORM_TEX(i.uv0, _GRIDRGBA),0.0,_blurgrid));
                float4 _node_7471 = tex2Dlod(_GRIDRGBA,float4(TRANSFORM_TEX(i.uv0, _GRIDRGBA),0.0,(1.25+_blurgrid)));
                float4 node_767 = _Time + _TimeEditor;
                float3 node_3298 = lerp(_node_6818.rgb,_node_7471.rgb,sin((node_767.b*_speedglow)));
                float node_3726 = 0.33;
                float3 node_2356 = (_color.rgb*saturate((_node_5799.rgb+_node_6818.rgb+lerp(node_3298,lerp(node_3298,_node_6818.rgb,node_3726),node_3726)+_node_7471.rgb)));
                float3 emissive = (node_2356*_finP);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _sps;
            uniform sampler2D _vertextext; uniform float4 _vertextext_ST;
            uniform float _vmaskscale;
            uniform float _clampYmin;
            uniform float _clampYmax;
            uniform float _disppower;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float4 posWorld : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_6312 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b)/_vmaskscale);
                float4 node_701 = _Time + _TimeEditor;
                float node_1853 = (node_701.r*_sps);
                float2 node_7364 = (node_6312+node_1853);
                float4 _node_9254 = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_7364, _vertextext),0.0,0));
                float2 node_516 = (node_6312+((1.0 - node_1853)*(-1.15)));
                float4 _vertexmask = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_516, _vertextext),0.0,0));
                float node_9590 = clamp(mul(_Object2World, v.vertex).g,_clampYmin,_clampYmax);
                float3 node_8512 = (lerp(_node_9254.rgb,_vertexmask.rgb,node_9590)*_disppower);
                v.vertex.xyz += node_8512;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _sps;
            uniform sampler2D _vertextext; uniform float4 _vertextext_ST;
            uniform float _vmaskscale;
            uniform float _clampYmin;
            uniform float _clampYmax;
            uniform float _disppower;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_6312 = (float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b)/_vmaskscale);
                float4 node_701 = _Time + _TimeEditor;
                float node_1853 = (node_701.r*_sps);
                float2 node_7364 = (node_6312+node_1853);
                float4 _node_9254 = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_7364, _vertextext),0.0,0));
                float2 node_516 = (node_6312+((1.0 - node_1853)*(-1.15)));
                float4 _vertexmask = tex2Dlod(_vertextext,float4(TRANSFORM_TEX(node_516, _vertextext),0.0,0));
                float node_9590 = clamp(mul(_Object2World, v.vertex).g,_clampYmin,_clampYmax);
                float3 node_8512 = (lerp(_node_9254.rgb,_vertexmask.rgb,node_9590)*_disppower);
                v.vertex.xyz += node_8512;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
