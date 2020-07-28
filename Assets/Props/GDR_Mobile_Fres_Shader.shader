// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: commented out 'float4 unity_LightmapST', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_Lightmap', a built-in variable
// Upgrade NOTE: commented out 'sampler2D unity_LightmapInd', a built-in variable
// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D
// Upgrade NOTE: replaced tex2D unity_LightmapInd with UNITY_SAMPLE_TEX2D_SAMPLER

// Shader created with Shader Forge Beta 0.17 
// Shader Forge (c) Joachim 'Acegikmo' Holmer
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.17;sub:START;pass:START;ps:lgpr:1,nrmq:1,limd:1,blpr:0,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:True,uamb:True,mssp:True,ufog:True,aust:True,igpj:False,qofs:0,lico:1,qpre:1,flbk:,rntp:1,lmpd:True,lprd:False,enco:False,frtr:True,vitr:True,dbil:True,rmgx:True,hqsc:True,hqlp:True,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300;n:type:ShaderForge.SFN_Final,id:1,x:31749,y:32842|diff-2263-OUT,spec-1956-OUT,gloss-1230-OUT,normal-74-RGB,amspl-1846-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33567,y:32346,ptlb:Diff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9,x:33790,y:32162,ptlb:A0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:10,x:33267,y:32143|A-64-OUT,B-2-RGB;n:type:ShaderForge.SFN_ValueProperty,id:30,x:33684,y:32105,ptlb:AO_Strenth,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:64,x:33462,y:32132|A-30-OUT,B-9-RGB;n:type:ShaderForge.SFN_Tex2d,id:74,x:32387,y:33248,ptlb:Normals_Global,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:1228,x:33511,y:32696,ptlb:Spec_Value,min:0,cur:0.7293234,max:1.5;n:type:ShaderForge.SFN_Multiply,id:1230,x:33120,y:32836|A-1233-OUT,B-1231-OUT;n:type:ShaderForge.SFN_Power,id:1231,x:33310,y:32956|VAL-9-B,EXP-1232-OUT;n:type:ShaderForge.SFN_Vector1,id:1232,x:33601,y:33014,v1:1.8;n:type:ShaderForge.SFN_Slider,id:1233,x:33310,y:32807,ptlb:Eccentricty,min:0,cur:0.3,max:3;n:type:ShaderForge.SFN_Cubemap,id:1424,x:33468,y:33273,ptlb:Cubemap,cube:a596436b21c6d484bb9b3b6385e3e666,pvfc:0;n:type:ShaderForge.SFN_Multiply,id:1425,x:33214,y:33161|A-1428-OUT,B-1424-RGB;n:type:ShaderForge.SFN_Slider,id:1428,x:33389,y:33161,ptlb:CubeMap_Strenth,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Color,id:1441,x:33249,y:31956,ptlb:Tint,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1442,x:33022,y:32263|A-1441-RGB,B-10-OUT;n:type:ShaderForge.SFN_Multiply,id:1444,x:33045,y:32640|A-1447-OUT,B-1228-OUT;n:type:ShaderForge.SFN_Slider,id:1446,x:33804,y:32604,ptlb:Desat_Spec_Vale,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Desaturate,id:1447,x:33329,y:32491|COL-2-B,DES-1446-OUT;n:type:ShaderForge.SFN_Add,id:1642,x:33173,y:33456|A-1643-OUT,B-1648-OUT;n:type:ShaderForge.SFN_Multiply,id:1643,x:33383,y:33456|A-1644-OUT,B-1647-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1644,x:33587,y:33456,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1646-OUT;n:type:ShaderForge.SFN_NormalVector,id:1646,x:33777,y:33466,pt:False;n:type:ShaderForge.SFN_Vector1,id:1647,x:33587,y:33605,v1:0.4;n:type:ShaderForge.SFN_OneMinus,id:1648,x:33359,y:33598|IN-1647-OUT;n:type:ShaderForge.SFN_Multiply,id:1846,x:32323,y:33075|A-1848-OUT,B-1642-OUT;n:type:ShaderForge.SFN_Lerp,id:1848,x:32494,y:32974|A-1425-OUT,B-1856-OUT,T-1850-OUT;n:type:ShaderForge.SFN_Fresnel,id:1850,x:32714,y:33028|EXP-1854-OUT;n:type:ShaderForge.SFN_Slider,id:1854,x:32910,y:33012,ptlb:Frenel_Value,min:0,cur:1,max:8;n:type:ShaderForge.SFN_Multiply,id:1856,x:32714,y:32884|A-1858-OUT,B-1425-OUT;n:type:ShaderForge.SFN_Vector1,id:1858,x:32897,y:32907,v1:0.7;n:type:ShaderForge.SFN_Multiply,id:1956,x:32671,y:32717|A-1444-OUT,B-1642-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:2197,x:32616,y:32507,a:0.4,b:1|IN-1850-OUT;n:type:ShaderForge.SFN_Multiply,id:2198,x:32416,y:32593|A-2197-OUT,B-1442-OUT;n:type:ShaderForge.SFN_Multiply,id:2263,x:32091,y:33359|A-2198-OUT,B-2273-OUT;n:type:ShaderForge.SFN_Multiply,id:2273,x:32334,y:33436|A-1642-OUT,B-2276-OUT;n:type:ShaderForge.SFN_Vector1,id:2276,x:32522,y:33554,v1:1.5;proporder:30-9-1441-2-74-1228-1233-1428-1424-1854-1446;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _AOStrenth ("AO_Strenth", Float ) = 0.5
        _A0 ("A0", 2D) = "white" {}
        _Tint ("Tint", Color) = (1,1,1,1)
        _Diff ("Diff", 2D) = "white" {}
        _NormalsGlobal ("Normals_Global", 2D) = "bump" {}
        _SpecValue ("Spec_Value", Range(0, 1.5)) = 0
        _Eccentricty ("Eccentricty", Range(0, 3)) = 0
        _CubeMapStrenth ("CubeMap_Strenth", Range(0, 3)) = 0
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
        _FrenelValue ("Frenel_Value", Range(0, 8)) = 0
        _DesatSpecVale ("Desat_Spec_Vale", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // sampler2D unity_Lightmap;
                // float4 unity_LightmapST;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _Diff; uniform float4 _Diff_ST;
            uniform sampler2D _A0; uniform float4 _A0_ST;
            uniform float _AOStrenth;
            uniform sampler2D _NormalsGlobal; uniform float4 _NormalsGlobal_ST;
            uniform float _SpecValue;
            uniform float _Eccentricty;
            uniform samplerCUBE _Cubemap;
            uniform float _CubeMapStrenth;
            uniform float4 _Tint;
            uniform float _DesatSpecVale;
            uniform float _FrenelValue;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD7;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_2301 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_NormalsGlobal,TRANSFORM_TEX(node_2301.rg, _NormalsGlobal))).rgb;
                float3 normalDirection = normalize( mul( normalLocal, tangentTransform ) );
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(UNITY_SAMPLE_TEX2D_SAMPLER(unity_LightmapInd,unity_Lightmap,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap,i.uvLM));
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i)*2;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                #ifndef LIGHTMAP_OFF
                    float3 diffuse = lightmap;
                #else
                    float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.xyz*2;
                #endif
///////// Gloss:
                float4 node_9 = tex2D(_A0,TRANSFORM_TEX(node_2301.rg, _A0));
                float gloss = exp2((_Eccentricty*pow(node_9.b,1.8))*10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 node_1425 = (_CubeMapStrenth*texCUBE(_Cubemap,viewReflectDirection).rgb);
                float node_1850 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FrenelValue);
                float node_1647 = 0.4;
                float node_1642 = ((i.normalDir.g*node_1647)+(1.0 - node_1647));
                float4 node_2 = tex2D(_Diff,TRANSFORM_TEX(node_2301.rg, _Diff));
                float3 specularColor = ((lerp(node_2.b,dot(node_2.b,float3(0.3,0.59,0.11)),_DesatSpecVale)*_SpecValue)*node_1642);
                float3 specularAmb = (lerp(node_1425,(0.7*node_1425),node_1850)*node_1642) * specularColor;
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),gloss) * specularColor + specularAmb;
                float3 finalColor = diffuse * ((lerp(0.4,1,node_1850)*(_Tint.rgb*((_AOStrenth*node_9.rgb)*node_2.rgb)))*(node_1642*1.5)) + specular;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash 
            #pragma target 3.0
            #ifndef LIGHTMAP_OFF
                // sampler2D unity_Lightmap;
                // float4 unity_LightmapST;
                #ifndef DIRLIGHTMAP_OFF
                    // sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _Diff; uniform float4 _Diff_ST;
            uniform sampler2D _A0; uniform float4 _A0_ST;
            uniform float _AOStrenth;
            uniform sampler2D _NormalsGlobal; uniform float4 _NormalsGlobal_ST;
            uniform float _SpecValue;
            uniform float _Eccentricty;
            uniform float4 _Tint;
            uniform float _DesatSpecVale;
            uniform float _FrenelValue;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float4 uv0 : TEXCOORD0;
                float4 uv1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.uv0;
                o.normalDir = mul(float4(v.normal,0), unity_WorldToObject).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float2 node_2302 = i.uv0;
                float3 normalLocal = UnpackNormal(tex2D(_NormalsGlobal,TRANSFORM_TEX(node_2302.rg, _NormalsGlobal))).rgb;
                float3 normalDirection = normalize( mul( normalLocal, tangentTransform ) );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i)*2;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
///////// Gloss:
                float4 node_9 = tex2D(_A0,TRANSFORM_TEX(node_2302.rg, _A0));
                float gloss = exp2((_Eccentricty*pow(node_9.b,1.8))*10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float4 node_2 = tex2D(_Diff,TRANSFORM_TEX(node_2302.rg, _Diff));
                float node_1647 = 0.4;
                float node_1642 = ((i.normalDir.g*node_1647)+(1.0 - node_1647));
                float3 specularColor = ((lerp(node_2.b,dot(node_2.b,float3(0.3,0.59,0.11)),_DesatSpecVale)*_SpecValue)*node_1642);
                float3 specular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),gloss) * specularColor;
                float node_1850 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FrenelValue);
                float3 finalColor = diffuse * ((lerp(0.4,1,node_1850)*(_Tint.rgb*((_AOStrenth*node_9.rgb)*node_2.rgb)))*(node_1642*1.5)) + specular;
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
