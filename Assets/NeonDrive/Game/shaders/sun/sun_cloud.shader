// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:0,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:False,dith:0,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:7829,x:34925,y:32310,varname:node_7829,prsc:2|emission-8518-OUT,alpha-5915-OUT,clip-5915-OUT;n:type:ShaderForge.SFN_Tex2d,id:8736,x:33286,y:32798,varname:_sun_mask,prsc:2,tex:5617137ad259da641b1e5f698153f2e1,ntxv:0,isnm:False|TEX-8960-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8960,x:32668,y:32533,ptovrint:False,ptlb:sun_mask_asset,ptin:_sun_mask_asset,varname:_sun_mask_asset,tex:5617137ad259da641b1e5f698153f2e1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:554,x:33247,y:33038,varname:_node_554,prsc:2,tex:5617137ad259da641b1e5f698153f2e1,ntxv:0,isnm:False|UVIN-1698-OUT,TEX-8960-TEX;n:type:ShaderForge.SFN_Time,id:3731,x:32324,y:33237,varname:node_3731,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9537,x:32508,y:33300,varname:node_9537,prsc:2|A-3731-TSL,B-225-OUT;n:type:ShaderForge.SFN_ValueProperty,id:225,x:32455,y:33508,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:2178,x:32125,y:33014,varname:node_2178,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:1698,x:32832,y:33139,varname:node_1698,prsc:2|A-5808-OUT,B-5777-OUT;n:type:ShaderForge.SFN_TexCoord,id:9365,x:32973,y:32569,varname:node_9365,prsc:2,uv:0;n:type:ShaderForge.SFN_Color,id:2610,x:33001,y:32200,ptovrint:False,ptlb:color 1,ptin:_color1,varname:_color1,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:4434,x:33065,y:32393,ptovrint:False,ptlb:color 2,ptin:_color2,varname:_color2,prsc:2,glob:False,c1:0.862069,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:3945,x:33503,y:32097,varname:node_3945,prsc:2|A-9616-OUT,B-4041-OUT,T-9044-OUT;n:type:ShaderForge.SFN_Subtract,id:5915,x:34015,y:32944,varname:node_5915,prsc:2|A-8736-G,B-4050-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1736,x:32148,y:33189,ptovrint:False,ptlb:cloud_tileX,ptin:_cloud_tileX,varname:_cloud_tileX,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Divide,id:5777,x:32508,y:33091,varname:node_5777,prsc:2|A-2178-V,B-1736-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3353,x:32145,y:32902,ptovrint:False,ptlb:cloud_tileY,ptin:_cloud_tileY,varname:_cloud_tileY,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Divide,id:3179,x:32400,y:32888,varname:node_3179,prsc:2|A-2178-U,B-3353-OUT;n:type:ShaderForge.SFN_Add,id:5808,x:32584,y:32862,varname:node_5808,prsc:2|A-3179-OUT,B-9537-OUT;n:type:ShaderForge.SFN_Lerp,id:2118,x:34384,y:32483,varname:node_2118,prsc:2|A-5833-OUT,B-5024-OUT,T-8736-G;n:type:ShaderForge.SFN_Vector1,id:5833,x:33887,y:33127,varname:node_5833,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:4050,x:33472,y:32938,ptovrint:False,ptlb:red or blue,ptin:_redorblue,varname:_redorblue,prsc:2,on:False|A-8736-R,B-554-B;n:type:ShaderForge.SFN_Multiply,id:8518,x:34598,y:32205,varname:node_8518,prsc:2|A-1542-OUT,B-8429-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4269,x:33814,y:32335,ptovrint:False,ptlb:FinalEmiss1,ptin:_FinalEmiss1,varname:_FinalEmiss1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:1542,x:33947,y:32088,varname:node_1542,prsc:2|A-3687-OUT,B-9664-OUT,T-2118-OUT;n:type:ShaderForge.SFN_Vector1,id:3687,x:33655,y:31979,varname:node_3687,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRange,id:9044,x:33315,y:32345,varname:node_9044,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1.25|IN-9365-V;n:type:ShaderForge.SFN_Multiply,id:4041,x:33315,y:32189,varname:node_4041,prsc:2|A-4434-RGB,B-3672-OUT;n:type:ShaderForge.SFN_Multiply,id:9616,x:33315,y:32038,varname:node_9616,prsc:2|A-2610-RGB,B-1716-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1716,x:33122,y:32082,ptovrint:False,ptlb:power color1,ptin:_powercolor1,varname:_powercolor1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3672,x:32854,y:32312,ptovrint:False,ptlb:power color2,ptin:_powercolor2,varname:_powercolor2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ScreenPos,id:4264,x:33523,y:33040,varname:node_4264,prsc:2,sctp:0;n:type:ShaderForge.SFN_RemapRange,id:8538,x:34058,y:32585,varname:node_8538,prsc:2,frmn:0,frmx:1,tomn:0,tomx:3|IN-7177-OUT;n:type:ShaderForge.SFN_Frac,id:5322,x:33685,y:32677,varname:node_5322,prsc:2|IN-9997-OUT;n:type:ShaderForge.SFN_Multiply,id:9997,x:33737,y:33040,varname:node_9997,prsc:2|A-4264-V,B-6204-OUT;n:type:ShaderForge.SFN_OneMinus,id:6444,x:33801,y:32701,varname:node_6444,prsc:2|IN-5322-OUT;n:type:ShaderForge.SFN_Multiply,id:7177,x:33907,y:32701,varname:node_7177,prsc:2|A-5322-OUT,B-6444-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5967,x:33685,y:32491,ptovrint:False,ptlb:FinalEmiss2,ptin:_FinalEmiss2,varname:_FinalEmiss2,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Lerp,id:8429,x:34315,y:32411,varname:node_8429,prsc:2|A-4269-OUT,B-5967-OUT,T-6562-OUT;n:type:ShaderForge.SFN_Clamp01,id:6562,x:34058,y:32447,varname:node_6562,prsc:2|IN-8538-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6204,x:33249,y:32757,ptovrint:False,ptlb:screen line,ptin:_screenline,varname:_screenline,prsc:0,glob:False,v1:16;n:type:ShaderForge.SFN_Subtract,id:5667,x:34094,y:32769,varname:node_5667,prsc:2|A-5915-OUT,B-6562-OUT;n:type:ShaderForge.SFN_Lerp,id:5024,x:34315,y:32617,varname:node_5024,prsc:2|A-5915-OUT,B-5667-OUT,T-2529-OUT;n:type:ShaderForge.SFN_Vector1,id:2529,x:34263,y:32978,varname:node_2529,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Color,id:921,x:33006,y:31938,ptovrint:False,ptlb:color 3,ptin:_color3,varname:_color3,prsc:2,glob:False,c1:1,c2:0,c3:0.8896551,c4:1;n:type:ShaderForge.SFN_RemapRange,id:3419,x:33349,y:32506,varname:node_3419,prsc:2,frmn:-0.5,frmx:1,tomn:3,tomx:-2|IN-9365-V;n:type:ShaderForge.SFN_Lerp,id:9664,x:33704,y:32184,varname:node_9664,prsc:2|A-3945-OUT,B-2788-OUT,T-3419-OUT;n:type:ShaderForge.SFN_Multiply,id:2788,x:33393,y:31841,varname:node_2788,prsc:2|A-921-RGB,B-3995-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3995,x:33200,y:31885,ptovrint:False,ptlb:power color3,ptin:_powercolor3,varname:_powercolor3,prsc:2,glob:False,v1:1;proporder:8960-225-2610-4434-1736-3353-4050-4269-1716-3672-5967-6204-921-3995;pass:END;sub:END;*/

Shader "Almgp/vhsrace/sun_cloud" {
    Properties {
        _sun_mask_asset ("sun_mask_asset", 2D) = "white" {}
        _speed ("speed", Float ) = 1
        _color1 ("color 1", Color) = (1,0,0,1)
        _color2 ("color 2", Color) = (0.862069,1,0,1)
        _cloud_tileX ("cloud_tileX", Float ) = 2
        _cloud_tileY ("cloud_tileY", Float ) = 2
        [MaterialToggle] _redorblue ("red or blue", Float ) = 1
        _FinalEmiss1 ("FinalEmiss1", Float ) = 1
        _powercolor1 ("power color1", Float ) = 1
        _powercolor2 ("power color2", Float ) = 1
        _FinalEmiss2 ("FinalEmiss2", Float ) = 2
        _screenline ("screen line", Float ) = 16
        _color3 ("color 3", Color) = (1,0,0.8896551,1)
        _powercolor3 ("power color3", Float ) = 1
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
            uniform float4 _TimeEditor;
            uniform sampler2D _sun_mask_asset; uniform float4 _sun_mask_asset_ST;
            uniform float _speed;
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _cloud_tileX;
            uniform float _cloud_tileY;
            uniform fixed _redorblue;
            uniform float _FinalEmiss1;
            uniform float _powercolor1;
            uniform float _powercolor2;
            uniform float _FinalEmiss2;
            uniform fixed _screenline;
            uniform float4 _color3;
            uniform float _powercolor3;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
/////// Vectors:
                float4 _sun_mask = tex2D(_sun_mask_asset,TRANSFORM_TEX(i.uv0, _sun_mask_asset));
                float4 node_3731 = _Time + _TimeEditor;
                float2 node_1698 = float2(((i.uv0.r/_cloud_tileY)+(node_3731.r*_speed)),(i.uv0.g/_cloud_tileX));
                float4 _node_554 = tex2D(_sun_mask_asset,TRANSFORM_TEX(node_1698, _sun_mask_asset));
                float node_5915 = (_sun_mask.g-lerp( _sun_mask.r, _node_554.b, _redorblue ));
                clip(node_5915 - 0.5);
////// Lighting:
////// Emissive:
                float node_3687 = 0.0;
                float node_5322 = frac((i.screenPos.g*_screenline));
                float node_6562 = saturate(((node_5322*(1.0 - node_5322))*3.0+0.0));
                float3 emissive = (lerp(float3(node_3687,node_3687,node_3687),lerp(lerp((_color1.rgb*_powercolor1),(_color2.rgb*_powercolor2),(i.uv0.g*1.25+0.0)),(_color3.rgb*_powercolor3),(i.uv0.g*-3.333333+1.333333)),lerp(0.0,lerp(node_5915,(node_5915-node_6562),0.3),_sun_mask.g))*lerp(_FinalEmiss1,_FinalEmiss2,node_6562));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_5915);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _sun_mask_asset; uniform float4 _sun_mask_asset_ST;
            uniform float _speed;
            uniform float _cloud_tileX;
            uniform float _cloud_tileY;
            uniform fixed _redorblue;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _sun_mask = tex2D(_sun_mask_asset,TRANSFORM_TEX(i.uv0, _sun_mask_asset));
                float4 node_3731 = _Time + _TimeEditor;
                float2 node_1698 = float2(((i.uv0.r/_cloud_tileY)+(node_3731.r*_speed)),(i.uv0.g/_cloud_tileX));
                float4 _node_554 = tex2D(_sun_mask_asset,TRANSFORM_TEX(node_1698, _sun_mask_asset));
                float node_5915 = (_sun_mask.g-lerp( _sun_mask.r, _node_554.b, _redorblue ));
                clip(node_5915 - 0.5);
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _sun_mask_asset; uniform float4 _sun_mask_asset_ST;
            uniform float _speed;
            uniform float _cloud_tileX;
            uniform float _cloud_tileY;
            uniform fixed _redorblue;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                float4 _sun_mask = tex2D(_sun_mask_asset,TRANSFORM_TEX(i.uv0, _sun_mask_asset));
                float4 node_3731 = _Time + _TimeEditor;
                float2 node_1698 = float2(((i.uv0.r/_cloud_tileY)+(node_3731.r*_speed)),(i.uv0.g/_cloud_tileX));
                float4 _node_554 = tex2D(_sun_mask_asset,TRANSFORM_TEX(node_1698, _sun_mask_asset));
                float node_5915 = (_sun_mask.g-lerp( _sun_mask.r, _node_554.b, _redorblue ));
                clip(node_5915 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
