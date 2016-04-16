// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3956,x:33711,y:32757,varname:node_3956,prsc:2|emission-449-OUT;n:type:ShaderForge.SFN_Tex2d,id:9854,x:32231,y:32976,varname:_texture,prsc:2,tex:fae4d713ad1199ffd0004fe88d76c639,ntxv:0,isnm:False|TEX-859-TEX;n:type:ShaderForge.SFN_Slider,id:1647,x:32894,y:32649,ptovrint:False,ptlb:emisblend,ptin:_emisblend,varname:_emisblend,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:3972,x:32344,y:32769,varname:node_3972,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5491,x:32725,y:32781,varname:node_5491,prsc:2|A-9075-OUT,B-3972-T;n:type:ShaderForge.SFN_ValueProperty,id:9075,x:32507,y:32637,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Color,id:9778,x:32614,y:33090,ptovrint:False,ptlb:color1,ptin:_color1,varname:_color1,prsc:2,glob:False,c1:1,c2:0.2275862,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9521,x:32614,y:33306,ptovrint:False,ptlb:color2,ptin:_color2,varname:_color2,prsc:2,glob:False,c1:1,c2:0.4355984,c3:0.2279412,c4:1;n:type:ShaderForge.SFN_Multiply,id:8219,x:32880,y:33093,varname:node_8219,prsc:2|A-9778-RGB,B-5032-OUT;n:type:ShaderForge.SFN_Multiply,id:8966,x:32880,y:33261,varname:node_8966,prsc:2|A-9521-RGB,B-6214-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5032,x:33115,y:33261,ptovrint:False,ptlb:power color 1,ptin:_powercolor1,varname:_powercolor1,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_ValueProperty,id:6214,x:33154,y:33408,ptovrint:False,ptlb:power color 2,ptin:_powercolor2,varname:_powercolor2,prsc:2,glob:False,v1:1.2;n:type:ShaderForge.SFN_Sin,id:9669,x:32907,y:32781,varname:node_9669,prsc:2|IN-5491-OUT;n:type:ShaderForge.SFN_Lerp,id:3261,x:33065,y:32983,varname:node_3261,prsc:2|A-8219-OUT,B-8966-OUT,T-9669-OUT;n:type:ShaderForge.SFN_Multiply,id:2061,x:33177,y:32894,varname:node_2061,prsc:2|A-790-OUT,B-3261-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:859,x:32014,y:33066,ptovrint:False,ptlb:trail texture,ptin:_trailtexture,varname:_trailtexture,tex:fae4d713ad1199ffd0004fe88d76c639,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5188,x:32401,y:33217,varname:_node_5188,prsc:2,tex:fae4d713ad1199ffd0004fe88d76c639,ntxv:0,isnm:False|UVIN-346-UVOUT,TEX-859-TEX;n:type:ShaderForge.SFN_Rotator,id:346,x:32190,y:33269,varname:node_346,prsc:2|UVIN-5020-OUT,ANG-6105-OUT;n:type:ShaderForge.SFN_TexCoord,id:7091,x:31805,y:33219,varname:node_7091,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:1940,x:32056,y:33437,varname:node_1940,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:6105,x:32360,y:33445,varname:node_6105,prsc:2|A-1940-OUT,B-6412-OUT;n:type:ShaderForge.SFN_Multiply,id:5020,x:31784,y:33356,varname:node_5020,prsc:2|A-7091-UVOUT,B-7362-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7362,x:31596,y:33380,ptovrint:False,ptlb:line scale,ptin:_linescale,varname:_linescale,prsc:2,glob:False,v1:16;n:type:ShaderForge.SFN_Multiply,id:790,x:32479,y:32958,varname:node_790,prsc:2|A-9854-RGB,B-5188-RGB;n:type:ShaderForge.SFN_Pi,id:6412,x:32215,y:33593,varname:node_6412,prsc:2;n:type:ShaderForge.SFN_Lerp,id:449,x:33433,y:32826,varname:node_449,prsc:2|A-1994-OUT,B-2061-OUT,T-1647-OUT;n:type:ShaderForge.SFN_Vector1,id:1994,x:33146,y:32803,varname:node_1994,prsc:2,v1:0;proporder:9075-9778-9521-5032-6214-859-7362-1647;pass:END;sub:END;*/

Shader "Almgp/DelorianTrail/delorianTrail" {
    Properties {
        _speed ("speed", Float ) = 5
        _color1 ("color1", Color) = (1,0.2275862,0,1)
        _color2 ("color2", Color) = (1,0.4355984,0.2279412,1)
        _powercolor1 ("power color 1", Float ) = 4
        _powercolor2 ("power color 2", Float ) = 1.2
        _trailtexture ("trail texture", 2D) = "white" {}
        _linescale ("line scale", Float ) = 16
        _emisblend ("emisblend", Range(0, 1)) = 0
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
            uniform float _emisblend;
            uniform float _speed;
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _powercolor1;
            uniform float _powercolor2;
            uniform sampler2D _trailtexture; uniform float4 _trailtexture_ST;
            uniform float _linescale;
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
                float node_1994 = 0.0;
                float4 _texture = tex2D(_trailtexture,TRANSFORM_TEX(i.uv0, _trailtexture));
                float node_1940 = 1.0;
                float node_346_ang = (node_1940*3.141592654);
                float node_346_spd = 1.0;
                float node_346_cos = cos(node_346_spd*node_346_ang);
                float node_346_sin = sin(node_346_spd*node_346_ang);
                float2 node_346_piv = float2(0.5,0.5);
                float2 node_346 = (mul((i.uv0*_linescale)-node_346_piv,float2x2( node_346_cos, -node_346_sin, node_346_sin, node_346_cos))+node_346_piv);
                float4 _node_5188 = tex2D(_trailtexture,TRANSFORM_TEX(node_346, _trailtexture));
                float4 node_3972 = _Time + _TimeEditor;
                float3 emissive = lerp(float3(node_1994,node_1994,node_1994),((_texture.rgb*_node_5188.rgb)*lerp((_color1.rgb*_powercolor1),(_color2.rgb*_powercolor2),sin((_speed*node_3972.g)))),_emisblend);
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
