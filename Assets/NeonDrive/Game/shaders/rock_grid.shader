// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:0,nrsp:0,limd:2,spmd:1,grmd:0,uamb:False,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:2220,x:35408,y:32418,varname:node_2220,prsc:2|diff-6833-OUT,spec-6239-OUT,gloss-7513-OUT,emission-6833-OUT;n:type:ShaderForge.SFN_Tex2d,id:739,x:32346,y:32638,varname:_grid,prsc:2,tex:4ec0c65e0741cff41b6cfa7caa145753,ntxv:0,isnm:False|TEX-4417-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4417,x:32085,y:32937,ptovrint:False,ptlb:gridTexture,ptin:_gridTexture,varname:_gridTexture,tex:4ec0c65e0741cff41b6cfa7caa145753,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:247,x:32900,y:32589,varname:node_247,prsc:2,frmn:0,frmx:1,tomn:2,tomx:-5|IN-2606-OUT;n:type:ShaderForge.SFN_OneMinus,id:7590,x:32850,y:32797,varname:node_7590,prsc:2|IN-2606-OUT;n:type:ShaderForge.SFN_Lerp,id:6459,x:33281,y:32653,varname:node_6459,prsc:2|A-247-OUT,B-1925-OUT,T-7906-OUT;n:type:ShaderForge.SFN_Desaturate,id:2606,x:32658,y:32668,varname:node_2606,prsc:2|COL-8284-OUT,DES-8212-OUT;n:type:ShaderForge.SFN_Vector1,id:8212,x:32593,y:32955,varname:node_8212,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:4723,x:32793,y:32973,varname:node_4723,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5719,x:32960,y:32962,varname:node_5719,prsc:2|A-4723-T,B-7310-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7310,x:32823,y:33200,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:15;n:type:ShaderForge.SFN_Sin,id:7906,x:33181,y:32955,varname:node_7906,prsc:2|IN-5719-OUT;n:type:ShaderForge.SFN_OneMinus,id:9005,x:33651,y:32513,varname:node_9005,prsc:2|IN-6459-OUT;n:type:ShaderForge.SFN_Color,id:1965,x:33837,y:33065,ptovrint:False,ptlb:color 1 ,ptin:_color1,varname:_color1,prsc:2,glob:False,c1:0.1985294,c2:0.8341783,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:863,x:33293,y:33179,ptovrint:False,ptlb:color 2l ,ptin:_color2l,varname:_color2l,prsc:2,glob:False,c1:0.05882353,c2:0.05536332,c3:0.05536332,c4:1;n:type:ShaderForge.SFN_Lerp,id:6283,x:34502,y:32698,varname:node_6283,prsc:2|A-2480-OUT,B-6886-OUT,T-2526-OUT;n:type:ShaderForge.SFN_Clamp01,id:2526,x:33911,y:32447,varname:node_2526,prsc:2|IN-9005-OUT;n:type:ShaderForge.SFN_Multiply,id:6886,x:33848,y:32906,varname:node_6886,prsc:2|A-1965-RGB,B-7547-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7547,x:33566,y:33033,ptovrint:False,ptlb:power color 1,ptin:_powercolor1,varname:_powercolor1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2480,x:33642,y:33178,varname:node_2480,prsc:2|A-863-RGB,B-9758-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9758,x:33448,y:33289,ptovrint:False,ptlb:power color 2,ptin:_powercolor2,varname:_powercolor2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_NormalVector,id:5618,x:33476,y:32016,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:9152,x:33781,y:32136,ptovrint:False,ptlb:height factor,ptin:_heightfactor,varname:_heightfactor,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Color,id:4963,x:33285,y:33485,ptovrint:False,ptlb:color top,ptin:_colortop,varname:_colortop,prsc:2,glob:False,c1:0.8670056,c2:0.4233347,c3:0.9926471,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:3976,x:33456,y:33579,ptovrint:False,ptlb:power color top,ptin:_powercolortop,varname:_powercolortop,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2342,x:33886,y:33522,varname:node_2342,prsc:2|A-4963-RGB,B-3976-OUT;n:type:ShaderForge.SFN_Lerp,id:6833,x:34799,y:32440,varname:node_6833,prsc:2|A-5312-OUT,B-6283-OUT,T-9023-OUT;n:type:ShaderForge.SFN_Lerp,id:1734,x:34239,y:33097,varname:node_1734,prsc:2|A-1612-OUT,B-2342-OUT,T-2526-OUT;n:type:ShaderForge.SFN_Lerp,id:5312,x:34372,y:32444,varname:node_5312,prsc:2|A-2480-OUT,B-1734-OUT,T-2526-OUT;n:type:ShaderForge.SFN_Tex2d,id:5952,x:32307,y:33009,varname:_node_1410,prsc:2,tex:4ec0c65e0741cff41b6cfa7caa145753,ntxv:0,isnm:False|UVIN-4286-OUT,TEX-4417-TEX;n:type:ShaderForge.SFN_TexCoord,id:7222,x:32028,y:33182,varname:node_7222,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:4286,x:32214,y:33205,varname:node_4286,prsc:2|A-7222-UVOUT,B-3192-OUT;n:type:ShaderForge.SFN_Add,id:8284,x:32506,y:32815,varname:node_8284,prsc:2|A-739-RGB,B-6299-OUT;n:type:ShaderForge.SFN_Multiply,id:6299,x:32511,y:33029,varname:node_6299,prsc:2|A-4178-OUT,B-5952-RGB;n:type:ShaderForge.SFN_Slider,id:4178,x:32284,y:33351,ptovrint:False,ptlb:micro_grid,ptin:_micro_grid,varname:_micro_grid,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:3192,x:32067,y:33540,ptovrint:False,ptlb:microgridTile,ptin:_microgridTile,varname:_microgridTile,prsc:2,glob:False,v1:4;n:type:ShaderForge.SFN_Color,id:6885,x:33849,y:33256,ptovrint:False,ptlb:color top pulse,ptin:_colortoppulse,varname:_colortoppulse,prsc:2,glob:False,c1:0.6838235,c2:0.1156466,c3:0.2919773,c4:1;n:type:ShaderForge.SFN_Lerp,id:1612,x:34128,y:33335,varname:node_1612,prsc:2|A-6885-RGB,B-2342-OUT,T-7906-OUT;n:type:ShaderForge.SFN_Lerp,id:1925,x:33055,y:32747,varname:node_1925,prsc:2|A-247-OUT,B-7590-OUT,T-9958-OUT;n:type:ShaderForge.SFN_Vector1,id:9958,x:32961,y:32892,varname:node_9958,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Slider,id:6239,x:34754,y:32659,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0.641877,max:1;n:type:ShaderForge.SFN_Slider,id:7513,x:34794,y:32776,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector3,id:8894,x:33495,y:31832,varname:node_8894,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Dot,id:7518,x:33807,y:31934,varname:node_7518,prsc:2,dt:0|A-8894-OUT,B-5618-OUT;n:type:ShaderForge.SFN_Clamp01,id:9023,x:34096,y:32097,varname:node_9023,prsc:2|IN-7518-OUT;proporder:4417-7310-1965-863-7547-9758-4963-3976-9152-4178-3192-6885-6239-7513;pass:END;sub:END;*/

Shader "Almgp/vhsrace/rock_grid" {
    Properties {
        _gridTexture ("gridTexture", 2D) = "white" {}
        _speed ("speed", Float ) = 15
        _color1 ("color 1 ", Color) = (0.1985294,0.8341783,1,1)
        _color2l ("color 2l ", Color) = (0.05882353,0.05536332,0.05536332,1)
        _powercolor1 ("power color 1", Float ) = 1
        _powercolor2 ("power color 2", Float ) = 1
        _colortop ("color top", Color) = (0.8670056,0.4233347,0.9926471,1)
        _powercolortop ("power color top", Float ) = 1
        _heightfactor ("height factor", Float ) = 1
        _micro_grid ("micro_grid", Range(0, 1)) = 0
        _microgridTile ("microgridTile", Float ) = 4
        _colortoppulse ("color top pulse", Color) = (0.6838235,0.1156466,0.2919773,1)
        _spec ("spec", Range(0, 1)) = 0.641877
        _gloss ("gloss", Range(0, 1)) = 1
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
            uniform sampler2D _gridTexture; uniform float4 _gridTexture_ST;
            uniform float _speed;
            uniform float4 _color1;
            uniform float4 _color2l;
            uniform float _powercolor1;
            uniform float _powercolor2;
            uniform float4 _colortop;
            uniform float _powercolortop;
            uniform float _micro_grid;
            uniform float _microgridTile;
            uniform float4 _colortoppulse;
            uniform float _spec;
            uniform float _gloss;
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
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
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(reflect(-lightDirection, normalDirection),viewDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 node_2480 = (_color2l.rgb*_powercolor2);
                float3 node_2342 = (_colortop.rgb*_powercolortop);
                float4 node_4723 = _Time + _TimeEditor;
                float node_7906 = sin((node_4723.g*_speed));
                float4 _grid = tex2D(_gridTexture,TRANSFORM_TEX(i.uv0, _gridTexture));
                float2 node_4286 = (i.uv0*_microgridTile);
                float4 _node_1410 = tex2D(_gridTexture,TRANSFORM_TEX(node_4286, _gridTexture));
                float3 node_2606 = lerp((_grid.rgb+(_micro_grid*_node_1410.rgb)),dot((_grid.rgb+(_micro_grid*_node_1410.rgb)),float3(0.3,0.59,0.11)),1.0);
                float3 node_247 = (node_2606*-7.0+2.0);
                float3 node_2526 = saturate((1.0 - lerp(node_247,lerp(node_247,(1.0 - node_2606),0.5),node_7906)));
                float3 node_6833 = lerp(lerp(node_2480,lerp(lerp(_colortoppulse.rgb,node_2342,node_7906),node_2342,node_2526),node_2526),lerp(node_2480,(_color1.rgb*_powercolor1),node_2526),saturate(dot(float3(0,1,0),i.normalDir)));
                float3 diffuseColor = node_6833;
                float3 diffuse = directDiffuse * diffuseColor;
////// Emissive:
                float3 emissive = node_6833;
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
