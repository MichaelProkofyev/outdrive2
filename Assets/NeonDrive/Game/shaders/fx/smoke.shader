// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:0,grmd:0,uamb:True,mssp:False,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9004,x:34198,y:32965,varname:node_9004,prsc:2|diff-2400-RGB,diffpow-2400-RGB,spec-9588-OUT,gloss-3767-OUT,amdfl-9076-RGB,alpha-1238-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9171,x:31786,y:33502,ptovrint:False,ptlb:smoke,ptin:_smoke,varname:_smoke,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:5404,x:31553,y:32984,varname:node_5404,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7965,x:31762,y:33127,varname:node_7965,prsc:2|A-5404-TSL,B-5575-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5575,x:31574,y:33203,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:0.33;n:type:ShaderForge.SFN_Add,id:1739,x:32187,y:33063,varname:node_1739,prsc:2|A-8180-OUT,B-7965-OUT;n:type:ShaderForge.SFN_Tex2d,id:6586,x:32467,y:33186,varname:_node_6586,prsc:2,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False|UVIN-1739-OUT,TEX-9171-TEX;n:type:ShaderForge.SFN_Distance,id:4602,x:32340,y:33587,varname:node_4602,prsc:2|A-1224-XYZ,B-1151-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:1224,x:32075,y:33747,varname:node_1224,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:1151,x:32104,y:33908,varname:node_1151,prsc:2;n:type:ShaderForge.SFN_Divide,id:720,x:32532,y:33587,varname:node_720,prsc:2|A-4602-OUT,B-3161-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3161,x:32414,y:33909,ptovrint:False,ptlb:dist,ptin:_dist,varname:_dist,prsc:2,glob:False,v1:4.5;n:type:ShaderForge.SFN_Power,id:956,x:32779,y:33576,varname:node_956,prsc:2|VAL-720-OUT,EXP-6993-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6993,x:32614,y:33853,ptovrint:False,ptlb:exp,ptin:_exp,varname:_exp,prsc:2,glob:False,v1:500;n:type:ShaderForge.SFN_Clamp01,id:8037,x:33011,y:33576,varname:node_8037,prsc:2|IN-956-OUT;n:type:ShaderForge.SFN_Vector1,id:9588,x:32645,y:32950,varname:node_9588,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:3767,x:32617,y:33027,varname:node_3767,prsc:2,v1:0.1;n:type:ShaderForge.SFN_FragmentPosition,id:610,x:31797,y:32817,varname:node_610,prsc:2;n:type:ShaderForge.SFN_Append,id:3655,x:32020,y:32731,varname:node_3655,prsc:2|A-610-X,B-610-Z;n:type:ShaderForge.SFN_ValueProperty,id:3381,x:31762,y:33018,ptovrint:False,ptlb:tile,ptin:_tile,varname:_tile,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:8180,x:31999,y:32984,varname:node_8180,prsc:2|A-3655-OUT,B-3381-OUT;n:type:ShaderForge.SFN_Tex2d,id:7439,x:32481,y:33367,varname:_node_4279,prsc:2,tex:f5159ee9169bbc442bb060cf36c125a3,ntxv:0,isnm:False|UVIN-5812-OUT,TEX-9171-TEX;n:type:ShaderForge.SFN_Divide,id:7659,x:32006,y:33336,varname:node_7659,prsc:2|A-3655-OUT,B-4080-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4080,x:31991,y:33553,ptovrint:False,ptlb:tile 2,ptin:_tile2,varname:_tile2,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Blend,id:4336,x:32731,y:33321,varname:node_4336,prsc:2,blmd:10,clmp:True|SRC-6586-R,DST-7439-B;n:type:ShaderForge.SFN_Add,id:5812,x:32205,y:33284,varname:node_5812,prsc:2|A-4553-OUT,B-7659-OUT;n:type:ShaderForge.SFN_Multiply,id:4553,x:31762,y:33298,varname:node_4553,prsc:2|A-5404-TSL,B-2108-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2108,x:31328,y:33601,ptovrint:False,ptlb:speed 2,ptin:_speed2,varname:_speed2,prsc:2,glob:False,v1:1.5;n:type:ShaderForge.SFN_Fresnel,id:4824,x:33058,y:33058,varname:node_4824,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8198,x:32845,y:33159,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:131,x:32302,y:32882,varname:node_131,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8180-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:2570,x:33011,y:33317,varname:node_2570,prsc:2,min:0,max:1|IN-4336-OUT;n:type:ShaderForge.SFN_Lerp,id:1238,x:33362,y:33354,varname:node_1238,prsc:2|A-3506-OUT,B-2570-OUT,T-8037-OUT;n:type:ShaderForge.SFN_Vector1,id:3506,x:33162,y:33256,varname:node_3506,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:2400,x:33804,y:33006,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:9076,x:33845,y:33311,ptovrint:False,ptlb:color amb,ptin:_coloramb,varname:_coloramb,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:9171-5575-3161-6993-3381-4080-2108-2400-9076;pass:END;sub:END;*/

Shader "Almgp/vhsrace/smoke" {
    Properties {
        _smoke ("smoke", 2D) = "white" {}
        _speed ("speed", Float ) = 0.33
        _dist ("dist", Float ) = 4.5
        _exp ("exp", Float ) = 500
        _tile ("tile", Float ) = 1
        _tile2 ("tile 2", Float ) = 2
        _speed2 ("speed 2", Float ) = 1.5
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _coloramb ("color amb", Color) = (0.5,0.5,0.5,1)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _smoke; uniform float4 _smoke_ST;
            uniform float _speed;
            uniform float _dist;
            uniform float _exp;
            uniform float _tile;
            uniform float _tile2;
            uniform float _speed2;
            uniform float4 _color;
            uniform float4 _coloramb;
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
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = 0.1;
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
                UnityGI gi = UnityGlobalIllumination (d, 1, gloss, normalDirection);
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float node_9588 = 0.5;
                float3 specularColor = float3(node_9588,node_9588,node_9588);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
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
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse += _coloramb.rgb; // Diffuse Ambient Light
                float3 diffuseColor = _color.rgb;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float2 node_3655 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_8180 = (node_3655/_tile);
                float4 node_5404 = _Time + _TimeEditor;
                float node_7965 = (node_5404.r*_speed);
                float2 node_1739 = (node_8180+node_7965);
                float4 _node_6586 = tex2D(_smoke,TRANSFORM_TEX(node_1739, _smoke));
                float2 node_5812 = ((node_5404.r*_speed2)+(node_3655/_tile2));
                float4 _node_4279 = tex2D(_smoke,TRANSFORM_TEX(node_5812, _smoke));
                float node_4336 = saturate(( _node_4279.b > 0.5 ? (1.0-(1.0-2.0*(_node_4279.b-0.5))*(1.0-_node_6586.r)) : (2.0*_node_4279.b*_node_6586.r) ));
                float node_2570 = clamp(node_4336,0,1);
                float node_8037 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_dist),_exp));
                fixed4 finalRGBA = fixed4(finalColor,lerp(0.0,node_2570,node_8037));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _smoke; uniform float4 _smoke_ST;
            uniform float _speed;
            uniform float _dist;
            uniform float _exp;
            uniform float _tile;
            uniform float _tile2;
            uniform float _speed2;
            uniform float4 _color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                float gloss = 0.1;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float node_9588 = 0.5;
                float3 specularColor = float3(node_9588,node_9588,node_9588);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
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
                float3 diffuseColor = _color.rgb;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float2 node_3655 = float2(i.posWorld.r,i.posWorld.b);
                float2 node_8180 = (node_3655/_tile);
                float4 node_5404 = _Time + _TimeEditor;
                float node_7965 = (node_5404.r*_speed);
                float2 node_1739 = (node_8180+node_7965);
                float4 _node_6586 = tex2D(_smoke,TRANSFORM_TEX(node_1739, _smoke));
                float2 node_5812 = ((node_5404.r*_speed2)+(node_3655/_tile2));
                float4 _node_4279 = tex2D(_smoke,TRANSFORM_TEX(node_5812, _smoke));
                float node_4336 = saturate(( _node_4279.b > 0.5 ? (1.0-(1.0-2.0*(_node_4279.b-0.5))*(1.0-_node_6586.r)) : (2.0*_node_4279.b*_node_6586.r) ));
                float node_2570 = clamp(node_4336,0,1);
                float node_8037 = saturate(pow((distance(i.posWorld.rgb,_WorldSpaceCameraPos)/_dist),_exp));
                return fixed4(finalColor * lerp(0.0,node_2570,node_8037),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
