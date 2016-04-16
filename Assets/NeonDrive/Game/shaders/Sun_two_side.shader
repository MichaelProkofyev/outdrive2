// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:4372,x:33788,y:32389,varname:node_4372,prsc:2|emission-3874-OUT,alpha-6673-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3739,x:32263,y:32574,ptovrint:False,ptlb:sun,ptin:_sun,varname:_sun,tex:730eadadbeb503646ad2df1b578dc6cd,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4718,x:32604,y:32386,varname:_node_4718,prsc:2,tex:730eadadbeb503646ad2df1b578dc6cd,ntxv:0,isnm:False|UVIN-3920-UVOUT,TEX-3739-TEX;n:type:ShaderForge.SFN_TexCoord,id:3920,x:32223,y:32342,varname:node_3920,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:3285,x:32604,y:32555,varname:_node_4080,prsc:2,tex:730eadadbeb503646ad2df1b578dc6cd,ntxv:0,isnm:False|MIP-1479-OUT,TEX-3739-TEX;n:type:ShaderForge.SFN_Tex2d,id:2438,x:32604,y:32723,varname:_node_2321,prsc:2,tex:730eadadbeb503646ad2df1b578dc6cd,ntxv:0,isnm:False|MIP-266-OUT,TEX-3739-TEX;n:type:ShaderForge.SFN_Slider,id:1479,x:32129,y:32970,ptovrint:False,ptlb:blur,ptin:_blur,varname:_blur,prsc:2,min:0,cur:2.521368,max:5;n:type:ShaderForge.SFN_Add,id:266,x:32549,y:32929,varname:node_266,prsc:2|A-1479-OUT,B-8571-OUT;n:type:ShaderForge.SFN_Vector1,id:8571,x:32418,y:33115,varname:node_8571,prsc:2,v1:1.33;n:type:ShaderForge.SFN_Lerp,id:3306,x:32906,y:32430,varname:node_3306,prsc:2|A-3285-RGB,B-2438-RGB,T-3574-OUT;n:type:ShaderForge.SFN_Time,id:4474,x:32813,y:33041,varname:node_4474,prsc:2;n:type:ShaderForge.SFN_Sin,id:3574,x:32813,y:32843,varname:node_3574,prsc:2|IN-1424-OUT;n:type:ShaderForge.SFN_Multiply,id:1424,x:33034,y:33121,varname:node_1424,prsc:2|A-4474-T,B-1114-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1114,x:32753,y:33245,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:1527,x:33133,y:32998,varname:node_1527,prsc:2|A-8571-OUT,B-1424-OUT;n:type:ShaderForge.SFN_Sign,id:3795,x:33007,y:32873,varname:node_3795,prsc:2|IN-1527-OUT;n:type:ShaderForge.SFN_Lerp,id:6771,x:32888,y:32333,varname:node_6771,prsc:2|A-2438-RGB,B-3306-OUT,T-3795-OUT;n:type:ShaderForge.SFN_Lerp,id:9611,x:33063,y:32368,varname:node_9611,prsc:2|A-4718-RGB,B-3306-OUT,T-8564-OUT;n:type:ShaderForge.SFN_Vector1,id:8564,x:33266,y:32660,varname:node_8564,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Lerp,id:3288,x:33063,y:32483,varname:node_3288,prsc:2|A-6771-OUT,B-3306-OUT,T-8564-OUT;n:type:ShaderForge.SFN_Lerp,id:3874,x:33229,y:32416,varname:node_3874,prsc:2|A-9611-OUT,B-3288-OUT,T-8564-OUT;n:type:ShaderForge.SFN_Add,id:5874,x:33266,y:32834,varname:node_5874,prsc:2|A-3285-A,B-1666-OUT,C-5287-OUT;n:type:ShaderForge.SFN_Clamp01,id:6673,x:33459,y:32834,varname:node_6673,prsc:2|IN-5874-OUT;n:type:ShaderForge.SFN_Lerp,id:1666,x:32907,y:32606,varname:node_1666,prsc:2|A-5287-OUT,B-2438-A,T-3795-OUT;n:type:ShaderForge.SFN_Lerp,id:5287,x:32953,y:32735,varname:node_5287,prsc:2|A-3285-A,B-6080-OUT,T-3574-OUT;n:type:ShaderForge.SFN_Frac,id:6080,x:32782,y:32723,varname:node_6080,prsc:2|IN-2438-A;proporder:3739-1479-1114;pass:END;sub:END;*/

Shader "Almgp/vhsrace/Sun_two_side" {
    Properties {
        _sun ("sun", 2D) = "white" {}
        _blur ("blur", Range(0, 5)) = 2.521368
        _speed ("speed", Float ) = 2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _sun; uniform float4 _sun_ST;
            uniform float _blur;
            uniform float _speed;
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
                float4 _node_4718 = tex2D(_sun,TRANSFORM_TEX(i.uv0, _sun));
                float4 _node_4080 = tex2Dlod(_sun,float4(TRANSFORM_TEX(i.uv0, _sun),0.0,_blur));
                float node_8571 = 1.33;
                float4 _node_2321 = tex2Dlod(_sun,float4(TRANSFORM_TEX(i.uv0, _sun),0.0,(_blur+node_8571)));
                float4 node_4474 = _Time + _TimeEditor;
                float node_1424 = (node_4474.g*_speed);
                float node_3574 = sin(node_1424);
                float3 node_3306 = lerp(_node_4080.rgb,_node_2321.rgb,node_3574);
                float node_8564 = 0.5;
                float node_3795 = sign((node_8571+node_1424));
                float3 emissive = lerp(lerp(_node_4718.rgb,node_3306,node_8564),lerp(lerp(_node_2321.rgb,node_3306,node_3795),node_3306,node_8564),node_8564);
                float3 finalColor = emissive;
                float node_5287 = lerp(_node_4080.a,frac(_node_2321.a),node_3574);
                fixed4 finalRGBA = fixed4(finalColor,saturate((_node_4080.a+lerp(node_5287,_node_2321.a,node_3795)+node_5287)));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
