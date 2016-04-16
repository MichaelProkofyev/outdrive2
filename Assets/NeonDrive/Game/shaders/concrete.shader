// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,rprd:True,enco:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9767,x:33553,y:32504,varname:node_9767,prsc:2|diff-5269-RGB,diffpow-5269-RGB,spec-3947-OUT,gloss-7828-OUT,normal-4192-RGB;n:type:ShaderForge.SFN_Tex2d,id:5269,x:32426,y:32678,ptovrint:False,ptlb:concrete diff,ptin:_concretediff,varname:_concretediff,prsc:2,tex:f05ee3e0b4759ea439c775f4ed65cda1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4192,x:32426,y:32914,ptovrint:False,ptlb:concr normal,ptin:_concrnormal,varname:_concrnormal,prsc:2,tex:67bf48100d27ab14f868d72bb418feac,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:8616,x:32528,y:32549,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0.4188034,max:1;n:type:ShaderForge.SFN_Multiply,id:7594,x:32794,y:32731,varname:node_7594,prsc:2|A-5269-R,B-8616-OUT,C-5269-R;n:type:ShaderForge.SFN_Clamp,id:4188,x:33067,y:32667,varname:node_4188,prsc:2|IN-7594-OUT,MIN-1540-OUT,MAX-4389-OUT;n:type:ShaderForge.SFN_Slider,id:1540,x:32706,y:32406,ptovrint:False,ptlb:min spec,ptin:_minspec,varname:_minspec,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4389,x:32760,y:32245,ptovrint:False,ptlb:max spec,ptin:_maxspec,varname:_maxspec,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:4081,x:32974,y:32893,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0.6495727,max:1;n:type:ShaderForge.SFN_Blend,id:49,x:33261,y:32746,varname:node_49,prsc:2,blmd:12,clmp:True|SRC-4081-OUT,DST-5269-R;n:type:ShaderForge.SFN_Lerp,id:3947,x:33539,y:32251,varname:node_3947,prsc:2|A-2710-OUT,B-4188-OUT,T-3533-OUT;n:type:ShaderForge.SFN_Lerp,id:7828,x:33336,y:32602,varname:node_7828,prsc:2|A-2575-OUT,B-49-OUT,T-7182-OUT;n:type:ShaderForge.SFN_Slider,id:3533,x:33039,y:32383,ptovrint:False,ptlb:override spec,ptin:_overridespec,varname:_overridespec,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7182,x:33039,y:32496,ptovrint:False,ptlb:override gloss,ptin:_overridegloss,varname:_overridegloss,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2710,x:33174,y:32151,ptovrint:False,ptlb:ov spec P,ptin:_ovspecP,varname:_ovspecP,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2575,x:33212,y:32323,ptovrint:False,ptlb:ov gloss P,ptin:_ovglossP,varname:_ovglossP,prsc:2,min:0,cur:0,max:1;proporder:5269-8616-1540-4389-4192-4081-7182-2575-3533-2710;pass:END;sub:END;*/

Shader "Almgp/concrete" {
    Properties {
        _concretediff ("concrete diff", 2D) = "white" {}
        _spec ("spec", Range(0, 1)) = 0.4188034
        _minspec ("min spec", Range(0, 1)) = 0
        _maxspec ("max spec", Range(0, 1)) = 1
        _concrnormal ("concr normal", 2D) = "bump" {}
        _gloss ("gloss", Range(0, 1)) = 0.6495727
        _overridegloss ("override gloss", Range(0, 1)) = 0
        _ovglossP ("ov gloss P", Range(0, 1)) = 0
        _overridespec ("override spec", Range(0, 1)) = 0
        _ovspecP ("ov spec P", Range(0, 1)) = 0
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _concretediff; uniform float4 _concretediff_ST;
            uniform sampler2D _concrnormal; uniform float4 _concrnormal_ST;
            uniform float _spec;
            uniform float _minspec;
            uniform float _maxspec;
            uniform float _gloss;
            uniform float _overridespec;
            uniform float _overridegloss;
            uniform float _ovspecP;
            uniform float _ovglossP;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
            #endif
            #ifdef DYNAMICLIGHTMAP_ON
                o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
            #endif
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(_Object2World, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            UNITY_TRANSFER_FOG(o,o.pos);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 _concrnormal_var = UnpackNormal(tex2D(_concrnormal,TRANSFORM_TEX(i.uv0, _concrnormal)));
            float3 normalLocal = _concrnormal_var.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            
            float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
            i.normalDir *= nSign;
            normalDirection *= nSign;
            
            float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
            float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float4 _concretediff_var = tex2D(_concretediff,TRANSFORM_TEX(i.uv0, _concretediff));
            float gloss = lerp(_ovglossP,saturate((_gloss > 0.5 ?  (1.0-(1.0-2.0*(_gloss-0.5))*(1.0-_concretediff_var.r)) : (2.0*_gloss*_concretediff_var.r)) ),_overridegloss);
            float specPow = exp2( gloss * 10.0+1.0);
/// GI Data:
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
            #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                d.ambient = 0;
                d.lightmapUV = i.ambientOrLightmapUV;
            #else
                d.ambient = i.ambientOrLightmapUV;
            #endif
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
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float node_7594 = (_concretediff_var.r*_spec*_concretediff_var.r);
            float node_4188 = clamp(node_7594,_minspec,_maxspec);
            float node_3947 = lerp(_ovspecP,node_4188,_overridespec);
            float3 specularColor = float3(node_3947,node_3947,node_3947);
            float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
            float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
            float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
            float3 indirectSpecular = (gi.indirect.specular)*specularColor;
            float3 specular = (directSpecular + indirectSpecular);
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            float3 directDiffuse = pow(max( 0.0, NdotL), _concretediff_var.rgb) * attenColor;
            float3 indirectDiffuse = float3(0,0,0);
            indirectDiffuse += gi.indirect.diffuse;
            float3 diffuseColor = _concretediff_var.rgb;
            diffuseColor *= 1-specularMonochrome;
            float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
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
        Cull Off
        
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_FORWARDADD
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "AutoLight.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #pragma multi_compile_fwdadd_fullshadows
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform sampler2D _concretediff; uniform float4 _concretediff_ST;
        uniform sampler2D _concrnormal; uniform float4 _concrnormal_ST;
        uniform float _spec;
        uniform float _minspec;
        uniform float _maxspec;
        uniform float _gloss;
        uniform float _overridespec;
        uniform float _overridegloss;
        uniform float _ovspecP;
        uniform float _ovglossP;
        struct VertexInput {
            float4 vertex : POSITION;
            float3 normal : NORMAL;
            float4 tangent : TANGENT;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
            float3 normalDir : TEXCOORD4;
            float3 tangentDir : TEXCOORD5;
            float3 bitangentDir : TEXCOORD6;
            LIGHTING_COORDS(7,8)
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.normalDir = UnityObjectToWorldNormal(v.normal);
            o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
            o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
            o.posWorld = mul(_Object2World, v.vertex);
            float3 lightColor = _LightColor0.rgb;
            o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
            TRANSFER_VERTEX_TO_FRAGMENT(o)
            return o;
        }
        float4 frag(VertexOutput i) : COLOR {
            i.normalDir = normalize(i.normalDir);
            float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            float3 _concrnormal_var = UnpackNormal(tex2D(_concrnormal,TRANSFORM_TEX(i.uv0, _concrnormal)));
            float3 normalLocal = _concrnormal_var.rgb;
            float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
            
            float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
            i.normalDir *= nSign;
            normalDirection *= nSign;
            
            float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
            float3 lightColor = _LightColor0.rgb;
            float3 halfDirection = normalize(viewDirection+lightDirection);
// Lighting:
            float attenuation = LIGHT_ATTENUATION(i);
            float3 attenColor = attenuation * _LightColor0.xyz;
            float Pi = 3.141592654;
            float InvPi = 0.31830988618;
///// Gloss:
            float4 _concretediff_var = tex2D(_concretediff,TRANSFORM_TEX(i.uv0, _concretediff));
            float gloss = lerp(_ovglossP,saturate((_gloss > 0.5 ?  (1.0-(1.0-2.0*(_gloss-0.5))*(1.0-_concretediff_var.r)) : (2.0*_gloss*_concretediff_var.r)) ),_overridegloss);
            float specPow = exp2( gloss * 10.0+1.0);
// Specular:
            float NdotL = max(0, dot( normalDirection, lightDirection ));
            float node_7594 = (_concretediff_var.r*_spec*_concretediff_var.r);
            float node_4188 = clamp(node_7594,_minspec,_maxspec);
            float node_3947 = lerp(_ovspecP,node_4188,_overridespec);
            float3 specularColor = float3(node_3947,node_3947,node_3947);
            float specularMonochrome = max( max(specularColor.r, specularColor.g), specularColor.b);
            float normTerm = (specPow + 8.0 ) / (8.0 * Pi);
            float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*normTerm*specularColor;
            float3 specular = directSpecular;
/// Diffuse:
            NdotL = max(0.0,dot( normalDirection, lightDirection ));
            float3 directDiffuse = pow(max( 0.0, NdotL), _concretediff_var.rgb) * attenColor;
            float3 diffuseColor = _concretediff_var.rgb;
            diffuseColor *= 1-specularMonochrome;
            float3 diffuse = directDiffuse * diffuseColor;
// Final Color:
            float3 finalColor = diffuse + specular;
            return fixed4(finalColor * 1,0);
        }
        ENDCG
    }
    Pass {
        Name "Meta"
        Tags {
            "LightMode"="Meta"
        }
        Cull Off
        
        CGPROGRAM
        #pragma vertex vert
        #pragma fragment frag
        #define UNITY_PASS_META 1
        #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
        #define _GLOSSYENV 1
        #include "UnityCG.cginc"
        #include "Lighting.cginc"
        #include "UnityPBSLighting.cginc"
        #include "UnityStandardBRDF.cginc"
        #include "UnityMetaPass.cginc"
        #pragma fragmentoption ARB_precision_hint_fastest
        #pragma multi_compile_shadowcaster
        #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
        #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
        #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
        #pragma multi_compile_fog
        #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
        #pragma target 3.0
        uniform sampler2D _concretediff; uniform float4 _concretediff_ST;
        uniform float _spec;
        uniform float _minspec;
        uniform float _maxspec;
        uniform float _gloss;
        uniform float _overridespec;
        uniform float _overridegloss;
        uniform float _ovspecP;
        uniform float _ovglossP;
        struct VertexInput {
            float4 vertex : POSITION;
            float2 texcoord0 : TEXCOORD0;
            float2 texcoord1 : TEXCOORD1;
            float2 texcoord2 : TEXCOORD2;
        };
        struct VertexOutput {
            float4 pos : SV_POSITION;
            float2 uv0 : TEXCOORD0;
            float2 uv1 : TEXCOORD1;
            float2 uv2 : TEXCOORD2;
            float4 posWorld : TEXCOORD3;
        };
        VertexOutput vert (VertexInput v) {
            VertexOutput o = (VertexOutput)0;
            o.uv0 = v.texcoord0;
            o.uv1 = v.texcoord1;
            o.uv2 = v.texcoord2;
            o.posWorld = mul(_Object2World, v.vertex);
            o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
            return o;
        }
        float4 frag(VertexOutput i) : SV_Target {
/// Vectors:
            float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
            UnityMetaInput o;
            UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
            
            o.Emission = 0;
            
            float4 _concretediff_var = tex2D(_concretediff,TRANSFORM_TEX(i.uv0, _concretediff));
            float3 diffColor = _concretediff_var.rgb;
            float node_7594 = (_concretediff_var.r*_spec*_concretediff_var.r);
            float node_4188 = clamp(node_7594,_minspec,_maxspec);
            float node_3947 = lerp(_ovspecP,node_4188,_overridespec);
            float3 specColor = float3(node_3947,node_3947,node_3947);
            float roughness = 1.0 - lerp(_ovglossP,saturate((_gloss > 0.5 ?  (1.0-(1.0-2.0*(_gloss-0.5))*(1.0-_concretediff_var.r)) : (2.0*_gloss*_concretediff_var.r)) ),_overridegloss);
            o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
            
            return UnityMetaFragment( o );
        }
        ENDCG
    }
}
FallBack "Diffuse"
CustomEditor "ShaderForgeMaterialInspector"
}
