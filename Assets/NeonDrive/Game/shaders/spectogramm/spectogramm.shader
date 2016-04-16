// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7415,x:33295,y:32627,varname:node_7415,prsc:2|emission-6547-OUT;n:type:ShaderForge.SFN_Tex2d,id:2834,x:32170,y:32905,ptovrint:False,ptlb:grid,ptin:_grid,varname:_grid,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:683,x:32245,y:33192,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6078,x:32683,y:32958,varname:node_6078,prsc:2|A-683-RGB,B-2900-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2900,x:32220,y:32520,ptovrint:False,ptlb:power color,ptin:_powercolor,varname:_powercolor,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:3782,x:32837,y:32897,varname:node_3782,prsc:2|A-3951-OUT,B-6078-OUT,T-2834-G;n:type:ShaderForge.SFN_Vector1,id:3951,x:32390,y:32609,varname:node_3951,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:5812,x:31979,y:32694,varname:node_5812,prsc:2;n:type:ShaderForge.SFN_Abs,id:3938,x:32190,y:32694,varname:node_3938,prsc:2|IN-5812-Y;n:type:ShaderForge.SFN_Multiply,id:4340,x:32477,y:32748,varname:node_4340,prsc:2|A-3938-OUT,B-6187-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6187,x:32317,y:32828,ptovrint:False,ptlb:top power,ptin:_toppower,varname:_toppower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:6228,x:32771,y:32585,varname:node_6228,prsc:2|A-7167-OUT,B-475-RGB,T-7689-OUT;n:type:ShaderForge.SFN_Color,id:475,x:32542,y:32466,ptovrint:False,ptlb:top color,ptin:_topcolor,varname:_topcolor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Clamp01,id:7689,x:32756,y:32718,varname:node_7689,prsc:2|IN-4340-OUT;n:type:ShaderForge.SFN_Add,id:6547,x:33088,y:32741,varname:node_6547,prsc:2|A-6228-OUT,B-3782-OUT;n:type:ShaderForge.SFN_Color,id:804,x:32542,y:32305,ptovrint:False,ptlb:color 2,ptin:_color2,varname:_color2,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7167,x:32818,y:32322,varname:node_7167,prsc:2|A-804-RGB,B-7377-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7377,x:32968,y:32380,ptovrint:False,ptlb:color power2,ptin:_colorpower2,varname:_colorpower2,prsc:2,glob:False,v1:1;proporder:2834-683-2900-6187-475-804-7377;pass:END;sub:END;*/

Shader "Almgp/vhsrace/spectogramm" {
    Properties {
        _grid ("grid", 2D) = "white" {}
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _powercolor ("power color", Float ) = 1
        _toppower ("top power", Float ) = 1
        _topcolor ("top color", Color) = (0.5,0.5,0.5,1)
        _color2 ("color 2", Color) = (0.5,0.5,0.5,1)
        _colorpower2 ("color power2", Float ) = 1
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
            uniform sampler2D _grid; uniform float4 _grid_ST;
            uniform float4 _color;
            uniform float _powercolor;
            uniform float _toppower;
            uniform float4 _topcolor;
            uniform float4 _color2;
            uniform float _colorpower2;
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
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
////// Lighting:
////// Emissive:
                float node_3951 = 0.0;
                float4 _grid_var = tex2D(_grid,TRANSFORM_TEX(i.uv0, _grid));
                float3 emissive = (lerp((_color2.rgb*_colorpower2),_topcolor.rgb,saturate((abs(i.posWorld.g)*_toppower)))+lerp(float3(node_3951,node_3951,node_3951),(_color.rgb*_powercolor),_grid_var.g));
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
