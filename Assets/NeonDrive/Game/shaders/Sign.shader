// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:2,bsrc:0,bdst:0,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9050,x:36144,y:31937,varname:node_9050,prsc:2|emission-1444-OUT,alpha-8340-OUT;n:type:ShaderForge.SFN_Tex2d,id:8144,x:33375,y:32705,ptovrint:False,ptlb:sign,ptin:_sign,varname:_sign,prsc:2,tex:db548590620c934449ebdc262b841610,ntxv:0,isnm:False|UVIN-9027-OUT;n:type:ShaderForge.SFN_TexCoord,id:4029,x:32449,y:31505,varname:node_4029,prsc:2,uv:0;n:type:ShaderForge.SFN_Time,id:8909,x:32368,y:32048,varname:node_8909,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6601,x:32866,y:32229,varname:node_6601,prsc:2|A-8909-TSL,B-4410-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4410,x:32623,y:32071,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Add,id:7710,x:32700,y:32511,varname:node_7710,prsc:2|A-8352-OUT,B-4029-U;n:type:ShaderForge.SFN_Append,id:7292,x:32940,y:32645,varname:node_7292,prsc:2|A-7710-OUT,B-4029-V;n:type:ShaderForge.SFN_OneMinus,id:8352,x:32456,y:32631,varname:node_8352,prsc:2|IN-6601-OUT;n:type:ShaderForge.SFN_Vector1,id:2732,x:33114,y:32511,varname:node_2732,prsc:2,v1:5;n:type:ShaderForge.SFN_Tex2d,id:914,x:35135,y:31874,ptovrint:False,ptlb:gradient,ptin:_gradient,varname:_gradient,prsc:2,tex:ab8c1b41f3194b14ea807404247af964,ntxv:0,isnm:False|UVIN-2910-OUT;n:type:ShaderForge.SFN_Multiply,id:8883,x:32635,y:31853,varname:node_8883,prsc:2|A-2666-OUT,B-8909-TSL;n:type:ShaderForge.SFN_ValueProperty,id:2666,x:32425,y:31725,ptovrint:False,ptlb:gradient speed,ptin:_gradientspeed,varname:_gradientspeed,prsc:2,glob:False,v1:16;n:type:ShaderForge.SFN_OneMinus,id:9080,x:32707,y:31451,varname:node_9080,prsc:2|IN-8883-OUT;n:type:ShaderForge.SFN_Add,id:493,x:32954,y:31451,varname:node_493,prsc:2|A-9080-OUT,B-4029-U;n:type:ShaderForge.SFN_Append,id:5775,x:33279,y:31579,varname:node_5775,prsc:2|A-493-OUT,B-4029-V;n:type:ShaderForge.SFN_Lerp,id:9401,x:34046,y:32344,varname:node_9401,prsc:2|A-5072-OUT,B-8144-RGB,T-914-RGB;n:type:ShaderForge.SFN_Vector1,id:5072,x:33535,y:32531,varname:node_5072,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:6852,x:33626,y:32604,varname:node_6852,prsc:2,blmd:10,clmp:True|SRC-8144-RGB,DST-9401-OUT;n:type:ShaderForge.SFN_Add,id:526,x:33926,y:32686,varname:node_526,prsc:2|A-6852-OUT,B-8144-RGB,C-6852-OUT;n:type:ShaderForge.SFN_Lerp,id:8267,x:34104,y:32529,varname:node_8267,prsc:2|A-6852-OUT,B-526-OUT,T-1848-OUT;n:type:ShaderForge.SFN_Vector1,id:1848,x:33749,y:32339,varname:node_1848,prsc:2,v1:0.45;n:type:ShaderForge.SFN_Add,id:9052,x:34317,y:32494,varname:node_9052,prsc:2|A-8267-OUT,B-8267-OUT;n:type:ShaderForge.SFN_Multiply,id:6335,x:34573,y:32305,varname:node_6335,prsc:2|A-6047-OUT,B-3914-OUT;n:type:ShaderForge.SFN_Color,id:3192,x:34046,y:32121,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3914,x:34320,y:32074,varname:node_3914,prsc:2|A-3192-RGB,B-1525-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1525,x:34046,y:31951,ptovrint:False,ptlb:finalMult,ptin:_finalMult,varname:_finalMult,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6047,x:34535,y:32554,varname:node_6047,prsc:2|A-9052-OUT,B-6255-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6255,x:34353,y:32739,ptovrint:False,ptlb:preFinalMult,ptin:_preFinalMult,varname:_preFinalMult,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:2910,x:33562,y:31763,ptovrint:False,ptlb:flip,ptin:_flip,varname:_flip,prsc:2,on:False|A-5775-OUT,B-4720-OUT;n:type:ShaderForge.SFN_Append,id:9852,x:32966,y:32887,varname:node_9852,prsc:2|A-6969-OUT,B-4029-U;n:type:ShaderForge.SFN_Add,id:6969,x:32722,y:32837,varname:node_6969,prsc:2|A-8352-OUT,B-4029-V;n:type:ShaderForge.SFN_SwitchProperty,id:9027,x:33163,y:32690,ptovrint:False,ptlb:switch arrow,ptin:_switcharrow,varname:_switcharrow,prsc:2,on:False|A-7292-OUT,B-9852-OUT;n:type:ShaderForge.SFN_Append,id:4720,x:33275,y:31879,varname:node_4720,prsc:2|A-2028-OUT,B-4029-U;n:type:ShaderForge.SFN_Add,id:2028,x:33015,y:31762,varname:node_2028,prsc:2|A-9080-OUT,B-4029-V;n:type:ShaderForge.SFN_Lerp,id:9917,x:35003,y:32137,varname:node_9917,prsc:2|A-6335-OUT,B-6413-OUT,T-3442-OUT;n:type:ShaderForge.SFN_TexCoord,id:5838,x:34563,y:32109,varname:node_5838,prsc:2,uv:0;n:type:ShaderForge.SFN_Round,id:3442,x:34730,y:32041,varname:node_3442,prsc:2|IN-5838-U;n:type:ShaderForge.SFN_Vector1,id:6413,x:34902,y:31978,varname:node_6413,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:4212,x:35145,y:32305,ptovrint:False,ptlb:use large,ptin:_uselarge,varname:_uselarge,prsc:2,on:False|A-6335-OUT,B-9917-OUT;n:type:ShaderForge.SFN_Multiply,id:5599,x:35266,y:32035,varname:node_5599,prsc:2|A-914-RGB,B-4212-OUT;n:type:ShaderForge.SFN_Add,id:1577,x:35464,y:32074,varname:node_1577,prsc:2|A-5599-OUT,B-4212-OUT;n:type:ShaderForge.SFN_Desaturate,id:8760,x:35578,y:31766,varname:node_8760,prsc:2|COL-1577-OUT,DES-2360-OUT;n:type:ShaderForge.SFN_Lerp,id:2360,x:35326,y:31744,varname:node_2360,prsc:2|A-970-OUT,B-4229-OUT,T-914-RGB;n:type:ShaderForge.SFN_Slider,id:4229,x:34935,y:31788,ptovrint:False,ptlb:dessat 1,ptin:_dessat1,varname:_dessat1,prsc:2,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_Slider,id:970,x:34907,y:31655,ptovrint:False,ptlb:dessat 2,ptin:_dessat2,varname:_dessat2,prsc:2,min:-3,cur:0,max:3;n:type:ShaderForge.SFN_SwitchProperty,id:1444,x:35724,y:32011,ptovrint:False,ptlb:use dessat,ptin:_usedessat,varname:_usedessat,prsc:2,on:False|A-4212-OUT,B-8760-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8340,x:35988,y:32403,varname:node_8340,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1967-OUT;n:type:ShaderForge.SFN_Desaturate,id:3066,x:35794,y:32291,varname:node_3066,prsc:2|COL-1444-OUT,DES-3602-OUT;n:type:ShaderForge.SFN_Vector1,id:3602,x:35577,y:32269,varname:node_3602,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:1967,x:35941,y:32239,varname:node_1967,prsc:2|A-3066-OUT,B-3066-OUT;proporder:4410-8144-914-2666-3192-1525-6255-2910-9027-4212-4229-970-1444;pass:END;sub:END;*/

Shader "Almgp/vhsrace/Sign" {
    Properties {
        _speed ("speed", Float ) = 2
        _sign ("sign", 2D) = "white" {}
        _gradient ("gradient", 2D) = "white" {}
        _gradientspeed ("gradient speed", Float ) = 16
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _finalMult ("finalMult", Float ) = 1
        _preFinalMult ("preFinalMult", Float ) = 1
        [MaterialToggle] _flip ("flip", Float ) = 1
        [MaterialToggle] _switcharrow ("switch arrow", Float ) = 1
        [MaterialToggle] _uselarge ("use large", Float ) = 0.01411765
        _dessat1 ("dessat 1", Range(-3, 3)) = 0
        _dessat2 ("dessat 2", Range(-3, 3)) = 0
        [MaterialToggle] _usedessat ("use dessat", Float ) = 0.01411765
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
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _sign; uniform float4 _sign_ST;
            uniform float _speed;
            uniform sampler2D _gradient; uniform float4 _gradient_ST;
            uniform float _gradientspeed;
            uniform float4 _color;
            uniform float _finalMult;
            uniform float _preFinalMult;
            uniform fixed _flip;
            uniform fixed _switcharrow;
            uniform fixed _uselarge;
            uniform float _dessat1;
            uniform float _dessat2;
            uniform fixed _usedessat;
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
                float4 node_8909 = _Time + _TimeEditor;
                float node_8352 = (1.0 - (node_8909.r*_speed));
                float2 _switcharrow_var = lerp( float2((node_8352+i.uv0.r),i.uv0.g), float2((node_8352+i.uv0.g),i.uv0.r), _switcharrow );
                float4 _sign_var = tex2D(_sign,TRANSFORM_TEX(_switcharrow_var, _sign));
                float node_5072 = 0.0;
                float node_9080 = (1.0 - (_gradientspeed*node_8909.r));
                float2 _flip_var = lerp( float2((node_9080+i.uv0.r),i.uv0.g), float2((node_9080+i.uv0.g),i.uv0.r), _flip );
                float4 _gradient_var = tex2D(_gradient,TRANSFORM_TEX(_flip_var, _gradient));
                float3 node_6852 = saturate(( lerp(float3(node_5072,node_5072,node_5072),_sign_var.rgb,_gradient_var.rgb) > 0.5 ? (1.0-(1.0-2.0*(lerp(float3(node_5072,node_5072,node_5072),_sign_var.rgb,_gradient_var.rgb)-0.5))*(1.0-_sign_var.rgb)) : (2.0*lerp(float3(node_5072,node_5072,node_5072),_sign_var.rgb,_gradient_var.rgb)*_sign_var.rgb) ));
                float3 node_8267 = lerp(node_6852,(node_6852+_sign_var.rgb+node_6852),0.45);
                float3 node_6335 = (((node_8267+node_8267)*_preFinalMult)*(_color.rgb*_finalMult));
                float node_6413 = 0.0;
                float3 _uselarge_var = lerp( node_6335, lerp(node_6335,float3(node_6413,node_6413,node_6413),round(i.uv0.r)), _uselarge );
                float3 _usedessat_var = lerp( _uselarge_var, lerp(((_gradient_var.rgb*_uselarge_var)+_uselarge_var),dot(((_gradient_var.rgb*_uselarge_var)+_uselarge_var),float3(0.3,0.59,0.11)),lerp(_dessat2,_dessat1,_gradient_var.rgb)), _usedessat );
                float3 emissive = _usedessat_var;
                float3 finalColor = emissive;
                float3 node_3066 = lerp(_usedessat_var,dot(_usedessat_var,float3(0.3,0.59,0.11)),1.0);
                fixed4 finalRGBA = fixed4(finalColor,(node_3066+node_3066).r);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
