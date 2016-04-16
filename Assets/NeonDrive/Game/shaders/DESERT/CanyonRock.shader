// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9697,x:32931,y:32717,varname:node_9697,prsc:2|emission-7393-OUT;n:type:ShaderForge.SFN_Tex2d,id:6242,x:31867,y:32631,ptovrint:False,ptlb:height gradient,ptin:_heightgradient,varname:_heightgradient,prsc:2,tex:85f555293b0a68d4d948eeefe696b8ce,ntxv:0,isnm:False|UVIN-6543-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4774,x:31208,y:32729,varname:node_4774,prsc:2;n:type:ShaderForge.SFN_Append,id:6543,x:31697,y:32817,varname:node_6543,prsc:2|A-4503-OUT,B-4503-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9761,x:31263,y:33007,ptovrint:False,ptlb:tile gradient,ptin:_tilegradient,varname:_tilegradient,prsc:2,glob:False,v1:0.5;n:type:ShaderForge.SFN_Divide,id:4503,x:31455,y:32775,varname:node_4503,prsc:2|A-4774-Y,B-9761-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4164,x:31964,y:33128,ptovrint:False,ptlb:grid,ptin:_grid,varname:_grid,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4291,x:32224,y:32897,varname:_node_4291,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-8415-UVOUT,TEX-4164-TEX;n:type:ShaderForge.SFN_TexCoord,id:8415,x:32005,y:32803,varname:node_8415,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:1706,x:32224,y:33141,ptovrint:False,ptlb:gridColor,ptin:_gridColor,varname:_gridColor,prsc:2,glob:False,c1:0,c2:0.8344827,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:810,x:32458,y:33089,varname:node_810,prsc:2|A-1706-RGB,B-3692-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3692,x:32369,y:33366,ptovrint:False,ptlb:gridColorPower,ptin:_gridColorPower,varname:_gridColorPower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Tex2d,id:8999,x:32224,y:32658,varname:_node_3225,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-8415-UVOUT,MIP-3744-OUT,TEX-4164-TEX;n:type:ShaderForge.SFN_Slider,id:3744,x:31896,y:33351,ptovrint:False,ptlb:blur,ptin:_blur,varname:_blur,prsc:2,min:0,cur:4.3462,max:8;n:type:ShaderForge.SFN_Lerp,id:7393,x:32646,y:32848,varname:node_7393,prsc:2|A-1678-OUT,B-4291-RGB,T-624-OUT;n:type:ShaderForge.SFN_Time,id:8825,x:31465,y:33041,varname:node_8825,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7696,x:31671,y:33075,varname:node_7696,prsc:2|A-1845-OUT,B-8825-T;n:type:ShaderForge.SFN_ValueProperty,id:1845,x:31626,y:33333,ptovrint:False,ptlb:pulseSpeed,ptin:_pulseSpeed,varname:_pulseSpeed,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Sin,id:624,x:31844,y:33107,varname:node_624,prsc:2|IN-7696-OUT;n:type:ShaderForge.SFN_Add,id:1678,x:32536,y:32747,varname:node_1678,prsc:2|A-8999-RGB,B-4868-OUT;n:type:ShaderForge.SFN_Multiply,id:6021,x:32410,y:32532,varname:node_6021,prsc:2|A-8999-RGB,B-2714-OUT;n:type:ShaderForge.SFN_Vector1,id:2714,x:32170,y:32554,varname:node_2714,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4868,x:32388,y:32864,varname:node_4868,prsc:2|A-2714-OUT,B-4291-RGB;proporder:6242-9761-4164-3744-1845;pass:END;sub:END;*/

Shader "Almgp/vhsrace/DESERT/CanyonRock" {
    Properties {
        _heightgradient ("height gradient", 2D) = "white" {}
        _tilegradient ("tile gradient", Float ) = 0.5
        _grid ("grid", 2D) = "white" {}
        _blur ("blur", Range(0, 8)) = 4.3462
        _pulseSpeed ("pulseSpeed", Float ) = 5
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _grid; uniform float4 _grid_ST;
            uniform float _blur;
            uniform float _pulseSpeed;
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
                float4 _node_3225 = tex2Dlod(_grid,float4(TRANSFORM_TEX(i.uv0, _grid),0.0,_blur));
                float node_2714 = 0.5;
                float4 _node_4291 = tex2D(_grid,TRANSFORM_TEX(i.uv0, _grid));
                float4 node_8825 = _Time + _TimeEditor;
                float node_7696 = (_pulseSpeed*node_8825.g);
                float3 emissive = lerp((_node_3225.rgb+(node_2714*_node_4291.rgb)),_node_4291.rgb,sin(node_7696));
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
