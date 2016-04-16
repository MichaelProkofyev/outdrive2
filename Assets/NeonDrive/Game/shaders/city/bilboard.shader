// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:True,enco:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9026,x:33270,y:32397,varname:node_9026,prsc:2|diff-1490-OUT,spec-3481-OUT,gloss-455-OUT,emission-1490-OUT;n:type:ShaderForge.SFN_Tex2d,id:743,x:32133,y:32258,varname:_bilboardtexture,prsc:2,tex:e88a9ad6e9c77d9468e5a14b235dd674,ntxv:0,isnm:False|TEX-9808-TEX;n:type:ShaderForge.SFN_Tex2d,id:8027,x:32648,y:33053,ptovrint:False,ptlb:overlay,ptin:_overlay,varname:_overlay,prsc:2,tex:ffa9c02760c2b4e8eb9814ec06c4b05b,ntxv:0,isnm:False|UVIN-1765-OUT;n:type:ShaderForge.SFN_Time,id:8160,x:31613,y:32959,varname:node_8160,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8426,x:31786,y:33219,varname:node_8426,prsc:2|A-8160-TSL,B-9163-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9163,x:31507,y:33145,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_TexCoord,id:6423,x:31968,y:32793,varname:node_6423,prsc:2,uv:0;n:type:ShaderForge.SFN_Append,id:4022,x:32259,y:33042,varname:node_4022,prsc:2|A-6423-U,B-9376-OUT;n:type:ShaderForge.SFN_Add,id:1765,x:32448,y:33011,varname:node_1765,prsc:2|A-6423-UVOUT,B-4022-OUT;n:type:ShaderForge.SFN_Blend,id:1490,x:32747,y:32784,varname:node_1490,prsc:2,blmd:10,clmp:True|SRC-8027-RGB,DST-9598-OUT;n:type:ShaderForge.SFN_Phi,id:8933,x:31776,y:32751,varname:node_8933,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4524,x:31945,y:33030,varname:node_4524,prsc:2|A-8160-TSL,B-8426-OUT,C-8933-OUT;n:type:ShaderForge.SFN_Add,id:9376,x:32132,y:33156,varname:node_9376,prsc:2|A-4524-OUT,B-8426-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9808,x:31904,y:32457,ptovrint:False,ptlb:bilboard,ptin:_bilboard,varname:_bilboard,tex:e88a9ad6e9c77d9468e5a14b235dd674,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1729,x:32039,y:32644,varname:node_1729,prsc:2|A-8270-OUT,B-8160-T;n:type:ShaderForge.SFN_ValueProperty,id:8270,x:31843,y:32670,ptovrint:False,ptlb:pulse,ptin:_pulse,varname:_pulse,prsc:2,glob:False,v1:5;n:type:ShaderForge.SFN_Lerp,id:9598,x:32702,y:32522,varname:node_9598,prsc:2|A-743-RGB,B-5041-OUT,T-1576-OUT;n:type:ShaderForge.SFN_Desaturate,id:9787,x:32477,y:32578,varname:node_9787,prsc:2|COL-6613-OUT,DES-9971-OUT;n:type:ShaderForge.SFN_Clamp01,id:1576,x:32368,y:32753,varname:node_1576,prsc:2|IN-3475-OUT;n:type:ShaderForge.SFN_Clamp01,id:5041,x:32611,y:32699,varname:node_5041,prsc:2|IN-9787-OUT;n:type:ShaderForge.SFN_Add,id:6613,x:32352,y:32378,varname:node_6613,prsc:2|A-743-RGB,B-743-RGB;n:type:ShaderForge.SFN_Cos,id:3475,x:32208,y:32564,varname:node_3475,prsc:2|IN-1729-OUT;n:type:ShaderForge.SFN_Slider,id:9971,x:32139,y:32919,ptovrint:False,ptlb:desaturate,ptin:_desaturate,varname:_desaturate,prsc:2,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:455,x:32716,y:32352,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3481,x:32947,y:32262,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0,max:1;proporder:8027-9163-9808-8270-9971-3481-455;pass:END;sub:END;*/

Shader "Almgp/vhsrace/bilboard" {
    Properties {
        _overlay ("overlay", 2D) = "white" {}
        _speed ("speed", Float ) = 5
        _bilboard ("bilboard", 2D) = "white" {}
        _pulse ("pulse", Float ) = 5
        _desaturate ("desaturate", Range(-2, 2)) = 0
        _spec ("spec", Range(0, 1)) = 0
        _gloss ("gloss", Range(0, 1)) = 0
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
            uniform sampler2D _overlay; uniform float4 _overlay_ST;
            uniform float _speed;
            uniform sampler2D _bilboard; uniform float4 _bilboard_ST;
            uniform float _pulse;
            uniform float _desaturate;
            uniform float _gloss;
            uniform float _spec;
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
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                float3 specularColor = float3(_spec,_spec,_spec);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_8160 = _Time + _TimeEditor;
                float node_8426 = (node_8160.r*_speed);
                float2 node_1765 = (i.uv0+float2(i.uv0.r,((node_8160.r*node_8426*1.61803398875)+node_8426)));
                float4 _overlay_var = tex2D(_overlay,TRANSFORM_TEX(node_1765, _overlay));
                float4 _bilboardtexture = tex2D(_bilboard,TRANSFORM_TEX(i.uv0, _bilboard));
                float3 node_1490 = saturate(( lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g)))) > 0.5 ? (1.0-(1.0-2.0*(lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g))))-0.5))*(1.0-_overlay_var.rgb)) : (2.0*lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g))))*_overlay_var.rgb) ));
                float3 diffuseColor = node_1490;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_1490;
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
            uniform sampler2D _overlay; uniform float4 _overlay_ST;
            uniform float _speed;
            uniform sampler2D _bilboard; uniform float4 _bilboard_ST;
            uniform float _pulse;
            uniform float _desaturate;
            uniform float _gloss;
            uniform float _spec;
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
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_spec,_spec,_spec);
                float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
                float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_8160 = _Time + _TimeEditor;
                float node_8426 = (node_8160.r*_speed);
                float2 node_1765 = (i.uv0+float2(i.uv0.r,((node_8160.r*node_8426*1.61803398875)+node_8426)));
                float4 _overlay_var = tex2D(_overlay,TRANSFORM_TEX(node_1765, _overlay));
                float4 _bilboardtexture = tex2D(_bilboard,TRANSFORM_TEX(i.uv0, _bilboard));
                float3 node_1490 = saturate(( lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g)))) > 0.5 ? (1.0-(1.0-2.0*(lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g))))-0.5))*(1.0-_overlay_var.rgb)) : (2.0*lerp(_bilboardtexture.rgb,saturate(lerp((_bilboardtexture.rgb+_bilboardtexture.rgb),dot((_bilboardtexture.rgb+_bilboardtexture.rgb),float3(0.3,0.59,0.11)),_desaturate)),saturate(cos((_pulse*node_8160.g))))*_overlay_var.rgb) ));
                float3 diffuseColor = node_1490;
                diffuseColor *= 1-specularMonochrome;
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
