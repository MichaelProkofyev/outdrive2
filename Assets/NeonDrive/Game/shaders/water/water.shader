// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:3,spmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6823,x:34330,y:32521,varname:node_6823,prsc:2|diff-5210-RGB,spec-8105-OUT,gloss-1574-OUT,normal-2033-OUT,alpha-1724-OUT,refract-8375-OUT;n:type:ShaderForge.SFN_Tex2d,id:5985,x:32653,y:33108,varname:_node_5985,prsc:2,tex:682710fb95aae5e49b9912508998d8bf,ntxv:3,isnm:True|UVIN-1776-OUT,TEX-3566-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3566,x:32208,y:33167,ptovrint:False,ptlb:normal,ptin:_normal,varname:_normal,tex:682710fb95aae5e49b9912508998d8bf,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3406,x:32676,y:33250,varname:_node_3406,prsc:2,tex:682710fb95aae5e49b9912508998d8bf,ntxv:0,isnm:False|UVIN-1390-OUT,TEX-3566-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:2145,x:31960,y:32737,varname:node_2145,prsc:2;n:type:ShaderForge.SFN_Append,id:2261,x:32155,y:32701,varname:node_2261,prsc:2|A-2145-X,B-2145-Z;n:type:ShaderForge.SFN_ValueProperty,id:2534,x:32122,y:32527,ptovrint:False,ptlb:tile 1,ptin:_tile1,varname:_tile1,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Divide,id:9405,x:32382,y:32471,varname:node_9405,prsc:2|A-2261-OUT,B-2534-OUT;n:type:ShaderForge.SFN_Divide,id:3335,x:32308,y:32745,varname:node_3335,prsc:2|A-2261-OUT,B-2188-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2188,x:32131,y:32862,ptovrint:False,ptlb:tile 2,ptin:_tile2,varname:_tile2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_NormalBlend,id:2033,x:33202,y:33082,varname:node_2033,prsc:2|BSE-5985-RGB,DTL-3406-RGB;n:type:ShaderForge.SFN_Slider,id:8105,x:32793,y:32593,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0.7094017,max:1;n:type:ShaderForge.SFN_Slider,id:8285,x:32810,y:32482,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0.3931624,max:1;n:type:ShaderForge.SFN_Color,id:5210,x:32922,y:33062,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.1410109,c2:0.137381,c3:0.2426471,c4:1;n:type:ShaderForge.SFN_Fresnel,id:9941,x:33189,y:32719,varname:node_9941,prsc:2|NRM-6772-OUT,EXP-4646-OUT;n:type:ShaderForge.SFN_NormalVector,id:6772,x:33168,y:32886,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:8999,x:33272,y:32488,varname:node_8999,prsc:2|A-8285-OUT,B-8546-OUT;n:type:ShaderForge.SFN_Time,id:4124,x:31873,y:33091,varname:s,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7314,x:32276,y:32986,varname:node_7314,prsc:2|A-4124-TSL,B-1290-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1290,x:31814,y:32935,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:1776,x:32468,y:32807,varname:node_1776,prsc:2|A-3335-OUT,B-7314-OUT;n:type:ShaderForge.SFN_Multiply,id:1487,x:32293,y:32911,varname:node_1487,prsc:2|A-4124-TSL,B-8691-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8691,x:31960,y:32998,ptovrint:False,ptlb:speed_2,ptin:_speed_2,varname:_speed_2,prsc:2,glob:False,v1:-0.35;n:type:ShaderForge.SFN_Add,id:1390,x:32557,y:32489,varname:node_1390,prsc:2|A-9405-OUT,B-1487-OUT;n:type:ShaderForge.SFN_OneMinus,id:8546,x:33155,y:32610,varname:node_8546,prsc:2|IN-9941-OUT;n:type:ShaderForge.SFN_Slider,id:4646,x:32849,y:32340,ptovrint:False,ptlb:freshnel,ptin:_freshnel,varname:_freshnel,prsc:2,min:0,cur:0,max:8;n:type:ShaderForge.SFN_Clamp01,id:1574,x:33383,y:32633,varname:node_1574,prsc:2|IN-8999-OUT;n:type:ShaderForge.SFN_Vector1,id:1724,x:33329,y:32952,varname:node_1724,prsc:2,v1:0.15;n:type:ShaderForge.SFN_ScreenPos,id:2038,x:33451,y:33082,varname:node_2038,prsc:2,sctp:0;n:type:ShaderForge.SFN_Divide,id:7870,x:33690,y:33050,varname:node_7870,prsc:2|A-2038-V,B-9177-PXW;n:type:ShaderForge.SFN_ScreenParameters,id:9177,x:33451,y:33267,varname:node_9177,prsc:2;n:type:ShaderForge.SFN_Divide,id:7376,x:33672,y:33168,varname:node_7376,prsc:2|A-2038-U,B-9177-PXH;n:type:ShaderForge.SFN_Append,id:9337,x:33868,y:33096,varname:node_9337,prsc:2|A-7376-OUT,B-7870-OUT;n:type:ShaderForge.SFN_Multiply,id:8375,x:34053,y:33096,varname:node_8375,prsc:2|A-9337-OUT,B-582-OUT;n:type:ShaderForge.SFN_Vector1,id:582,x:33953,y:33295,varname:node_582,prsc:2,v1:1.33;n:type:ShaderForge.SFN_ViewPosition,id:7811,x:33793,y:33360,varname:node_7811,prsc:2;proporder:3566-2534-2188-8105-8285-5210-1290-8691-4646;pass:END;sub:END;*/

Shader "Almgp/vhsrace/water" {
    Properties {
        _normal ("normal", 2D) = "bump" {}
        _tile1 ("tile 1", Float ) = 2
        _tile2 ("tile 2", Float ) = 1
        _spec ("spec", Range(0, 1)) = 0.7094017
        _gloss ("gloss", Range(0, 1)) = 0.3931624
        _color ("color", Color) = (0.1410109,0.137381,0.2426471,1)
        _speed ("speed", Float ) = 1
        _speed_2 ("speed_2", Float ) = -0.35
        _freshnel ("freshnel", Range(0, 8)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _tile1;
            uniform float _tile2;
            uniform float _spec;
            uniform float _gloss;
            uniform float4 _color;
            uniform float _speed;
            uniform float _speed_2;
            uniform float _freshnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_9337 = float2((i.screenPos.r/_ScreenParams.g),(i.screenPos.g/_ScreenParams.r));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_9337*1.33);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_2261 = float2(i.posWorld.r,i.posWorld.b);
                float4 s = _Time + _TimeEditor;
                float2 node_1776 = ((node_2261/_tile2)+(s.r*_speed));
                float3 _node_5985 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_1776, _normal)));
                float2 node_1390 = ((node_2261/_tile1)+(s.r*_speed_2));
                float3 _node_3406 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_1390, _normal)));
                float3 node_2033_nrm_base = _node_5985.rgb + float3(0,0,1);
                float3 node_2033_nrm_detail = _node_3406.rgb * float3(-1,-1,1);
                float3 node_2033_nrm_combined = node_2033_nrm_base*dot(node_2033_nrm_base, node_2033_nrm_detail)/node_2033_nrm_base.z - node_2033_nrm_detail;
                float3 node_2033 = node_2033_nrm_combined;
                float3 normalLocal = node_2033;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = saturate((_gloss*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_freshnel))));
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
                float3 specularColor = float3(_spec,_spec,_spec);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
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
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _color.rgb;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,0.15),1);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _tile1;
            uniform float _tile2;
            uniform float _spec;
            uniform float _gloss;
            uniform float4 _color;
            uniform float _speed;
            uniform float _speed_2;
            uniform float _freshnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 node_9337 = float2((i.screenPos.r/_ScreenParams.g),(i.screenPos.g/_ScreenParams.r));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_9337*1.33);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_2261 = float2(i.posWorld.r,i.posWorld.b);
                float4 s = _Time + _TimeEditor;
                float2 node_1776 = ((node_2261/_tile2)+(s.r*_speed));
                float3 _node_5985 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_1776, _normal)));
                float2 node_1390 = ((node_2261/_tile1)+(s.r*_speed_2));
                float3 _node_3406 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_1390, _normal)));
                float3 node_2033_nrm_base = _node_5985.rgb + float3(0,0,1);
                float3 node_2033_nrm_detail = _node_3406.rgb * float3(-1,-1,1);
                float3 node_2033_nrm_combined = node_2033_nrm_base*dot(node_2033_nrm_base, node_2033_nrm_detail)/node_2033_nrm_base.z - node_2033_nrm_detail;
                float3 node_2033 = node_2033_nrm_combined;
                float3 normalLocal = node_2033;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = saturate((_gloss*(1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_freshnel))));
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float LdotH = max(0.0,dot(lightDirection, halfDirection));
                float3 specularColor = float3(_spec,_spec,_spec);
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
                return fixed4(finalColor * 0.15,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
