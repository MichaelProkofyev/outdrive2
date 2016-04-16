// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1788,x:33064,y:32618,varname:node_1788,prsc:2|emission-619-OUT;n:type:ShaderForge.SFN_Tex2d,id:6055,x:32045,y:33068,ptovrint:False,ptlb:border,ptin:_border,varname:_border,prsc:2,tex:3377f7b55c27381429468e0dc683ec41,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:55,x:32062,y:32709,ptovrint:False,ptlb:grad,ptin:_grad,varname:_grad,prsc:2,tex:ab8c1b41f3194b14ea807404247af964,ntxv:0,isnm:False|UVIN-5054-OUT;n:type:ShaderForge.SFN_TexCoord,id:8586,x:31466,y:32732,varname:node_8586,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:8356,x:31617,y:32906,varname:node_8356,prsc:2|A-8586-V,B-8586-V;n:type:ShaderForge.SFN_Multiply,id:2877,x:31866,y:32848,varname:node_2877,prsc:2|A-8356-OUT,B-2882-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2882,x:31743,y:33026,ptovrint:False,ptlb:scale,ptin:_scale,varname:_scale,prsc:2,glob:False,v1:64;n:type:ShaderForge.SFN_Lerp,id:7844,x:32600,y:32710,varname:node_7844,prsc:2|A-4662-OUT,B-1447-OUT,T-7036-OUT;n:type:ShaderForge.SFN_Vector1,id:4662,x:32372,y:32763,varname:node_4662,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:1670,x:32254,y:32525,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.7794118,c2:0.2693555,c3:0.7442358,c4:1;n:type:ShaderForge.SFN_Multiply,id:1447,x:32600,y:32553,varname:node_1447,prsc:2|A-1670-RGB,B-9525-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9525,x:32416,y:32627,ptovrint:False,ptlb:color power,ptin:_colorpower,varname:_colorpower,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Blend,id:1076,x:32365,y:33059,varname:node_1076,prsc:2,blmd:13,clmp:True|SRC-6055-RGB,DST-55-RGB;n:type:ShaderForge.SFN_Time,id:8881,x:31706,y:32527,varname:node_8881,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2542,x:31856,y:32650,varname:node_2542,prsc:2|A-8881-T,B-9911-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9911,x:31684,y:32732,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:5054,x:31954,y:32503,varname:node_5054,prsc:2|A-2542-OUT,B-2877-OUT;n:type:ShaderForge.SFN_Multiply,id:442,x:32322,y:32873,varname:node_442,prsc:2|A-55-RGB,B-1770-OUT;n:type:ShaderForge.SFN_Vector1,id:1770,x:32062,y:32946,varname:node_1770,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Blend,id:7036,x:32606,y:32997,varname:node_7036,prsc:2,blmd:7,clmp:True|SRC-1076-OUT,DST-442-OUT;n:type:ShaderForge.SFN_Color,id:8340,x:32232,y:33319,ptovrint:False,ptlb:color_copy,ptin:_color_copy,varname:_color_copy,prsc:2,glob:False,c1:0.2693555,c2:0.6527771,c3:0.7794118,c4:1;n:type:ShaderForge.SFN_Multiply,id:6412,x:32578,y:33347,varname:node_6412,prsc:2|A-8340-RGB,B-233-OUT;n:type:ShaderForge.SFN_ValueProperty,id:233,x:32394,y:33421,ptovrint:False,ptlb:color power_copy,ptin:_colorpower_copy,varname:_colorpower_copy,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Lerp,id:7458,x:32481,y:32834,varname:node_7458,prsc:2|A-4662-OUT,B-6412-OUT,T-442-OUT;n:type:ShaderForge.SFN_Add,id:619,x:32799,y:32726,varname:node_619,prsc:2|A-7844-OUT,B-7458-OUT;proporder:6055-55-2882-1670-9525-9911-8340-233;pass:END;sub:END;*/

Shader "Almgp/vhsrace/TeleBorder" {
    Properties {
        _border ("border", 2D) = "white" {}
        _grad ("grad", 2D) = "white" {}
        _scale ("scale", Float ) = 64
        _color ("color", Color) = (0.7794118,0.2693555,0.7442358,1)
        _colorpower ("color power", Float ) = 3
        _speed ("speed", Float ) = 2
        _color_copy ("color_copy", Color) = (0.2693555,0.6527771,0.7794118,1)
        _colorpower_copy ("color power_copy", Float ) = 3
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
            uniform sampler2D _border; uniform float4 _border_ST;
            uniform sampler2D _grad; uniform float4 _grad_ST;
            uniform float _scale;
            uniform float4 _color;
            uniform float _colorpower;
            uniform float _speed;
            uniform float4 _color_copy;
            uniform float _colorpower_copy;
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
                float node_4662 = 0.0;
                float4 _border_var = tex2D(_border,TRANSFORM_TEX(i.uv0, _border));
                float4 node_8881 = _Time + _TimeEditor;
                float2 node_5054 = ((node_8881.g*_speed)+(float2(i.uv0.g,i.uv0.g)*_scale));
                float4 _grad_var = tex2D(_grad,TRANSFORM_TEX(node_5054, _grad));
                float3 node_1076 = saturate(( _border_var.rgb > 0.5 ? (_grad_var.rgb/((1.0-_border_var.rgb)*2.0)) : (1.0-(((1.0-_grad_var.rgb)*0.5)/_border_var.rgb))));
                float3 node_442 = (_grad_var.rgb*0.15);
                float3 emissive = (lerp(float3(node_4662,node_4662,node_4662),(_color.rgb*_colorpower),saturate((node_442/(1.0-node_1076))))+lerp(float3(node_4662,node_4662,node_4662),(_color_copy.rgb*_colorpower_copy),node_442));
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
