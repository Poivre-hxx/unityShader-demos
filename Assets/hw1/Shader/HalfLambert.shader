// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33289,y:32704,varname:node_3138,prsc:2|emission-5857-RGB;n:type:ShaderForge.SFN_LightVector,id:8675,x:32255,y:33003,varname:node_8675,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1187,x:32226,y:32827,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:2219,x:32403,y:32796,varname:node_2219,prsc:2,dt:0|A-1187-OUT,B-8675-OUT;n:type:ShaderForge.SFN_Multiply,id:9753,x:32636,y:32969,varname:node_9753,prsc:2|A-2219-OUT,B-6680-OUT;n:type:ShaderForge.SFN_Vector1,id:6680,x:32455,y:33003,varname:node_6680,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:7609,x:32805,y:32969,varname:node_7609,prsc:2|A-9753-OUT,B-1778-OUT;n:type:ShaderForge.SFN_Vector1,id:1778,x:32636,y:33126,varname:node_1778,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:7369,x:32569,y:33242,varname:node_7369,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Append,id:31,x:32774,y:33242,varname:node_31,prsc:2|A-7609-OUT,B-7369-OUT;n:type:ShaderForge.SFN_Tex2d,id:5857,x:32968,y:33258,ptovrint:False,ptlb:node_5857,ptin:_node_5857,varname:node_5857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6edd2f82ed20ba04194d227a91dbb8f1,ntxv:0,isnm:False|UVIN-31-OUT;proporder:5857;pass:END;sub:END;*/

Shader "Lambert/HalfLambert" {
    Properties {
        _node_5857 ("node_5857", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_5857; uniform float4 _node_5857_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float2 node_31 = float2(((dot(i.normalDir,lightDirection)*0.5)+0.5),0.2);
                float4 _node_5857_var = tex2D(_node_5857,TRANSFORM_TEX(node_31, _node_5857));
                float3 emissive = _node_5857_var.rgb;
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_5857; uniform float4 _node_5857_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
