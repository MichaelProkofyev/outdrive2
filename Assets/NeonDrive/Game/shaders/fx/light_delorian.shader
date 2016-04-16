// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4196,x:33937,y:32684,varname:node_4196,prsc:2|emission-3798-OUT;n:type:ShaderForge.SFN_TexCoord,id:6548,x:32427,y:32744,varname:node_6548,prsc:2,uv:0;n:type:ShaderForge.SFN_RemapRange,id:7291,x:32676,y:32717,varname:node_7291,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6548-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8345,x:32869,y:32737,varname:node_8345,prsc:2|A-7291-OUT,B-7291-OUT;n:type:ShaderForge.SFN_ComponentMask,id:473,x:33091,y:32750,varname:node_473,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8345-OUT;n:type:ShaderForge.SFN_Add,id:3388,x:33358,y:32785,varname:node_3388,prsc:2|A-473-R,B-473-G;n:type:ShaderForge.SFN_Power,id:7019,x:33528,y:32785,varname:node_7019,prsc:2|VAL-3388-OUT,EXP-4303-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4303,x:33389,y:33012,ptovrint:False,ptlb:fallout,ptin:_fallout,varname:_fallout,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_OneMinus,id:3798,x:33734,y:32750,varname:node_3798,prsc:2|IN-7019-OUT;proporder:4303;pass:END;sub:END;*/

Shader "Shader Forge/light_delorian" {
    Properties {
        _fallout ("fallout", Float ) = 5
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float _fallout;
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
                float2 node_7291 = (i.uv0*2.0+-1.0);
                float2 node_473 = (node_7291*node_7291).rg;
                float node_3798 = (1.0 - pow((node_473.r+node_473.g),_fallout));
                float3 emissive = float3(node_3798,node_3798,node_3798);
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
