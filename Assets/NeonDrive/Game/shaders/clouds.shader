// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:3,bsrc:0,bdst:6,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7221,x:36019,y:32217,varname:node_7221,prsc:2|emission-2324-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2895,x:32722,y:32931,ptovrint:False,ptlb:clouds,ptin:_clouds,varname:_clouds,tex:28dfea727fcf1a9439df007bb5f16509,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:8898,x:32316,y:32638,varname:node_8898,prsc:2;n:type:ShaderForge.SFN_Append,id:8977,x:32553,y:32625,varname:node_8977,prsc:2|A-8898-X,B-8898-Z;n:type:ShaderForge.SFN_Divide,id:1425,x:32735,y:32625,varname:node_1425,prsc:2|A-8977-OUT,B-8838-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8838,x:32451,y:32914,ptovrint:False,ptlb:scale,ptin:_scale,varname:_scale,prsc:2,glob:False,v1:15;n:type:ShaderForge.SFN_Tex2d,id:9674,x:33486,y:32694,varname:_node_9784,prsc:2,tex:28dfea727fcf1a9439df007bb5f16509,ntxv:0,isnm:False|UVIN-8264-OUT,TEX-2895-TEX;n:type:ShaderForge.SFN_Time,id:8540,x:32618,y:32235,varname:node_8540,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:210,x:32618,y:32426,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:6907,x:32872,y:32258,varname:node_6907,prsc:2|A-8540-TSL,B-210-OUT;n:type:ShaderForge.SFN_Add,id:4098,x:33074,y:32479,varname:node_4098,prsc:2|A-6907-OUT,B-1097-OUT;n:type:ShaderForge.SFN_Multiply,id:1097,x:32972,y:32662,varname:node_1097,prsc:2|A-1425-OUT,B-95-OUT;n:type:ShaderForge.SFN_ValueProperty,id:95,x:32839,y:33207,ptovrint:False,ptlb:flow,ptin:_flow,varname:_flow,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:3631,x:33486,y:32858,varname:_node_3631,prsc:2,tex:28dfea727fcf1a9439df007bb5f16509,ntxv:0,isnm:False|UVIN-4098-OUT,TEX-2895-TEX;n:type:ShaderForge.SFN_Tex2d,id:1666,x:33544,y:32464,varname:_node_1666,prsc:2,tex:28dfea727fcf1a9439df007bb5f16509,ntxv:0,isnm:False|UVIN-2426-OUT,TEX-2895-TEX;n:type:ShaderForge.SFN_Blend,id:2863,x:33766,y:32732,varname:node_2863,prsc:2,blmd:17,clmp:False|SRC-9674-B,DST-3631-A;n:type:ShaderForge.SFN_Blend,id:5237,x:33816,y:32475,varname:node_5237,prsc:2,blmd:2,clmp:True|SRC-2863-OUT,DST-1666-R;n:type:ShaderForge.SFN_Pi,id:2227,x:33100,y:32310,varname:node_2227,prsc:2;n:type:ShaderForge.SFN_Divide,id:8264,x:33264,y:32677,varname:node_8264,prsc:2|A-4098-OUT,B-2227-OUT;n:type:ShaderForge.SFN_Lerp,id:3158,x:33989,y:32661,varname:node_3158,prsc:2|A-5237-OUT,B-2863-OUT,T-1666-A;n:type:ShaderForge.SFN_Multiply,id:7443,x:33063,y:32151,varname:node_7443,prsc:2|A-2227-OUT,B-6907-OUT;n:type:ShaderForge.SFN_Add,id:2426,x:33295,y:32479,varname:node_2426,prsc:2|A-7443-OUT,B-4098-OUT;n:type:ShaderForge.SFN_Blend,id:9604,x:34367,y:32581,varname:node_9604,prsc:2,blmd:10,clmp:True|SRC-1666-B,DST-3158-OUT;n:type:ShaderForge.SFN_Color,id:5758,x:34369,y:32338,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.3162846,c2:0.4930795,c3:0.5514706,c4:1;n:type:ShaderForge.SFN_Color,id:7323,x:34369,y:32094,ptovrint:False,ptlb:color_2,ptin:_color_2,varname:_color_2,prsc:2,glob:False,c1:0.06521002,c2:0.03438582,c3:0.08823532,c4:1;n:type:ShaderForge.SFN_Lerp,id:5943,x:34588,y:32338,varname:node_5943,prsc:2|A-7323-RGB,B-5758-RGB,T-9604-OUT;n:type:ShaderForge.SFN_Lerp,id:7108,x:34698,y:32164,varname:node_7108,prsc:2|A-5943-OUT,B-9604-OUT,T-966-OUT;n:type:ShaderForge.SFN_Vector1,id:966,x:34720,y:32543,varname:node_966,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Blend,id:214,x:34905,y:32245,varname:node_214,prsc:2,blmd:10,clmp:True|SRC-7108-OUT,DST-7108-OUT;n:type:ShaderForge.SFN_Fresnel,id:2972,x:34901,y:32460,varname:node_2972,prsc:2|NRM-6202-OUT,EXP-3394-OUT;n:type:ShaderForge.SFN_NormalVector,id:6202,x:34683,y:32636,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:9615,x:35122,y:32095,varname:node_9615,prsc:2|A-214-OUT,B-22-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3394,x:34901,y:32624,ptovrint:False,ptlb:exp,ptin:_exp,varname:_exp,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_Lerp,id:5014,x:35315,y:32208,varname:node_5014,prsc:2|A-9615-OUT,B-382-OUT,T-4761-OUT;n:type:ShaderForge.SFN_Add,id:382,x:35122,y:32262,varname:node_382,prsc:2|A-214-OUT,B-22-OUT;n:type:ShaderForge.SFN_Slider,id:4761,x:35138,y:32662,ptovrint:False,ptlb:hot,ptin:_hot,varname:_hot,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Blend,id:2324,x:35533,y:32155,varname:node_2324,prsc:2,blmd:10,clmp:True|SRC-5014-OUT,DST-5014-OUT;n:type:ShaderForge.SFN_Clamp01,id:272,x:35092,y:32460,varname:node_272,prsc:2|IN-2972-OUT;n:type:ShaderForge.SFN_Lerp,id:22,x:35278,y:32384,varname:node_22,prsc:2|A-1745-OUT,B-8139-RGB,T-272-OUT;n:type:ShaderForge.SFN_Color,id:8139,x:35558,y:32550,ptovrint:False,ptlb:color rim,ptin:_colorrim,varname:_colorrim,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:1745,x:35494,y:32765,varname:node_1745,prsc:2,v1:0;proporder:2895-8838-210-95-5758-7323-3394-4761-8139;pass:END;sub:END;*/

Shader "Almgp/vhsrace/clouds" {
    Properties {
        _clouds ("clouds", 2D) = "white" {}
        _scale ("scale", Float ) = 15
        _speed ("speed", Float ) = 0.2
        _flow ("flow", Float ) = 2
        _color ("color", Color) = (0.3162846,0.4930795,0.5514706,1)
        _color_2 ("color_2", Color) = (0.06521002,0.03438582,0.08823532,1)
        _exp ("exp", Float ) = 0
        _hot ("hot", Range(0, 1)) = 0
        _colorrim ("color rim", Color) = (0.5,0.5,0.5,1)
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
            Blend One OneMinusSrcColor
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers metal xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _clouds; uniform float4 _clouds_ST;
            uniform float _scale;
            uniform float _speed;
            uniform float _flow;
            uniform float4 _color;
            uniform float4 _color_2;
            uniform float _exp;
            uniform float _hot;
            uniform float4 _colorrim;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
////// Lighting:
////// Emissive:
                float node_2227 = 3.141592654;
                float4 node_8540 = _Time + _TimeEditor;
                float node_6907 = (node_8540.r*_speed);
                float2 node_4098 = (node_6907+((float2(i.posWorld.r,i.posWorld.b)/_scale)*_flow));
                float2 node_2426 = ((node_2227*node_6907)+node_4098);
                float4 _node_1666 = tex2D(_clouds,TRANSFORM_TEX(node_2426, _clouds));
                float2 node_8264 = (node_4098/node_2227);
                float4 _node_9784 = tex2D(_clouds,TRANSFORM_TEX(node_8264, _clouds));
                float4 _node_3631 = tex2D(_clouds,TRANSFORM_TEX(node_4098, _clouds));
                float node_2863 = abs(_node_9784.b-_node_3631.a);
                float node_9604 = saturate(( lerp(saturate((1.0-((1.0-_node_1666.r)/node_2863))),node_2863,_node_1666.a) > 0.5 ? (1.0-(1.0-2.0*(lerp(saturate((1.0-((1.0-_node_1666.r)/node_2863))),node_2863,_node_1666.a)-0.5))*(1.0-_node_1666.b)) : (2.0*lerp(saturate((1.0-((1.0-_node_1666.r)/node_2863))),node_2863,_node_1666.a)*_node_1666.b) ));
                float3 node_7108 = lerp(lerp(_color_2.rgb,_color.rgb,node_9604),float3(node_9604,node_9604,node_9604),0.25);
                float3 node_214 = saturate(( node_7108 > 0.5 ? (1.0-(1.0-2.0*(node_7108-0.5))*(1.0-node_7108)) : (2.0*node_7108*node_7108) ));
                float node_1745 = 0.0;
                float3 node_22 = lerp(float3(node_1745,node_1745,node_1745),_colorrim.rgb,saturate(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_exp)));
                float3 node_5014 = lerp((node_214*node_22),(node_214+node_22),_hot);
                float3 emissive = saturate(( node_5014 > 0.5 ? (1.0-(1.0-2.0*(node_5014-0.5))*(1.0-node_5014)) : (2.0*node_5014*node_5014) ));
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
