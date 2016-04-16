// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1906,x:34091,y:32263,varname:node_1906,prsc:2|emission-7888-OUT;n:type:ShaderForge.SFN_Tex2d,id:9849,x:31914,y:32365,ptovrint:False,ptlb:Emis1,ptin:_Emis1,varname:_Emis1,prsc:2,tex:a1b9ec2795e923e4c8f5a48a316887d2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:585,x:32291,y:33023,ptovrint:False,ptlb:emis2,ptin:_emis2,varname:_emis2,prsc:2,tex:48cdf5b7599aa354687ff1645304bbaa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1260,x:32451,y:32657,ptovrint:False,ptlb:emisblend,ptin:_emisblend,varname:_emisblend,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:8752,x:32608,y:32526,varname:node_8752,prsc:2|A-6136-OUT,B-585-RGB,T-1260-OUT;n:type:ShaderForge.SFN_Multiply,id:7888,x:33542,y:32315,varname:node_7888,prsc:2|A-3513-OUT,B-8752-OUT;n:type:ShaderForge.SFN_Color,id:7016,x:32440,y:32109,ptovrint:False,ptlb:color neon,ptin:_colorneon,varname:_colorneon,prsc:2,glob:False,c1:0,c2:0.6689658,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3513,x:32854,y:32298,varname:node_3513,prsc:2|A-1342-OUT,B-4813-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1342,x:32780,y:31987,ptovrint:False,ptlb:neonpower,ptin:_neonpower,varname:_neonpower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6136,x:32185,y:32265,varname:node_6136,prsc:2|A-4820-OUT,B-9849-RGB;n:type:ShaderForge.SFN_Time,id:2452,x:31771,y:31986,varname:node_2452,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4463,x:32084,y:32035,varname:node_4463,prsc:2|A-1839-OUT,B-2452-T;n:type:ShaderForge.SFN_ValueProperty,id:1839,x:31757,y:32197,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Sin,id:3416,x:32227,y:32093,varname:node_3416,prsc:2|IN-4463-OUT;n:type:ShaderForge.SFN_Lerp,id:4820,x:31987,y:32165,varname:node_4820,prsc:2|A-4952-OUT,B-4963-OUT,T-3416-OUT;n:type:ShaderForge.SFN_Vector1,id:4963,x:32279,y:31960,varname:node_4963,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4952,x:31532,y:32115,varname:node_4952,prsc:2,v1:5;n:type:ShaderForge.SFN_Color,id:1124,x:32396,y:32349,ptovrint:False,ptlb:color neon_2,ptin:_colorneon_2,varname:_colorneon_2,prsc:2,glob:False,c1:0,c2:0.6689658,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:4813,x:32633,y:32298,varname:node_4813,prsc:2|A-7016-RGB,B-4965-OUT,T-1260-OUT;n:type:ShaderForge.SFN_Multiply,id:4965,x:32652,y:32122,varname:node_4965,prsc:2|A-1342-OUT,B-1124-RGB;proporder:9849-585-1260-7016-1342-1839-1124;pass:END;sub:END;*/

Shader "Almgp/Vhsrace/Road_additive" {
    Properties {
        _Emis1 ("Emis1", 2D) = "white" {}
        _emis2 ("emis2", 2D) = "white" {}
        _emisblend ("emisblend", Range(0, 1)) = 0
        _colorneon ("color neon", Color) = (0,0.6689658,1,1)
        _neonpower ("neonpower", Float ) = 1
        _speed ("speed", Float ) = 1
        _colorneon_2 ("color neon_2", Color) = (0,0.6689658,1,1)
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Emis1; uniform float4 _Emis1_ST;
            uniform sampler2D _emis2; uniform float4 _emis2_ST;
            uniform float _emisblend;
            uniform float4 _colorneon;
            uniform float _neonpower;
            uniform float _speed;
            uniform float4 _colorneon_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float4 node_2452 = _Time + _TimeEditor;
                float4 _Emis1_var = tex2D(_Emis1,TRANSFORM_TEX(i.uv0, _Emis1));
                float4 _emis2_var = tex2D(_emis2,TRANSFORM_TEX(i.uv0, _emis2));
                float3 emissive = ((_neonpower*lerp(_colorneon.rgb,(_neonpower*_colorneon_2.rgb),_emisblend))*lerp((lerp(5.0,1.0,sin((_speed*node_2452.g)))*_Emis1_var.rgb),_emis2_var.rgb,_emisblend));
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
