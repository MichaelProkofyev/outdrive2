// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:1,grmd:0,uamb:False,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:554,x:34037,y:32249,varname:node_554,prsc:2|diff-4771-OUT,spec-8783-OUT,gloss-3511-OUT,emission-9771-OUT;n:type:ShaderForge.SFN_Tex2d,id:8909,x:32048,y:32690,ptovrint:False,ptlb:city,ptin:_city,varname:_city,prsc:2,tex:fdbb215f785f1cb4cb7610437fdddcaf,ntxv:0,isnm:False|UVIN-6025-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6025,x:32130,y:32540,varname:node_6025,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:9699,x:32627,y:32508,ptovrint:False,ptlb:window gradient,ptin:_windowgradient,varname:_windowgradient,prsc:2,tex:02fd5483cf084c44c84ae4acdd1a811a,ntxv:0,isnm:False|UVIN-7937-OUT;n:type:ShaderForge.SFN_Slider,id:8783,x:32851,y:33116,ptovrint:False,ptlb:metal,ptin:_metal,varname:_metal,prsc:2,min:0,cur:0.5726496,max:1;n:type:ShaderForge.SFN_Slider,id:3511,x:32851,y:32984,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0.8461539,max:1;n:type:ShaderForge.SFN_Append,id:7937,x:32419,y:32480,varname:node_7937,prsc:2|A-6025-U,B-5178-OUT;n:type:ShaderForge.SFN_Clamp,id:8517,x:32416,y:32718,varname:node_8517,prsc:2|IN-8909-B,MIN-9351-OUT,MAX-9054-OUT;n:type:ShaderForge.SFN_Slider,id:9351,x:32360,y:33036,ptovrint:False,ptlb:clamp window min,ptin:_clampwindowmin,varname:_clampwindowmin,prsc:2,min:0,cur:0.03087075,max:1;n:type:ShaderForge.SFN_Slider,id:9054,x:32360,y:33184,ptovrint:False,ptlb:clamp window max,ptin:_clampwindowmax,varname:_clampwindowmax,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Posterize,id:5178,x:32731,y:32735,varname:node_5178,prsc:2|IN-8517-OUT,STPS-8790-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8790,x:32571,y:32788,ptovrint:False,ptlb:posterise,ptin:_posterise,varname:_posterise,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Lerp,id:4771,x:33185,y:32444,varname:node_4771,prsc:2|A-2901-RGB,B-604-OUT,T-3347-OUT;n:type:ShaderForge.SFN_Blend,id:3347,x:32892,y:32548,varname:node_3347,prsc:2,blmd:16,clmp:True|SRC-8909-B,DST-1650-OUT;n:type:ShaderForge.SFN_Slider,id:1650,x:31946,y:33039,ptovrint:False,ptlb:window percent,ptin:_windowpercent,varname:_windowpercent,prsc:2,min:0,cur:0.7648545,max:1;n:type:ShaderForge.SFN_Desaturate,id:604,x:32855,y:32422,varname:node_604,prsc:2|COL-9699-RGB,DES-7315-OUT;n:type:ShaderForge.SFN_Slider,id:7315,x:32517,y:32198,ptovrint:False,ptlb:saturate,ptin:_saturate,varname:_saturate,prsc:2,min:-2,cur:-2,max:2;n:type:ShaderForge.SFN_Color,id:2901,x:33043,y:32781,ptovrint:False,ptlb:face color,ptin:_facecolor,varname:_facecolor,prsc:2,glob:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:3635,x:33458,y:32234,ptovrint:False,ptlb:glow color 1,ptin:_glowcolor1,varname:_glowcolor1,prsc:2,glob:False,c1:0,c2:1,c3:0.8344827,c4:1;n:type:ShaderForge.SFN_Lerp,id:3203,x:33545,y:32636,varname:node_3203,prsc:2|A-3952-OUT,B-3033-OUT,T-8909-G;n:type:ShaderForge.SFN_Vector1,id:3952,x:33327,y:32612,varname:node_3952,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:9771,x:33777,y:32397,varname:node_9771,prsc:2|A-3121-OUT,B-4661-OUT;n:type:ShaderForge.SFN_Time,id:8154,x:32862,y:31976,varname:node_8154,prsc:2;n:type:ShaderForge.SFN_Sin,id:4004,x:34033,y:31930,varname:node_4004,prsc:2|IN-6105-OUT;n:type:ShaderForge.SFN_Multiply,id:3627,x:33219,y:31983,varname:node_3627,prsc:2|A-8154-TSL,B-7926-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7926,x:32872,y:32225,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:4443,x:33469,y:32031,ptovrint:False,ptlb:glow color 2,ptin:_glowcolor2,varname:_glowcolor2,prsc:2,glob:False,c1:0.9034483,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Add,id:2255,x:33137,y:31719,varname:node_2255,prsc:2|A-6688-X,B-6688-Z;n:type:ShaderForge.SFN_Sin,id:6273,x:33320,y:31638,varname:node_6273,prsc:2|IN-2255-OUT;n:type:ShaderForge.SFN_Lerp,id:6919,x:33876,y:31753,varname:node_6919,prsc:2|A-4443-RGB,B-3635-RGB,T-6273-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:6688,x:32930,y:31585,varname:node_6688,prsc:2;n:type:ShaderForge.SFN_Slider,id:2767,x:34161,y:32159,ptovrint:False,ptlb:clamp pulse,ptin:_clamppulse,varname:_clamppulse,prsc:2,min:0,cur:0.6305766,max:1;n:type:ShaderForge.SFN_Multiply,id:3033,x:34635,y:31747,varname:node_3033,prsc:2|A-6919-OUT,B-9345-OUT;n:type:ShaderForge.SFN_Multiply,id:6105,x:33570,y:31885,varname:node_6105,prsc:2|A-7604-OUT,B-3627-OUT;n:type:ShaderForge.SFN_Add,id:7604,x:33512,y:31639,varname:node_7604,prsc:2|A-6273-OUT,B-6272-OUT;n:type:ShaderForge.SFN_Vector1,id:6272,x:33264,y:31503,varname:node_6272,prsc:2,v1:0.23;n:type:ShaderForge.SFN_Clamp,id:9345,x:34360,y:31782,varname:node_9345,prsc:2|IN-4004-OUT,MIN-2767-OUT,MAX-4235-OUT;n:type:ShaderForge.SFN_Vector1,id:4235,x:34067,y:31835,varname:node_4235,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4661,x:33807,y:32609,varname:node_4661,prsc:2|A-3203-OUT,B-7016-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7016,x:33694,y:32888,ptovrint:False,ptlb:final edge power,ptin:_finaledgepower,varname:_finaledgepower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:3121,x:33470,y:32433,varname:node_3121,prsc:2|A-4771-OUT,B-2235-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2235,x:33353,y:32755,ptovrint:False,ptlb:final window power,ptin:_finalwindowpower,varname:_finalwindowpower,prsc:2,glob:False,v1:1;proporder:8783-3511-8909-9699-9351-9054-8790-1650-7315-2901-3635-4443-7926-2767-7016-2235;pass:END;sub:END;*/

Shader "Almgp/VHSRACE/city" {
    Properties {
        _metal ("metal", Range(0, 1)) = 0.5726496
        _gloss ("gloss", Range(0, 1)) = 0.8461539
        _city ("city", 2D) = "white" {}
        _windowgradient ("window gradient", 2D) = "white" {}
        _clampwindowmin ("clamp window min", Range(0, 1)) = 0.03087075
        _clampwindowmax ("clamp window max", Range(0, 1)) = 1
        _posterise ("posterise", Float ) = 5
        _windowpercent ("window percent", Range(0, 1)) = 0.7648545
        _saturate ("saturate", Range(-2, 2)) = -2
        _facecolor ("face color", Color) = (0,0,0,1)
        _glowcolor1 ("glow color 1", Color) = (0,1,0.8344827,1)
        _glowcolor2 ("glow color 2", Color) = (0.9034483,1,0,1)
        _speed ("speed", Float ) = 1
        _clamppulse ("clamp pulse", Range(0, 1)) = 0.6305766
        _finaledgepower ("final edge power", Float ) = 1
        _finalwindowpower ("final window power", Float ) = 1
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _city; uniform float4 _city_ST;
            uniform sampler2D _windowgradient; uniform float4 _windowgradient_ST;
            uniform float _metal;
            uniform float _gloss;
            uniform float _clampwindowmin;
            uniform float _clampwindowmax;
            uniform float _posterise;
            uniform float _windowpercent;
            uniform float _saturate;
            uniform float4 _facecolor;
            uniform float4 _glowcolor1;
            uniform float _speed;
            uniform float4 _glowcolor2;
            uniform float _clamppulse;
            uniform float _finaledgepower;
            uniform float _finalwindowpower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _city_var = tex2D(_city,TRANSFORM_TEX(i.uv0, _city));
                float2 node_7937 = float2(i.uv0.r,floor(clamp(_city_var.b,_clampwindowmin,_clampwindowmax) * _posterise) / (_posterise - 1));
                float4 _windowgradient_var = tex2D(_windowgradient,TRANSFORM_TEX(node_7937, _windowgradient));
                float3 node_4771 = lerp(_facecolor.rgb,lerp(_windowgradient_var.rgb,dot(_windowgradient_var.rgb,float3(0.3,0.59,0.11)),_saturate),saturate(round( 0.5*(_city_var.b + _windowpercent))));
                float3 diffuseColor = node_4771; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _metal, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
////// Emissive:
                float node_3952 = 0.0;
                float node_6273 = sin((objPos.r+objPos.b));
                float4 node_8154 = _Time + _TimeEditor;
                float3 emissive = ((node_4771*_finalwindowpower)+(lerp(float3(node_3952,node_3952,node_3952),(lerp(_glowcolor2.rgb,_glowcolor1.rgb,node_6273)*clamp(sin(((node_6273+0.23)*(node_8154.r*_speed))),_clamppulse,1.0)),_city_var.g)*_finaledgepower));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _city; uniform float4 _city_ST;
            uniform sampler2D _windowgradient; uniform float4 _windowgradient_ST;
            uniform float _metal;
            uniform float _gloss;
            uniform float _clampwindowmin;
            uniform float _clampwindowmax;
            uniform float _posterise;
            uniform float _windowpercent;
            uniform float _saturate;
            uniform float4 _facecolor;
            uniform float4 _glowcolor1;
            uniform float _speed;
            uniform float4 _glowcolor2;
            uniform float _clamppulse;
            uniform float _finaledgepower;
            uniform float _finalwindowpower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( _Object2World, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float4 _city_var = tex2D(_city,TRANSFORM_TEX(i.uv0, _city));
                float2 node_7937 = float2(i.uv0.r,floor(clamp(_city_var.b,_clampwindowmin,_clampwindowmax) * _posterise) / (_posterise - 1));
                float4 _windowgradient_var = tex2D(_windowgradient,TRANSFORM_TEX(node_7937, _windowgradient));
                float3 node_4771 = lerp(_facecolor.rgb,lerp(_windowgradient_var.rgb,dot(_windowgradient_var.rgb,float3(0.3,0.59,0.11)),_saturate),saturate(round( 0.5*(_city_var.b + _windowpercent))));
                float3 diffuseColor = node_4771; // Need this for specular when using metallic
                float specularMonochrome;
                float3 specularColor;
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, _metal, specularColor, specularMonochrome );
                specularMonochrome = 1-specularMonochrome;
                float NdotV = max(0.0,dot( normalDirection, viewDirection ));
                float NdotH = max(0.0,dot( normalDirection, halfDirection ));
                float VdotH = max(0.0,dot( viewDirection, halfDirection ));
                float visTerm = SmithBeckmannVisibilityTerm( NdotL, NdotV, 1.0-gloss );
                float normTerm = max(0.0, NDFBlinnPhongNormalizedTerm(NdotH, RoughnessToSpecPower(1.0-gloss)));
                float specularPBL = max(0, (NdotL*visTerm*normTerm) * unity_LightGammaCorrectionConsts_PIDiv4 );
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularPBL*lightColor*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float3 directDiffuse = ((1 +(fd90 - 1)*pow((1.00001-NdotL), 5)) * (1 + (fd90 - 1)*pow((1.00001-NdotV), 5)) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
