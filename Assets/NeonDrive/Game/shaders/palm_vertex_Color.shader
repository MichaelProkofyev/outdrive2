// Shader created with Shader Forge v1.10 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.10;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,nrsp:0,limd:1,spmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:2,dpts:2,wrdp:True,dith:0,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:6044,x:35031,y:31566,varname:node_6044,prsc:2|diff-9749-OUT,spec-5833-OUT,gloss-9109-OUT,emission-9632-OUT,voffset-463-OUT;n:type:ShaderForge.SFN_VertexColor,id:1195,x:32454,y:32847,varname:node_1195,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4579,x:32454,y:32617,ptovrint:False,ptlb:grid,ptin:_grid,varname:_grid,prsc:2,tex:776b64a756dd2614daf519f570d2d24a,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4556,x:34278,y:32210,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:6697,x:32700,y:32603,varname:node_6697,prsc:2|A-4601-OUT,B-4556-RGB,T-4579-R;n:type:ShaderForge.SFN_Vector1,id:4601,x:32609,y:32715,varname:node_4601,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9596,x:33061,y:32766,varname:node_9596,prsc:2|A-6697-OUT,B-1195-RGB,C-8215-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8215,x:32887,y:33042,ptovrint:False,ptlb:power,ptin:_power,varname:_power,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Desaturate,id:9632,x:34323,y:32053,varname:node_9632,prsc:2|COL-9596-OUT,DES-3591-OUT;n:type:ShaderForge.SFN_ValueProperty,id:958,x:32904,y:32582,ptovrint:False,ptlb:saturate 1,ptin:_saturate1,varname:_saturate1,prsc:2,glob:False,v1:-1;n:type:ShaderForge.SFN_ValueProperty,id:2122,x:32904,y:32422,ptovrint:False,ptlb:saturate 2,ptin:_saturate2,varname:_saturate2,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Time,id:258,x:32715,y:32198,varname:node_258,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4374,x:32901,y:32042,varname:node_4374,prsc:2|A-258-T,B-3808-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3808,x:32885,y:32301,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Sin,id:5110,x:33919,y:32040,varname:node_5110,prsc:2|IN-4374-OUT;n:type:ShaderForge.SFN_Lerp,id:5330,x:33996,y:32245,varname:node_5330,prsc:2|A-2122-OUT,B-958-OUT,T-5262-OUT;n:type:ShaderForge.SFN_Desaturate,id:9749,x:33192,y:32539,varname:node_9749,prsc:2|COL-6855-OUT,DES-5330-OUT;n:type:ShaderForge.SFN_Slider,id:5833,x:33432,y:32307,ptovrint:False,ptlb:spec,ptin:_spec,varname:_spec,prsc:2,min:0,cur:0.5555556,max:1;n:type:ShaderForge.SFN_Slider,id:9109,x:33469,y:32447,ptovrint:False,ptlb:gloss,ptin:_gloss,varname:_gloss,prsc:2,min:0,cur:0.2222222,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:3269,x:33456,y:32050,ptovrint:False,ptlb:world mask,ptin:_worldmask,varname:_worldmask,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7817,x:33858,y:31752,varname:_node_7817,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|UVIN-7937-OUT,TEX-3269-TEX;n:type:ShaderForge.SFN_Tex2d,id:3563,x:33858,y:31919,varname:_node_4856,prsc:2,tex:5949bf34f66f64743a07ab8fc66d24aa,ntxv:0,isnm:False|UVIN-6567-OUT,TEX-3269-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:1635,x:32996,y:31472,varname:node_1635,prsc:2;n:type:ShaderForge.SFN_Append,id:8922,x:33194,y:31639,varname:node_8922,prsc:2|A-1635-X,B-1635-Z;n:type:ShaderForge.SFN_Divide,id:7937,x:33601,y:31683,varname:node_7937,prsc:2|A-6050-OUT,B-818-OUT;n:type:ShaderForge.SFN_Divide,id:6567,x:33601,y:31865,varname:node_6567,prsc:2|A-8922-OUT,B-9356-OUT;n:type:ShaderForge.SFN_ValueProperty,id:818,x:33088,y:31850,ptovrint:False,ptlb:world mask scale,ptin:_worldmaskscale,varname:_worldmaskscale,prsc:2,glob:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:2427,x:33288,y:31956,varname:node_2427,prsc:2|A-818-OUT,B-4884-OUT;n:type:ShaderForge.SFN_Add,id:4884,x:33333,y:31744,varname:node_4884,prsc:2|A-818-OUT,B-818-OUT;n:type:ShaderForge.SFN_Blend,id:5262,x:33985,y:31461,varname:node_5262,prsc:2,blmd:10,clmp:True|SRC-7817-R,DST-3563-R;n:type:ShaderForge.SFN_Add,id:6050,x:33387,y:31559,varname:node_6050,prsc:2|A-8922-OUT,B-4374-OUT;n:type:ShaderForge.SFN_Add,id:9356,x:33434,y:31899,varname:node_9356,prsc:2|A-4374-OUT,B-2427-OUT;n:type:ShaderForge.SFN_Blend,id:7084,x:34061,y:31637,varname:node_7084,prsc:2,blmd:19,clmp:True|SRC-5262-OUT,DST-3563-G;n:type:ShaderForge.SFN_Blend,id:3591,x:34195,y:31870,varname:node_3591,prsc:2,blmd:10,clmp:True|SRC-7084-OUT,DST-5110-OUT;n:type:ShaderForge.SFN_Vector1,id:3543,x:34437,y:31922,varname:node_3543,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2791,x:34407,y:31533,varname:node_2791,prsc:2|A-5262-OUT,B-3563-B;n:type:ShaderForge.SFN_Append,id:3075,x:34669,y:31787,varname:node_3075,prsc:2|A-2791-OUT,B-3543-OUT,C-7084-OUT;n:type:ShaderForge.SFN_Abs,id:7593,x:34629,y:31579,varname:node_7593,prsc:2|IN-3075-OUT;n:type:ShaderForge.SFN_Slider,id:4612,x:34615,y:32007,ptovrint:False,ptlb:wind power,ptin:_windpower,varname:_windpower,prsc:2,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Multiply,id:463,x:34883,y:31559,varname:node_463,prsc:2|A-7593-OUT,B-4612-OUT;n:type:ShaderForge.SFN_Multiply,id:6855,x:32803,y:32750,varname:node_6855,prsc:2|A-1195-RGB,B-8573-OUT;n:type:ShaderForge.SFN_Slider,id:8573,x:32436,y:33052,ptovrint:False,ptlb:base power,ptin:_basepower,varname:_basepower,prsc:2,min:0,cur:0.6239321,max:1;proporder:4579-4556-8215-958-2122-3808-5833-9109-3269-818-4612-8573;pass:END;sub:END;*/

Shader "Almgp/palm_vertex_Color" {
    Properties {
        _grid ("grid", 2D) = "white" {}
        _color ("color", Color) = (0.5,0.5,0.5,1)
        _power ("power", Float ) = 2
        _saturate1 ("saturate 1", Float ) = -1
        _saturate2 ("saturate 2", Float ) = 1
        _speed ("speed", Float ) = 1
        _spec ("spec", Range(0, 1)) = 0.5555556
        _gloss ("gloss", Range(0, 1)) = 0.2222222
        _worldmask ("world mask", 2D) = "white" {}
        _worldmaskscale ("world mask scale", Float ) = 2
        _windpower ("wind power", Range(0, 10)) = 0
        _basepower ("base power", Range(0, 1)) = 0.6239321
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _grid; uniform float4 _grid_ST;
            uniform float4 _color;
            uniform float _power;
            uniform float _saturate1;
            uniform float _saturate2;
            uniform float _speed;
            uniform float _spec;
            uniform float _gloss;
            uniform sampler2D _worldmask; uniform float4 _worldmask_ST;
            uniform float _worldmaskscale;
            uniform float _windpower;
            uniform float _basepower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_8922 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_7937, _worldmask),0.0,0));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_6567, _worldmask),0.0,0));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float node_7084 = saturate((_node_4856.g-node_5262));
                v.vertex.xyz += (abs(float3((node_5262*_node_4856.b),1.0,node_7084))*_windpower);
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
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_spec,_spec,_spec);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_8922 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2D(_worldmask,TRANSFORM_TEX(node_7937, _worldmask));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2D(_worldmask,TRANSFORM_TEX(node_6567, _worldmask));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float3 diffuseColor = lerp((i.vertexColor.rgb*_basepower),dot((i.vertexColor.rgb*_basepower),float3(0.3,0.59,0.11)),lerp(_saturate2,_saturate1,node_5262));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float node_4601 = 0.0;
                float4 _grid_var = tex2D(_grid,TRANSFORM_TEX(i.uv0, _grid));
                float node_7084 = saturate((_node_4856.g-node_5262));
                float3 emissive = lerp((lerp(float3(node_4601,node_4601,node_4601),_color.rgb,_grid_var.r)*i.vertexColor.rgb*_power),dot((lerp(float3(node_4601,node_4601,node_4601),_color.rgb,_grid_var.r)*i.vertexColor.rgb*_power),float3(0.3,0.59,0.11)),saturate(( sin(node_4374) > 0.5 ? (1.0-(1.0-2.0*(sin(node_4374)-0.5))*(1.0-node_7084)) : (2.0*sin(node_4374)*node_7084) )));
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _grid; uniform float4 _grid_ST;
            uniform float4 _color;
            uniform float _power;
            uniform float _saturate1;
            uniform float _saturate2;
            uniform float _speed;
            uniform float _spec;
            uniform float _gloss;
            uniform sampler2D _worldmask; uniform float4 _worldmask_ST;
            uniform float _worldmaskscale;
            uniform float _windpower;
            uniform float _basepower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_8922 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_7937, _worldmask),0.0,0));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_6567, _worldmask),0.0,0));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float node_7084 = saturate((_node_4856.g-node_5262));
                v.vertex.xyz += (abs(float3((node_5262*_node_4856.b),1.0,node_7084))*_windpower);
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
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_spec,_spec,_spec);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_8922 = float2(i.posWorld.r,i.posWorld.b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2D(_worldmask,TRANSFORM_TEX(node_7937, _worldmask));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2D(_worldmask,TRANSFORM_TEX(node_6567, _worldmask));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float3 diffuseColor = lerp((i.vertexColor.rgb*_basepower),dot((i.vertexColor.rgb*_basepower),float3(0.3,0.59,0.11)),lerp(_saturate2,_saturate1,node_5262));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _speed;
            uniform sampler2D _worldmask; uniform float4 _worldmask_ST;
            uniform float _worldmaskscale;
            uniform float _windpower;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float4 posWorld : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_8922 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_7937, _worldmask),0.0,0));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_6567, _worldmask),0.0,0));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float node_7084 = saturate((_node_4856.g-node_5262));
                v.vertex.xyz += (abs(float3((node_5262*_node_4856.b),1.0,node_7084))*_windpower);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
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
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _speed;
            uniform sampler2D _worldmask; uniform float4 _worldmask_ST;
            uniform float _worldmaskscale;
            uniform float _windpower;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float2 node_8922 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).b);
                float4 node_258 = _Time + _TimeEditor;
                float node_4374 = (node_258.g*_speed);
                float2 node_7937 = ((node_8922+node_4374)/_worldmaskscale);
                float4 _node_7817 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_7937, _worldmask),0.0,0));
                float2 node_6567 = (node_8922/(node_4374+(_worldmaskscale*(_worldmaskscale+_worldmaskscale))));
                float4 _node_4856 = tex2Dlod(_worldmask,float4(TRANSFORM_TEX(node_6567, _worldmask),0.0,0));
                float node_5262 = saturate(( _node_4856.r > 0.5 ? (1.0-(1.0-2.0*(_node_4856.r-0.5))*(1.0-_node_7817.r)) : (2.0*_node_4856.r*_node_7817.r) ));
                float node_7084 = saturate((_node_4856.g-node_5262));
                v.vertex.xyz += (abs(float3((node_5262*_node_4856.b),1.0,node_7084))*_windpower);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
/////// Vectors:
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
