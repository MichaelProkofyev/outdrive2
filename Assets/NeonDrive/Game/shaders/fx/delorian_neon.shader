// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:True,tesm:0,blpr:2,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:107,x:34841,y:32394,varname:node_107,prsc:2|emission-531-OUT,custl-531-OUT;n:type:ShaderForge.SFN_Color,id:5267,x:32517,y:32698,ptovrint:False,ptlb:delorian_neon_full,ptin:_delorian_neon_full,varname:_delorian_neon_full,prsc:2,glob:False,c1:0,c2:1,c3:0.9999998,c4:1;n:type:ShaderForge.SFN_Color,id:418,x:32517,y:32509,ptovrint:False,ptlb:neon_turbo,ptin:_neon_turbo,varname:_neon_turbo,prsc:2,glob:False,c1:1,c2:0.8482758,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:5780,x:32517,y:32923,ptovrint:False,ptlb:damageColor,ptin:_damageColor,varname:_damageColor,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:6927,x:32886,y:32621,varname:node_6927,prsc:2|A-418-RGB,B-5267-RGB,T-1335-OUT;n:type:ShaderForge.SFN_Lerp,id:7023,x:33148,y:32602,varname:node_7023,prsc:2|A-6927-OUT,B-5780-RGB,T-2456-OUT;n:type:ShaderForge.SFN_Slider,id:2456,x:32767,y:33005,ptovrint:False,ptlb:damage,ptin:_damage,varname:_damage,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Power,id:4826,x:33384,y:32502,varname:node_4826,prsc:2|VAL-7023-OUT,EXP-7231-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7231,x:33206,y:32872,ptovrint:False,ptlb:power,ptin:_power,varname:_power,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Normalize,id:9395,x:33519,y:32676,varname:node_9395,prsc:2|IN-4826-OUT;n:type:ShaderForge.SFN_Slider,id:6074,x:33680,y:33144,ptovrint:False,ptlb:neonOff,ptin:_neonOff,varname:_neonOff,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:4068,x:34263,y:32723,varname:node_4068,prsc:2|A-3717-OUT,B-4277-OUT,T-6074-OUT;n:type:ShaderForge.SFN_Vector1,id:3717,x:33572,y:32974,varname:node_3717,prsc:2,v1:0;n:type:ShaderForge.SFN_Time,id:3759,x:33270,y:32350,varname:node_3759,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4038,x:33581,y:32201,varname:node_4038,prsc:2|A-4076-OUT,B-3759-T;n:type:ShaderForge.SFN_ValueProperty,id:4076,x:33409,y:32245,ptovrint:False,ptlb:pulse,ptin:_pulse,varname:_pulse,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Sin,id:1179,x:33814,y:32188,varname:node_1179,prsc:2|IN-4038-OUT;n:type:ShaderForge.SFN_Lerp,id:6174,x:33775,y:32442,varname:node_6174,prsc:2|A-9395-OUT,B-4826-OUT,T-9405-OUT;n:type:ShaderForge.SFN_Clamp01,id:4277,x:34033,y:32723,varname:node_4277,prsc:2|IN-6174-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:9405,x:34067,y:32273,varname:node_9405,prsc:2,min:0.3,max:1|IN-1179-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1335,x:32987,y:32849,ptovrint:False,ptlb:turboR,ptin:_turboR,varname:_turboR,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:531,x:34532,y:32683,varname:node_531,prsc:2|A-4068-OUT,B-800-OUT;n:type:ShaderForge.SFN_ValueProperty,id:800,x:34396,y:32926,ptovrint:False,ptlb:superpower,ptin:_superpower,varname:_superpower,prsc:2,glob:False,v1:1;proporder:5267-418-5780-2456-7231-6074-4076-1335-800;pass:END;sub:END;*/

Shader "Almgp/vhsrace/delorian_neon" {
    Properties {
        _delorian_neon_full ("delorian_neon_full", Color) = (0,1,0.9999998,1)
        _neon_turbo ("neon_turbo", Color) = (1,0.8482758,0,1)
        _damageColor ("damageColor", Color) = (1,0,0,1)
        _damage ("damage", Range(0, 1)) = 0
        _power ("power", Float ) = 2
        _neonOff ("neonOff", Range(0, 1)) = 0
        _pulse ("pulse", Float ) = 3
        _turboR ("turboR", Float ) = 0
        _superpower ("superpower", Float ) = 1
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
            uniform float4 _delorian_neon_full;
            uniform float4 _neon_turbo;
            uniform float4 _damageColor;
            uniform float _damage;
            uniform float _power;
            uniform float _neonOff;
            uniform float _pulse;
            uniform float _turboR;
            uniform float _superpower;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_3717 = 0.0;
                float3 node_4826 = pow(lerp(lerp(_neon_turbo.rgb,_delorian_neon_full.rgb,_turboR),_damageColor.rgb,_damage),_power);
                float4 node_3759 = _Time + _TimeEditor;
                float3 node_531 = (lerp(float3(node_3717,node_3717,node_3717),saturate(lerp(normalize(node_4826),node_4826,clamp(sin((_pulse*node_3759.g)),0.3,1))),_neonOff)*_superpower);
                float3 emissive = node_531;
                float3 finalColor = emissive + node_531;
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
