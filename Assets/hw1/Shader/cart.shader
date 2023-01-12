// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-3864-OUT,olwid-9400-OUT,olcol-9263-RGB;n:type:ShaderForge.SFN_Slider,id:9400,x:32324,y:33071,ptovrint:False,ptlb:描边,ptin:_,varname:node_9400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.5;n:type:ShaderForge.SFN_Color,id:9263,x:32417,y:33163,ptovrint:False,ptlb:outlineCol,ptin:_outlineCol,varname:node_9263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1509434,c2:0.144393,c3:0.144393,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2855,x:31249,y:32808,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:635,x:31249,y:32972,varname:node_635,prsc:2;n:type:ShaderForge.SFN_Dot,id:2910,x:31418,y:32899,varname:node_2910,prsc:2,dt:0|A-2855-OUT,B-635-OUT;n:type:ShaderForge.SFN_Vector1,id:8802,x:31418,y:32796,varname:node_8802,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:6906,x:31575,y:32899,varname:node_6906,prsc:2|A-8802-OUT,B-2910-OUT;n:type:ShaderForge.SFN_Add,id:6778,x:31730,y:32899,varname:node_6778,prsc:2|A-8802-OUT,B-6906-OUT;n:type:ShaderForge.SFN_Tex2d,id:6939,x:32014,y:33045,ptovrint:False,ptlb:fillCol,ptin:_fillCol,varname:node_6939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c010479d11d7c6e429721511d8a9be82,ntxv:0,isnm:False|UVIN-2210-OUT;n:type:ShaderForge.SFN_Append,id:2210,x:31918,y:32876,varname:node_2210,prsc:2|A-6778-OUT,B-8802-OUT;n:type:ShaderForge.SFN_ScreenPos,id:40,x:31501,y:32431,varname:node_40,prsc:2,sctp:1;n:type:ShaderForge.SFN_Depth,id:2376,x:31501,y:32600,varname:node_2376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2758,x:31772,y:32485,varname:node_2758,prsc:2|A-40-UVOUT,B-2376-OUT;n:type:ShaderForge.SFN_Tex2d,id:9235,x:32035,y:32483,ptovrint:False,ptlb:lines,ptin:_lines,varname:node_9235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5821f5937475a464f8d27c9c117f111d,ntxv:0,isnm:False|UVIN-2758-OUT;n:type:ShaderForge.SFN_Step,id:5194,x:31623,y:33113,varname:node_5194,prsc:2|A-394-OUT,B-6778-OUT;n:type:ShaderForge.SFN_Vector1,id:394,x:31393,y:33147,varname:node_394,prsc:2,v1:0.95;n:type:ShaderForge.SFN_Lerp,id:4447,x:32051,y:33258,varname:node_4447,prsc:2|A-6939-RGB,B-4342-RGB,T-5194-OUT;n:type:ShaderForge.SFN_Color,id:4342,x:31651,y:33269,ptovrint:False,ptlb:SpecularCol,ptin:_SpecularCol,varname:node_4342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7524564,c2:0.9339623,c3:0.7670653,c4:1;n:type:ShaderForge.SFN_Step,id:1406,x:32035,y:32677,varname:node_1406,prsc:2|A-6778-OUT,B-9002-OUT;n:type:ShaderForge.SFN_Vector1,id:9002,x:31851,y:32633,varname:node_9002,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Lerp,id:6696,x:32324,y:32850,varname:node_6696,prsc:2|A-4447-OUT,B-9235-R,T-1406-OUT;n:type:ShaderForge.SFN_Step,id:5556,x:32252,y:32527,varname:node_5556,prsc:2|A-4906-OUT,B-6778-OUT;n:type:ShaderForge.SFN_Vector1,id:4906,x:32204,y:32424,varname:node_4906,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Lerp,id:3864,x:32500,y:32754,varname:node_3864,prsc:2|A-6696-OUT,B-3648-RGB,T-6247-OUT;n:type:ShaderForge.SFN_Color,id:3648,x:32282,y:32677,ptovrint:False,ptlb:black,ptin:_black,varname:node_3648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Step,id:6247,x:32520,y:32463,varname:node_6247,prsc:2|A-5556-OUT,B-117-OUT;n:type:ShaderForge.SFN_Vector1,id:117,x:32359,y:32436,varname:node_117,prsc:2,v1:0.7;proporder:9400-9263-6939-9235-4342-3648;pass:END;sub:END;*/

Shader "Shader Forge/cart" {
    Properties {
        _ ("描边", Range(0, 0.5)) = 0.1
        _outlineCol ("outlineCol", Color) = (0.1509434,0.144393,0.144393,1)
        _fillCol ("fillCol", 2D) = "white" {}
        _lines ("lines", 2D) = "white" {}
        _SpecularCol ("SpecularCol", Color) = (0.7524564,0.9339623,0.7670653,1)
        _black ("black", Color) = (0,0,0,1)
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
                UNITY_DEFINE_INSTANCED_PROP( float, _)
                UNITY_DEFINE_INSTANCED_PROP( float4, _outlineCol)
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
                float __var = UNITY_ACCESS_INSTANCED_PROP( Props, _ );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*__var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _outlineCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _outlineCol );
                return fixed4(_outlineCol_var.rgb,0);
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
            uniform sampler2D _fillCol; uniform float4 _fillCol_ST;
            uniform sampler2D _lines; uniform float4 _lines_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _black)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_8802 = 0.5;
                float node_6778 = (node_8802+(node_8802*dot(i.normalDir,lightDirection)));
                float2 node_2210 = float2(node_6778,node_8802);
                float4 _fillCol_var = tex2D(_fillCol,TRANSFORM_TEX(node_2210, _fillCol));
                float4 _SpecularCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularCol );
                float2 node_2758 = (float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*partZ);
                float4 _lines_var = tex2D(_lines,TRANSFORM_TEX(node_2758, _lines));
                float node_9002 = 0.8;
                float4 _black_var = UNITY_ACCESS_INSTANCED_PROP( Props, _black );
                float3 emissive = lerp(lerp(lerp(_fillCol_var.rgb,_SpecularCol_var.rgb,step(0.95,node_6778)),float3(_lines_var.r,_lines_var.r,_lines_var.r),step(node_6778,node_9002)),_black_var.rgb,step(step(0.6,node_6778),0.7));
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
            uniform sampler2D _fillCol; uniform float4 _fillCol_ST;
            uniform sampler2D _lines; uniform float4 _lines_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _SpecularCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _black)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
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
