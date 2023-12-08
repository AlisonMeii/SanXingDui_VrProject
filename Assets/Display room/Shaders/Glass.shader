// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-481-OUT,alpha-6316-OUT,refract-3280-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32077,y:32478,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.428,c2:0.428,c3:0.428,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:6316,x:32302,y:33013,ptovrint:False,ptlb:node_6316,ptin:_node_6316,varname:node_6316,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Cubemap,id:5510,x:32076,y:32768,ptovrint:False,ptlb:node_5510,ptin:_node_5510,varname:node_5510,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:fb4ee1b7e8d3a1d44bde33e67b5ff68d,pvfc:0|MIP-6174-OUT;n:type:ShaderForge.SFN_Multiply,id:481,x:32501,y:32737,varname:node_481,prsc:2|A-7241-RGB,B-8048-OUT;n:type:ShaderForge.SFN_Slider,id:6174,x:31681,y:32796,ptovrint:False,ptlb:Mip maps,ptin:_Mipmaps,varname:node_6174,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:7.153846,max:10;n:type:ShaderForge.SFN_Fresnel,id:2994,x:32054,y:33025,varname:node_2994,prsc:2|EXP-7996-OUT;n:type:ShaderForge.SFN_Slider,id:7996,x:31611,y:33079,ptovrint:False,ptlb:fresnel power,ptin:_fresnelpower,varname:_node_6174_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.871795,max:10;n:type:ShaderForge.SFN_Add,id:8048,x:32285,y:32791,varname:node_8048,prsc:2|A-5510-RGB,B-2994-OUT;n:type:ShaderForge.SFN_NormalVector,id:6033,x:31882,y:33359,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:9347,x:32137,y:33352,varname:node_9347,prsc:2,tffrom:0,tfto:3|IN-8341-RGB;n:type:ShaderForge.SFN_ComponentMask,id:1069,x:32379,y:33323,varname:node_1069,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9347-XYZ;n:type:ShaderForge.SFN_Slider,id:6785,x:32183,y:33538,ptovrint:False,ptlb:node_6785,ptin:_node_6785,varname:node_6785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.05,cur:0,max:0.05;n:type:ShaderForge.SFN_Multiply,id:3280,x:32616,y:33424,varname:node_3280,prsc:2|A-1069-OUT,B-6785-OUT;n:type:ShaderForge.SFN_Tex2d,id:8341,x:31577,y:33453,ptovrint:False,ptlb:node_8341,ptin:_node_8341,varname:node_8341,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a9a2878efc612e24aa847e102357212c,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:4921,x:32728,y:33285,varname:node_4921,prsc:2;proporder:7241-6316-5510-6174-7996-6785-8341;pass:END;sub:END;*/

Shader "Shader Forge/Glass" {
    Properties {
        _Color ("Color", Color) = (0.428,0.428,0.428,1)
        _node_6316 ("node_6316", Float ) = 0.5
        _node_5510 ("node_5510", Cube) = "_Skybox" {}
        _Mipmaps ("Mip maps", Range(1, 10)) = 7.153846
        _fresnelpower ("fresnel power", Range(0, 10)) = 4.871795
        _node_6785 ("node_6785", Range(-0.05, 0.05)) = 0
        _node_8341 ("node_8341", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _GrabTexture;
            uniform float4 _Color;
            uniform float _node_6316;
            uniform samplerCUBE _node_5510;
            uniform float _Mipmaps;
            uniform float _fresnelpower;
            uniform float _node_6785;
            uniform sampler2D _node_8341; uniform float4 _node_8341_ST;
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
                float4 screenPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 _node_8341_var = UnpackNormal(tex2D(_node_8341,TRANSFORM_TEX(i.uv0, _node_8341)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (mul( UNITY_MATRIX_V, float4(_node_8341_var.rgb,0) ).xyz.rgb.rg*_node_6785);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 emissive = (_Color.rgb*(texCUBElod(_node_5510,float4(viewReflectDirection,_Mipmaps)).rgb+pow(1.0-max(0,dot(normalDirection, viewDirection)),_fresnelpower)));
                float3 finalColor = emissive;
                return fixed4(lerp(sceneColor.rgb, finalColor,_node_6316),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
