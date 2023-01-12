// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-694-OUT,olwid-4678-OUT,olcol-3043-RGB;n:type:ShaderForge.SFN_Vector1,id:4678,x:32471,y:33065,varname:node_4678,prsc:2,v1:0.02;n:type:ShaderForge.SFN_Color,id:3043,x:32454,y:33164,ptovrint:False,ptlb:StripCol,ptin:_StripCol,varname:node_3043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03155928,c2:0.08490568,c3:0.044436,c4:1;n:type:ShaderForge.SFN_LightVector,id:6665,x:30716,y:33002,varname:node_6665,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1315,x:30716,y:32847,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:9267,x:30943,y:32897,varname:node_9267,prsc:2,dt:0|A-1315-OUT,B-6665-OUT;n:type:ShaderForge.SFN_Vector1,id:5240,x:31343,y:33037,varname:node_5240,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2145,x:31145,y:32897,varname:node_2145,prsc:2|A-9267-OUT,B-5240-OUT;n:type:ShaderForge.SFN_Add,id:5373,x:31337,y:32897,varname:node_5373,prsc:2|A-2145-OUT,B-5240-OUT;n:type:ShaderForge.SFN_Append,id:5638,x:31568,y:32897,varname:node_5638,prsc:2|A-5373-OUT,B-5240-OUT;n:type:ShaderForge.SFN_Tex2d,id:2695,x:31884,y:32889,ptovrint:False,ptlb:TexCol,ptin:_TexCol,varname:node_2695,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c010479d11d7c6e429721511d8a9be82,ntxv:0,isnm:False|UVIN-5638-OUT;n:type:ShaderForge.SFN_Step,id:4762,x:31630,y:33164,varname:node_4762,prsc:2|A-5957-OUT,B-5373-OUT;n:type:ShaderForge.SFN_Slider,id:5957,x:31265,y:33244,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_5957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.9,cur:0.945,max:0.95;n:type:ShaderForge.SFN_Lerp,id:6129,x:32199,y:32933,varname:node_6129,prsc:2|A-2695-RGB,B-4885-RGB,T-4762-OUT;n:type:ShaderForge.SFN_Color,id:4885,x:31923,y:33080,ptovrint:False,ptlb:SpecularCol,ptin:_SpecularCol,varname:node_4885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7723745,c2:0.9056604,c3:0.775496,c4:1;n:type:ShaderForge.SFN_Fresnel,id:6642,x:31906,y:33352,varname:node_6642,prsc:2|EXP-2867-OUT;n:type:ShaderForge.SFN_Slider,id:2867,x:31551,y:33403,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_2867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5,max:10;n:type:ShaderForge.SFN_Color,id:5353,x:31708,y:33502,ptovrint:False,ptlb:FresnelCol,ptin:_FresnelCol,varname:node_5353,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7752581,c2:0.9622642,c3:0.7909687,c4:1;n:type:ShaderForge.SFN_Multiply,id:3111,x:32062,y:33450,varname:node_3111,prsc:2|A-6642-OUT,B-5353-RGB;n:type:ShaderForge.SFN_Blend,id:694,x:32239,y:33127,varname:node_694,prsc:2,blmd:6,clmp:True|SRC-6129-OUT,DST-3111-OUT;proporder:3043-2695-5957-4885-2867-5353;pass:END;sub:END;*/

Shader "hw1/jade" {
    Properties {
        _StripCol ("StripCol", Color) = (0.03155928,0.08490568,0.044436,1)
        _TexCol ("TexCol", 2D) = "white" {}
        _Specular ("Specular", Range(0.9, 0.95)) = 0.945
        _SpecularCol ("SpecularCol", Color) = (0.7723745,0.9056604,0.775496,1)
        _Fresnel ("Fresnel", Range(1, 10)) = 5
        _FresnelCol ("FresnelCol", Color) = (0.7752581,0.9622642,0.7909687,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _StripCol)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.02,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _StripCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _StripCol );
                return fixed4(_StripCol_var.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _TexCol; uniform float4 _TexCol_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Specular)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelCol)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_5240 = 0.5;
                float node_5373 = ((dot(i.normalDir,lightDirection)*node_5240)+node_5240);
                float2 node_5638 = float2(node_5373,node_5240);
                float4 _TexCol_var = tex2D(_TexCol,TRANSFORM_TEX(node_5638, _TexCol));
                float4 _SpecularCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularCol );
                float _Specular_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Specular );
                float _Fresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel );
                float4 _FresnelCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelCol );
                float3 emissive = saturate((1.0-(1.0-lerp(_TexCol_var.rgb,_SpecularCol_var.rgb,step(_Specular_var,node_5373)))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_var)*_FresnelCol_var.rgb))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _TexCol; uniform float4 _TexCol_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Specular)
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelCol)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
