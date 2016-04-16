// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:0,grmd:1,uamb:False,mssp:True,bkdf:False,rprd:True,enco:True,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.2885993,fgcg:0.4411765,fgcb:0.2400519,fgca:1,fgde:0.05,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:9492,x:34080,y:32740,varname:node_9492,prsc:2|diff-4971-OUT,spec-7005-OUT,gloss-8170-OUT,emission-4971-OUT;n:type:ShaderForge.SFN_Tex2d,id:5799,x:32572,y:32682,varname:_node_5799,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-9733-OUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8422,x:32016,y:33063,ptovrint:False,ptlb:GRID(RGBA),ptin:_GRIDRGBA,varname:_GRIDRGBA,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:8218,x:31747,y:32743,varname:node_8218,prsc:2;n:type:ShaderForge.SFN_Append,id:4183,x:32029,y:32768,varname:node_4183,prsc:2|A-8218-X,B-8218-Z;n:type:ShaderForge.SFN_Multiply,id:9733,x:32216,y:32768,varname:node_9733,prsc:2|A-4183-OUT,B-2956-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2956,x:32203,y:32625,ptovrint:False,ptlb:tiling,ptin:_tiling,varname:_tiling,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Slider,id:7005,x:33372,y:33201,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:8170,x:33348,y:33324,ptovrint:False,ptlb:roughness,ptin:_roughness,varname:_roughness,prsc:2,min:0,cur:0.2136752,max:1;n:type:ShaderForge.SFN_Lerp,id:9730,x:33345,y:32492,varname:node_9730,prsc:2|A-8064-OUT,B-4865-RGB,T-9535-OUT;n:type:ShaderForge.SFN_Color,id:4865,x:32459,y:32523,ptovrint:False,ptlb:color grid,ptin:_colorgrid,varname:_colorgrid,prsc:2,glob:False,c1:0,c2:0.6689653,c3:1,c4:1;n:type:ShaderForge.SFN_Vector1,id:8064,x:32786,y:32548,varname:node_8064,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:1659,x:32530,y:32867,varname:_node_6818,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-9733-OUT,MIP-1789-OUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Slider,id:1789,x:32109,y:33322,ptovrint:False,ptlb:blur grid,ptin:_blurgrid,varname:_blurgrid,prsc:2,min:0,cur:5,max:5;n:type:ShaderForge.SFN_Add,id:2487,x:33051,y:32859,varname:node_2487,prsc:2|A-5799-RGB,B-1659-RGB,C-705-OUT,D-5130-RGB;n:type:ShaderForge.SFN_Clamp01,id:224,x:33013,y:32611,varname:node_224,prsc:2|IN-2487-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9535,x:33189,y:32587,varname:node_9535,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-224-OUT;n:type:ShaderForge.SFN_Add,id:1407,x:32473,y:33218,varname:node_1407,prsc:2|A-5944-OUT,B-1789-OUT;n:type:ShaderForge.SFN_Vector1,id:5944,x:32311,y:33173,varname:node_5944,prsc:2,v1:1.25;n:type:ShaderForge.SFN_Tex2d,id:5130,x:32547,y:33040,varname:_node_7471,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False|UVIN-9733-OUT,MIP-1407-OUT,TEX-8422-TEX;n:type:ShaderForge.SFN_Lerp,id:3298,x:32800,y:32959,varname:node_3298,prsc:2|A-1659-RGB,B-5130-RGB,T-7418-OUT;n:type:ShaderForge.SFN_Time,id:767,x:32220,y:33477,varname:node_767,prsc:2;n:type:ShaderForge.SFN_Sin,id:7418,x:32843,y:33381,varname:node_7418,prsc:2|IN-7523-OUT;n:type:ShaderForge.SFN_Multiply,id:7523,x:32620,y:33508,varname:node_7523,prsc:2|A-767-TDB,B-3802-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3802,x:32485,y:33653,ptovrint:False,ptlb:speed glow,ptin:_speedglow,varname:_speedglow,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_Lerp,id:8203,x:32928,y:33123,varname:node_8203,prsc:2|A-3298-OUT,B-1659-RGB,T-3726-OUT;n:type:ShaderForge.SFN_Vector1,id:3726,x:32732,y:33236,varname:node_3726,prsc:2,v1:0.33;n:type:ShaderForge.SFN_Lerp,id:705,x:33122,y:32995,varname:node_705,prsc:2|A-3298-OUT,B-8203-OUT,T-3726-OUT;n:type:ShaderForge.SFN_Fresnel,id:2966,x:33189,y:32368,varname:node_2966,prsc:2|NRM-1832-OUT,EXP-6725-OUT;n:type:ShaderForge.SFN_NormalVector,id:1832,x:32857,y:32284,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:6725,x:32980,y:32475,ptovrint:False,ptlb:exponent,ptin:_exponent,varname:_exponent,prsc:2,glob:False,v1:3;n:type:ShaderForge.SFN_Lerp,id:4971,x:33511,y:32414,varname:node_4971,prsc:2|A-9730-OUT,B-8424-RGB,T-2966-OUT;n:type:ShaderForge.SFN_Color,id:8424,x:33207,y:32138,ptovrint:False,ptlb:color far,ptin:_colorfar,varname:_colorfar,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:8422-2956-7005-8170-4865-1789-3802-6725-8424;pass:END;sub:END;*/

Shader "Almgp/vhsrace/GRID_VHS" {
    Properties {
        _GRIDRGBA ("GRID(RGBA)", 2D) = "white" {}
        _tiling ("tiling", Float ) = 2
        _spec ("spec", Range(0, 1)) = 1
        _roughness ("roughness", Range(0, 1)) = 0.2136752
        _colorgrid ("color grid", Color) = (0,0.6689653,1,1)
        _blurgrid ("blur grid", Range(0, 5)) = 5
        _speedglow ("speed glow", Float ) = 4
        _exponent ("exponent", Float ) = 3
        _colorfar ("color far", Color) = (0.5,0.5,0.5,1)
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
            #pragma exclude_renderers metal xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _GRIDRGBA; uniform float4 _GRIDRGBA_ST;
            uniform float _tiling;
            uniform float _spec;
            uniform float _roughness;
            uniform float4 _colorgrid;
            uniform float _blurgrid;
            uniform float _speedglow;
            uniform float _exponent;
            uniform float4 _colorfar;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float gloss = 1.0 - _roughness; // Convert roughness to gloss
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
                float node_8064 = 0.0;
                float2 node_9733 = (float2(i.posWorld.r,i.posWorld.b)*_tiling);
                float4 _node_5799 = tex2D(_GRIDRGBA,TRANSFORM_TEX(node_9733, _GRIDRGBA));
                float4 _node_6818 = tex2Dlod(_GRIDRGBA,float4(TRANSFORM_TEX(node_9733, _GRIDRGBA),0.0,_blurgrid));
                float4 _node_7471 = tex2Dlod(_GRIDRGBA,float4(TRANSFORM_TEX(node_9733, _GRIDRGBA),0.0,(1.25+_blurgrid)));
                float4 node_767 = _Time + _TimeEditor;
                float3 node_3298 = lerp(_node_6818.rgb,_node_7471.rgb,sin((node_767.b*_speedglow)));
                float node_3726 = 0.33;
                float3 node_4971 = lerp(lerp(float3(node_8064,node_8064,node_8064),_colorgrid.rgb,saturate((_node_5799.rgb+_node_6818.rgb+lerp(node_3298,lerp(node_3298,_node_6818.rgb,node_3726),node_3726)+_node_7471.rgb)).r),_colorfar.rgb,pow(1.0-max(0,dot(i.normalDir, viewDirection)),_exponent));
                float3 diffuseColor = node_4971;
                diffuseColor *= 1-specularMonochrome;
                float3 diffuse = directDiffuse * diffuseColor;
////// Emissive:
                float3 emissive = node_4971;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
