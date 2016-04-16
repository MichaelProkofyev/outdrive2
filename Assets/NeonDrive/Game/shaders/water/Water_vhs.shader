// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:0,nrsp:0,limd:2,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:True,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:0,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.3864679,fgcg:0.3338019,fgcb:0.4632353,fgca:1,fgde:1,fgrn:0,fgrf:2000,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6997,x:35908,y:32248,varname:node_6997,prsc:2|diff-9463-OUT,spec-9586-RGB,gloss-5156-OUT,normal-282-OUT,amdfl-3792-OUT,alpha-8904-OUT;n:type:ShaderForge.SFN_Tex2d,id:4035,x:32578,y:32696,varname:_node_4035,prsc:2,tex:682710fb95aae5e49b9912508998d8bf,ntxv:3,isnm:True|UVIN-6123-OUT,TEX-4993-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:4095,x:31658,y:32721,varname:node_4095,prsc:2;n:type:ShaderForge.SFN_Append,id:1022,x:31900,y:32733,varname:node_1022,prsc:2|A-4095-X,B-4095-Z;n:type:ShaderForge.SFN_ValueProperty,id:785,x:31999,y:32960,ptovrint:False,ptlb:tile,ptin:_tile,varname:_tile,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:8017,x:32184,y:32714,varname:node_8017,prsc:2|A-1022-OUT,B-785-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4993,x:32468,y:33323,ptovrint:False,ptlb:water normal,ptin:_waternormal,varname:_waternormal,tex:682710fb95aae5e49b9912508998d8bf,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1298,x:32578,y:32868,varname:_node_2554,prsc:2,tex:682710fb95aae5e49b9912508998d8bf,ntxv:3,isnm:True|UVIN-1450-OUT,TEX-4993-TEX;n:type:ShaderForge.SFN_ValueProperty,id:2027,x:32015,y:33114,ptovrint:False,ptlb:tile_2,ptin:_tile_2,varname:_tile_2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Divide,id:3474,x:32200,y:32868,varname:node_3474,prsc:2|A-1022-OUT,B-2027-OUT;n:type:ShaderForge.SFN_Time,id:8177,x:31636,y:33409,varname:node_8177,prsc:2;n:type:ShaderForge.SFN_Add,id:6123,x:32383,y:32714,varname:node_6123,prsc:2|A-8017-OUT,B-6601-OUT;n:type:ShaderForge.SFN_Multiply,id:6601,x:32149,y:33281,varname:node_6601,prsc:2|A-8177-TSL,B-5552-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5552,x:31980,y:33300,ptovrint:False,ptlb:speed 1,ptin:_speed1,varname:_speed1,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2502,x:32171,y:33451,varname:node_2502,prsc:2|A-8177-TSL,B-9140-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9140,x:32006,y:33495,ptovrint:False,ptlb:speed 2,ptin:_speed2,varname:_speed2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Add,id:1450,x:32383,y:32868,varname:node_1450,prsc:2|A-3474-OUT,B-2502-OUT;n:type:ShaderForge.SFN_NormalBlend,id:282,x:34595,y:32589,varname:node_282,prsc:2|BSE-4035-RGB,DTL-1298-RGB;n:type:ShaderForge.SFN_Fresnel,id:128,x:32981,y:32973,varname:node_128,prsc:2|NRM-1697-OUT,EXP-2243-OUT;n:type:ShaderForge.SFN_NormalVector,id:1697,x:32644,y:33146,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:2243,x:32526,y:33367,ptovrint:False,ptlb:f Exp,ptin:_fExp,varname:_fExp,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:5156,x:34109,y:32860,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0.9963911,max:1;n:type:ShaderForge.SFN_Color,id:9414,x:33014,y:32600,ptovrint:False,ptlb:water color,ptin:_watercolor,varname:_watercolor,prsc:2,glob:False,c1:0.0291955,c2:0.2647059,c3:0.2647059,c4:1;n:type:ShaderForge.SFN_Color,id:9586,x:34385,y:32146,ptovrint:False,ptlb:spec color,ptin:_speccolor,varname:_speccolor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9645,x:33242,y:32910,varname:node_9645,prsc:2|A-128-OUT,B-128-OUT;n:type:ShaderForge.SFN_Color,id:6780,x:34337,y:32474,ptovrint:False,ptlb:fresnel color,ptin:_fresnelcolor,varname:_fresnelcolor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:4454,x:33421,y:32910,varname:node_4454,prsc:2|A-2020-OUT,B-6780-RGB,T-9645-OUT;n:type:ShaderForge.SFN_Vector1,id:2020,x:33293,y:33051,varname:node_2020,prsc:2,v1:0;n:type:ShaderForge.SFN_Blend,id:7149,x:33450,y:32561,varname:node_7149,prsc:2,blmd:10,clmp:True|SRC-9414-RGB,DST-4454-OUT;n:type:ShaderForge.SFN_Depth,id:1936,x:33763,y:33235,varname:node_1936,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8829,x:34171,y:33209,varname:node_8829,prsc:2|A-7908-OUT,B-1936-OUT;n:type:ShaderForge.SFN_SceneDepth,id:7908,x:33886,y:33002,varname:node_7908,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8904,x:34548,y:32897,varname:node_8904,prsc:2,v1:1;n:type:ShaderForge.SFN_Add,id:9563,x:35099,y:32207,varname:node_9563,prsc:2|A-7149-OUT,B-5713-OUT;n:type:ShaderForge.SFN_Clamp01,id:9361,x:34808,y:33365,varname:node_9361,prsc:2|IN-664-OUT;n:type:ShaderForge.SFN_OneMinus,id:664,x:34561,y:33422,varname:node_664,prsc:2|IN-8864-OUT;n:type:ShaderForge.SFN_Tex2d,id:2547,x:35035,y:32867,ptovrint:False,ptlb:graf,ptin:_graf,varname:_graf,prsc:2,tex:8d1216811491bf3458529526c160d140,ntxv:0,isnm:False|UVIN-1916-OUT;n:type:ShaderForge.SFN_Append,id:1916,x:34854,y:33061,varname:node_1916,prsc:2|A-9361-OUT,B-9361-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8864,x:34254,y:33476,varname:node_8864,prsc:2|IN-8829-OUT,IMIN-8800-OUT,IMAX-2469-OUT,OMIN-1308-OUT,OMAX-902-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8800,x:33981,y:33458,ptovrint:False,ptlb:iMin,ptin:_iMin,varname:_iMin,prsc:2,glob:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:2469,x:33981,y:33571,ptovrint:False,ptlb:iMax,ptin:_iMax,varname:_iMax,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:1308,x:33770,y:33464,ptovrint:False,ptlb:oMin,ptin:_oMin,varname:_oMin,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:902,x:33753,y:33591,ptovrint:False,ptlb:oMax,ptin:_oMax,varname:_oMax,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:3792,x:35559,y:32731,varname:node_3792,prsc:2|A-4908-OUT,B-4902-RGB,T-9361-OUT;n:type:ShaderForge.SFN_Color,id:4902,x:35090,y:33101,ptovrint:False,ptlb:deph color,ptin:_dephcolor,varname:_dephcolor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:124,x:35290,y:32300,varname:node_124,prsc:2|A-9563-OUT,B-3792-OUT;n:type:ShaderForge.SFN_Color,id:9295,x:35365,y:33057,ptovrint:False,ptlb:bitch color,ptin:_bitchcolor,varname:_bitchcolor,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:5713,x:35141,y:32607,varname:node_5713,prsc:2|A-9295-RGB,B-2547-RGB;n:type:ShaderForge.SFN_Multiply,id:9463,x:35610,y:32289,varname:node_9463,prsc:2|A-124-OUT,B-2888-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2888,x:35547,y:32527,ptovrint:False,ptlb:final water color power,ptin:_finalwatercolorpower,varname:_finalwatercolorpower,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4908,x:35677,y:33050,varname:node_4908,prsc:2|A-9425-OUT,B-9295-RGB;n:type:ShaderForge.SFN_ValueProperty,id:9425,x:35658,y:33286,ptovrint:False,ptlb:bithc power,ptin:_bithcpower,varname:_bithcpower,prsc:2,glob:False,v1:1;proporder:785-4993-2027-5552-9140-5156-9414-9586-2243-6780-2547-2469-8800-1308-902-4902-9295-2888-9425;pass:END;sub:END;*/

Shader "Almgp/vhsrace/water/Water_vhs" {
    Properties {
        _tile ("tile", Float ) = 1
        _waternormal ("water normal", 2D) = "bump" {}
        _tile_2 ("tile_2", Float ) = 1
        _speed1 ("speed 1", Float ) = 1
        _speed2 ("speed 2", Float ) = 1
        _gloss ("gloss", Range(0, 1)) = 0.9963911
        _watercolor ("water color", Color) = (0.0291955,0.2647059,0.2647059,1)
        _speccolor ("spec color", Color) = (0.5,0.5,0.5,1)
        _fExp ("f Exp", Range(0, 10)) = 0
        _fresnelcolor ("fresnel color", Color) = (0.5,0.5,0.5,1)
        _graf ("graf", 2D) = "white" {}
        _iMax ("iMax", Float ) = 1
        _iMin ("iMin", Float ) = -1
        _oMin ("oMin", Float ) = 0
        _oMax ("oMax", Float ) = 1
        _dephcolor ("deph color", Color) = (0.5,0.5,0.5,1)
        _bitchcolor ("bitch color", Color) = (0.5,0.5,0.5,1)
        _finalwatercolorpower ("final water color power", Float ) = 1
        _bithcpower ("bithc power", Float ) = 1
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _tile;
            uniform sampler2D _waternormal; uniform float4 _waternormal_ST;
            uniform float _tile_2;
            uniform float _speed1;
            uniform float _speed2;
            uniform float _fExp;
            uniform float _gloss;
            uniform float4 _watercolor;
            uniform float4 _speccolor;
            uniform float4 _fresnelcolor;
            uniform sampler2D _graf; uniform float4 _graf_ST;
            uniform float _iMin;
            uniform float _iMax;
            uniform float _oMin;
            uniform float _oMax;
            uniform float4 _dephcolor;
            uniform float4 _bitchcolor;
            uniform float _finalwatercolorpower;
            uniform float _bithcpower;
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
                float4 projPos : TEXCOORD4;
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
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1022 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_8177 = _Time + _TimeEditor;
                float2 node_6123 = ((node_1022/_tile)+(node_8177.r*_speed1));
                float3 _node_4035 = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_6123, _waternormal)));
                float2 node_1450 = ((node_1022/_tile_2)+(node_8177.r*_speed2));
                float3 _node_2554 = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_1450, _waternormal)));
                float3 node_282_nrm_base = _node_4035.rgb + float3(0,0,1);
                float3 node_282_nrm_detail = _node_2554.rgb * float3(-1,-1,1);
                float3 node_282_nrm_combined = node_282_nrm_base*dot(node_282_nrm_base, node_282_nrm_detail)/node_282_nrm_base.z - node_282_nrm_detail;
                float3 node_282 = node_282_nrm_combined;
                float3 normalLocal = node_282;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
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
                float3 specularColor = _speccolor.rgb;
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(reflect(-lightDirection, normalDirection),viewDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_9361 = saturate((1.0 - (_oMin + ( ((sceneZ-partZ) - _iMin) * (_oMax - _oMin) ) / (_iMax - _iMin))));
                float3 node_3792 = lerp((_bithcpower*_bitchcolor.rgb),_dephcolor.rgb,node_9361);
                indirectDiffuse += node_3792; // Diffuse Ambient Light
                float node_2020 = 0.0;
                float node_128 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_fExp);
                float2 node_1916 = float2(node_9361,node_9361);
                float4 _graf_var = tex2D(_graf,TRANSFORM_TEX(node_1916, _graf));
                float3 diffuseColor = (((saturate(( lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128)) > 0.5 ? (1.0-(1.0-2.0*(lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128))-0.5))*(1.0-_watercolor.rgb)) : (2.0*lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128))*_watercolor.rgb) ))+(_bitchcolor.rgb+_graf_var.rgb))*node_3792)*_finalwatercolorpower);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1.0);
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
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _tile;
            uniform sampler2D _waternormal; uniform float4 _waternormal_ST;
            uniform float _tile_2;
            uniform float _speed1;
            uniform float _speed2;
            uniform float _fExp;
            uniform float _gloss;
            uniform float4 _watercolor;
            uniform float4 _speccolor;
            uniform float4 _fresnelcolor;
            uniform sampler2D _graf; uniform float4 _graf_ST;
            uniform float _iMin;
            uniform float _iMax;
            uniform float _oMin;
            uniform float _oMax;
            uniform float4 _dephcolor;
            uniform float4 _bitchcolor;
            uniform float _finalwatercolorpower;
            uniform float _bithcpower;
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
                float4 projPos : TEXCOORD4;
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
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_1022 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_8177 = _Time + _TimeEditor;
                float2 node_6123 = ((node_1022/_tile)+(node_8177.r*_speed1));
                float3 _node_4035 = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_6123, _waternormal)));
                float2 node_1450 = ((node_1022/_tile_2)+(node_8177.r*_speed2));
                float3 _node_2554 = UnpackNormal(tex2D(_waternormal,TRANSFORM_TEX(node_1450, _waternormal)));
                float3 node_282_nrm_base = _node_4035.rgb + float3(0,0,1);
                float3 node_282_nrm_detail = _node_2554.rgb * float3(-1,-1,1);
                float3 node_282_nrm_combined = node_282_nrm_base*dot(node_282_nrm_base, node_282_nrm_detail)/node_282_nrm_base.z - node_282_nrm_detail;
                float3 node_282 = node_282_nrm_combined;
                float3 normalLocal = node_282;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = _speccolor.rgb;
                float3 directSpecular = attenColor * pow(max(0,dot(reflect(-lightDirection, normalDirection),viewDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_2020 = 0.0;
                float node_128 = pow(1.0-max(0,dot(i.normalDir, viewDirection)),_fExp);
                float node_9361 = saturate((1.0 - (_oMin + ( ((sceneZ-partZ) - _iMin) * (_oMax - _oMin) ) / (_iMax - _iMin))));
                float2 node_1916 = float2(node_9361,node_9361);
                float4 _graf_var = tex2D(_graf,TRANSFORM_TEX(node_1916, _graf));
                float3 node_3792 = lerp((_bithcpower*_bitchcolor.rgb),_dephcolor.rgb,node_9361);
                float3 diffuseColor = (((saturate(( lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128)) > 0.5 ? (1.0-(1.0-2.0*(lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128))-0.5))*(1.0-_watercolor.rgb)) : (2.0*lerp(float3(node_2020,node_2020,node_2020),_fresnelcolor.rgb,(node_128*node_128))*_watercolor.rgb) ))+(_bitchcolor.rgb+_graf_var.rgb))*node_3792)*_finalwatercolorpower);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1.0,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
