// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4569,x:33646,y:32577,varname:node_4569,prsc:2|emission-356-OUT,voffset-2091-OUT;n:type:ShaderForge.SFN_Tex2d,id:540,x:32071,y:32882,ptovrint:False,ptlb:beam texture,ptin:_beamtexture,varname:_beamtexture,prsc:2,tex:5500a345dd613314fac4519ce16fb45a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4779,x:32527,y:32548,ptovrint:False,ptlb:color beam,ptin:_colorbeam,varname:_colorbeam,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:1658,x:32300,y:32691,varname:node_1658,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:470,x:32956,y:32922,varname:node_470,prsc:2|A-1658-OUT,B-915-OUT,T-540-RGB;n:type:ShaderForge.SFN_Multiply,id:356,x:33209,y:32799,varname:node_356,prsc:2|A-470-OUT,B-9415-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9415,x:32972,y:32727,ptovrint:False,ptlb:beam power,ptin:_beampower,varname:_beampower,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Time,id:2080,x:31878,y:33365,varname:node_2080,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:5120,x:31320,y:32673,varname:node_5120,prsc:2;n:type:ShaderForge.SFN_If,id:1147,x:33212,y:33408,varname:node_1147,prsc:2|A-5120-Y,B-4733-OUT,GT-1340-OUT,EQ-5352-OUT,LT-5352-OUT;n:type:ShaderForge.SFN_Vector1,id:4733,x:32943,y:33374,varname:node_4733,prsc:2,v1:25;n:type:ShaderForge.SFN_Vector1,id:5352,x:32961,y:33611,varname:node_5352,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:2091,x:33374,y:33102,varname:node_2091,prsc:2|A-3334-OUT,B-1147-OUT,T-6978-OUT;n:type:ShaderForge.SFN_Vector1,id:3334,x:32279,y:33089,varname:node_3334,prsc:2,v1:0;n:type:ShaderForge.SFN_Cos,id:6978,x:32542,y:33571,varname:node_6978,prsc:2|IN-4808-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9579,x:32326,y:33237,ptovrint:False,ptlb:height pulse 1 ,ptin:_heightpulse1,varname:_heightpulse1,prsc:2,glob:False,v1:55;n:type:ShaderForge.SFN_Append,id:7178,x:32616,y:33210,varname:node_7178,prsc:2|A-3334-OUT,B-3334-OUT,C-9579-OUT;n:type:ShaderForge.SFN_Multiply,id:4808,x:31841,y:33044,varname:node_4808,prsc:2|A-2080-T,B-6399-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6399,x:31894,y:33625,ptovrint:False,ptlb:pulse speed,ptin:_pulsespeed,varname:_pulsespeed,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Append,id:8461,x:32616,y:33376,varname:node_8461,prsc:2|A-3334-OUT,B-3334-OUT,C-1232-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1232,x:32326,y:33381,ptovrint:False,ptlb:height pulse 1 _copy,ptin:_heightpulse1_copy,varname:_heightpulse1_copy,prsc:2,glob:False,v1:25;n:type:ShaderForge.SFN_Lerp,id:1340,x:32943,y:33434,varname:node_1340,prsc:2|A-7178-OUT,B-8461-OUT,T-6978-OUT;n:type:ShaderForge.SFN_Tex2d,id:6053,x:32753,y:32492,ptovrint:False,ptlb:vrtical gradient,ptin:_vrticalgradient,varname:_vrticalgradient,prsc:2,tex:ab8c1b41f3194b14ea807404247af964,ntxv:0,isnm:False|UVIN-1645-UVOUT;n:type:ShaderForge.SFN_Append,id:7574,x:31798,y:32724,varname:node_7574,prsc:2|A-3334-OUT,B-6436-OUT;n:type:ShaderForge.SFN_Rotator,id:1645,x:32332,y:32368,varname:node_1645,prsc:2|UVIN-2728-OUT,ANG-9652-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9652,x:32158,y:32550,ptovrint:False,ptlb:gradient andle,ptin:_gradientandle,varname:_gradientandle,prsc:2,on:False|A-789-OUT,B-1658-OUT;n:type:ShaderForge.SFN_Vector1,id:789,x:31987,y:32527,varname:node_789,prsc:2,v1:90;n:type:ShaderForge.SFN_Divide,id:6436,x:31569,y:32690,varname:node_6436,prsc:2|A-5120-Y,B-6547-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6547,x:31585,y:32949,ptovrint:False,ptlb: tile grad,ptin:_tilegrad,varname:_tilegrad,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:2728,x:32006,y:32708,varname:node_2728,prsc:2|A-7574-OUT,B-4808-OUT;n:type:ShaderForge.SFN_Color,id:9556,x:32495,y:32812,ptovrint:False,ptlb:color beam 2,ptin:_colorbeam2,varname:_colorbeam2,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:915,x:32691,y:32819,varname:node_915,prsc:2|A-9556-RGB,B-4779-RGB,T-6053-RGB;proporder:540-4779-9415-9579-6399-1232-6053-9652-6547-9556;pass:END;sub:END;*/

Shader "Almgp/vhsrace/city/glow beam" {
    Properties {
        _beamtexture ("beam texture", 2D) = "white" {}
        _colorbeam ("color beam", Color) = (0.5,0.5,0.5,1)
        _beampower ("beam power", Float ) = 2
        _heightpulse1 ("height pulse 1 ", Float ) = 55
        _pulsespeed ("pulse speed", Float ) = 2
        _heightpulse1_copy ("height pulse 1 _copy", Float ) = 25
        _vrticalgradient ("vrtical gradient", 2D) = "white" {}
        [MaterialToggle] _gradientandle ("gradient andle", Float ) = 90
        _tilegrad (" tile grad", Float ) = 2
        _colorbeam2 ("color beam 2", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
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
            uniform sampler2D _beamtexture; uniform float4 _beamtexture_ST;
            uniform float4 _colorbeam;
            uniform float _beampower;
            uniform float _heightpulse1;
            uniform float _pulsespeed;
            uniform float _heightpulse1_copy;
            uniform sampler2D _vrticalgradient; uniform float4 _vrticalgradient_ST;
            uniform fixed _gradientandle;
            uniform float _tilegrad;
            uniform float4 _colorbeam2;
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
                float node_3334 = 0.0;
                float node_1147_if_leA = step(mul(_Object2World, v.vertex).g,25.0);
                float node_1147_if_leB = step(25.0,mul(_Object2World, v.vertex).g);
                float node_5352 = 0.0;
                float4 node_2080 = _Time + _TimeEditor;
                float node_4808 = (node_2080.g*_pulsespeed);
                float node_6978 = cos(node_4808);
                float3 node_2091 = lerp(float3(node_3334,node_3334,node_3334),lerp((node_1147_if_leA*node_5352)+(node_1147_if_leB*lerp(float3(node_3334,node_3334,_heightpulse1),float3(node_3334,node_3334,_heightpulse1_copy),node_6978)),node_5352,node_1147_if_leA*node_1147_if_leB),node_6978);
                v.vertex.xyz += node_2091;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_1658 = 0.0;
                float node_1645_ang = lerp( 90.0, node_1658, _gradientandle );
                float node_1645_spd = 1.0;
                float node_1645_cos = cos(node_1645_spd*node_1645_ang);
                float node_1645_sin = sin(node_1645_spd*node_1645_ang);
                float2 node_1645_piv = float2(0.5,0.5);
                float node_3334 = 0.0;
                float4 node_2080 = _Time + _TimeEditor;
                float node_4808 = (node_2080.g*_pulsespeed);
                float2 node_1645 = (mul((float2(node_3334,(i.posWorld.g/_tilegrad))+node_4808)-node_1645_piv,float2x2( node_1645_cos, -node_1645_sin, node_1645_sin, node_1645_cos))+node_1645_piv);
                float4 _vrticalgradient_var = tex2D(_vrticalgradient,TRANSFORM_TEX(node_1645, _vrticalgradient));
                float4 _beamtexture_var = tex2D(_beamtexture,TRANSFORM_TEX(i.uv0, _beamtexture));
                float3 emissive = (lerp(float3(node_1658,node_1658,node_1658),lerp(_colorbeam2.rgb,_colorbeam.rgb,_vrticalgradient_var.rgb),_beamtexture_var.rgb)*_beampower);
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
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _heightpulse1;
            uniform float _pulsespeed;
            uniform float _heightpulse1_copy;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float4 posWorld : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_3334 = 0.0;
                float node_1147_if_leA = step(mul(_Object2World, v.vertex).g,25.0);
                float node_1147_if_leB = step(25.0,mul(_Object2World, v.vertex).g);
                float node_5352 = 0.0;
                float4 node_2080 = _Time + _TimeEditor;
                float node_4808 = (node_2080.g*_pulsespeed);
                float node_6978 = cos(node_4808);
                float3 node_2091 = lerp(float3(node_3334,node_3334,node_3334),lerp((node_1147_if_leA*node_5352)+(node_1147_if_leB*lerp(float3(node_3334,node_3334,_heightpulse1),float3(node_3334,node_3334,_heightpulse1_copy),node_6978)),node_5352,node_1147_if_leA*node_1147_if_leB),node_6978);
                v.vertex.xyz += node_2091;
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _heightpulse1;
            uniform float _pulsespeed;
            uniform float _heightpulse1_copy;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float node_3334 = 0.0;
                float node_1147_if_leA = step(mul(_Object2World, v.vertex).g,25.0);
                float node_1147_if_leB = step(25.0,mul(_Object2World, v.vertex).g);
                float node_5352 = 0.0;
                float4 node_2080 = _Time + _TimeEditor;
                float node_4808 = (node_2080.g*_pulsespeed);
                float node_6978 = cos(node_4808);
                float3 node_2091 = lerp(float3(node_3334,node_3334,node_3334),lerp((node_1147_if_leA*node_5352)+(node_1147_if_leB*lerp(float3(node_3334,node_3334,_heightpulse1),float3(node_3334,node_3334,_heightpulse1_copy),node_6978)),node_5352,node_1147_if_leA*node_1147_if_leB),node_6978);
                v.vertex.xyz += node_2091;
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
