// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:3,spmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1906,x:33505,y:32507,varname:node_1906,prsc:2|diff-9965-RGB,spec-7936-OUT,gloss-7556-OUT,normal-5497-RGB,emission-7888-OUT;n:type:ShaderForge.SFN_Tex2d,id:9849,x:31914,y:32365,ptovrint:False,ptlb:Emis1,ptin:_Emis1,varname:_Emis1,prsc:2,tex:a1b9ec2795e923e4c8f5a48a316887d2,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:585,x:32291,y:33023,ptovrint:False,ptlb:emis2,ptin:_emis2,varname:_emis2,prsc:2,tex:48cdf5b7599aa354687ff1645304bbaa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9965,x:32279,y:32553,ptovrint:False,ptlb:diff,ptin:_diff,varname:_diff,prsc:2,tex:67555b6c50a7d24479bb1573955caddc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5497,x:32502,y:32855,ptovrint:False,ptlb:normal,ptin:_normal,varname:_normal,prsc:2,tex:2232d87b1bfb0714397ad1748b05d061,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:1260,x:32451,y:32657,ptovrint:False,ptlb:emisblend,ptin:_emisblend,varname:_emisblend,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:8752,x:32608,y:32526,varname:node_8752,prsc:2|A-6136-OUT,B-585-RGB,T-1260-OUT;n:type:ShaderForge.SFN_Multiply,id:7888,x:32839,y:32475,varname:node_7888,prsc:2|A-3513-OUT,B-8752-OUT;n:type:ShaderForge.SFN_Color,id:7016,x:32440,y:32109,ptovrint:False,ptlb:color neon,ptin:_colorneon,varname:_colorneon,prsc:2,glob:False,c1:0,c2:0.6689658,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:3513,x:32854,y:32298,varname:node_3513,prsc:2|A-1342-OUT,B-4813-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1342,x:32780,y:31987,ptovrint:False,ptlb:neonpower,ptin:_neonpower,varname:_neonpower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Slider,id:7556,x:33019,y:32273,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:7936,x:32809,y:32916,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6136,x:32185,y:32265,varname:node_6136,prsc:2|A-4820-OUT,B-9849-RGB;n:type:ShaderForge.SFN_Time,id:2452,x:31771,y:31986,varname:node_2452,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4463,x:32084,y:32035,varname:node_4463,prsc:2|A-1839-OUT,B-2452-T;n:type:ShaderForge.SFN_ValueProperty,id:1839,x:31757,y:32197,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Sin,id:3416,x:32227,y:32093,varname:node_3416,prsc:2|IN-4463-OUT;n:type:ShaderForge.SFN_Lerp,id:4820,x:31987,y:32165,varname:node_4820,prsc:2|A-4952-OUT,B-4963-OUT,T-3416-OUT;n:type:ShaderForge.SFN_Vector1,id:4963,x:32279,y:31960,varname:node_4963,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:4952,x:31532,y:32115,varname:node_4952,prsc:2,v1:5;n:type:ShaderForge.SFN_Color,id:1124,x:32396,y:32349,ptovrint:False,ptlb:color neon_2,ptin:_colorneon_2,varname:_colorneon_2,prsc:2,glob:False,c1:0,c2:0.6689658,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:4813,x:32633,y:32298,varname:node_4813,prsc:2|A-7016-RGB,B-4965-OUT,T-1260-OUT;n:type:ShaderForge.SFN_Multiply,id:4965,x:32652,y:32122,varname:node_4965,prsc:2|A-1342-OUT,B-1124-RGB;proporder:5497-9849-585-1260-9965-7016-1342-7556-7936-1839-1124;pass:END;sub:END;*/

Shader "Almgp/Vhsrace/Road" {
    Properties {
        _normal ("normal", 2D) = "bump" {}
        _Emis1 ("Emis1", 2D) = "white" {}
        _emis2 ("emis2", 2D) = "white" {}
        _emisblend ("emisblend", Range(0, 1)) = 0
        _diff ("diff", 2D) = "white" {}
        _colorneon ("color neon", Color) = (0,0.6689658,1,1)
        _neonpower ("neonpower", Float ) = 1
        _gloss ("gloss", Range(0, 1)) = 0
        _spec ("spec", Range(0, 1)) = 0
        _speed ("speed", Float ) = 1
        _colorneon_2 ("color neon_2", Color) = (0,0.6689658,1,1)
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
            uniform sampler2D _Emis1; uniform float4 _Emis1_ST;
            uniform sampler2D _emis2; uniform float4 _emis2_ST;
            uniform sampler2D _diff; uniform float4 _diff_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _emisblend;
            uniform float4 _colorneon;
            uniform float _neonpower;
            uniform float _gloss;
            uniform float _spec;
            uniform float _speed;
            uniform float4 _colorneon_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float3 normalLocal = _normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 _diff_var = tex2D(_diff,TRANSFORM_TEX(i.uv0, _diff));
                float3 diffuseColor = _diff_var.rgb;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 node_2452 = _Time + _TimeEditor;
                float4 _Emis1_var = tex2D(_Emis1,TRANSFORM_TEX(i.uv0, _Emis1));
                float4 _emis2_var = tex2D(_emis2,TRANSFORM_TEX(i.uv0, _emis2));
                float3 emissive = ((_neonpower*lerp(_colorneon.rgb,(_neonpower*_colorneon_2.rgb),_emisblend))*lerp((lerp(5.0,1.0,sin((_speed*node_2452.g)))*_Emis1_var.rgb),_emis2_var.rgb,_emisblend));
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
            uniform sampler2D _Emis1; uniform float4 _Emis1_ST;
            uniform sampler2D _emis2; uniform float4 _emis2_ST;
            uniform sampler2D _diff; uniform float4 _diff_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform float _emisblend;
            uniform float4 _colorneon;
            uniform float _neonpower;
            uniform float _gloss;
            uniform float _spec;
            uniform float _speed;
            uniform float4 _colorneon_2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float3 normalLocal = _normal_var.rgb;
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
                float gloss = _gloss;
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
                float4 _diff_var = tex2D(_diff,TRANSFORM_TEX(i.uv0, _diff));
                float3 diffuseColor = _diff_var.rgb;
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
