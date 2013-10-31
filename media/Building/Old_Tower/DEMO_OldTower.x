xof 0302txt 0032

// Direct3D X file written by ModelConverterX
// 15 grudnia 2012

template Header {
   <3D82AB43-62DA-11cf-AB39-0020AF71E433>
   WORD major;
   WORD minor;
   DWORD flags;
}

template GuidToName {
   <7419dfe5-b73a-4d66-98d8-c082591dc9e7>
   STRING Guid;
   STRING Name;
}

template Vector {
   <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
   FLOAT x;
   FLOAT y;
   FLOAT z;
}

template SkinWeight {
   <C3B5EDF9-7345-463d-96D7-6386E2EC4030>
   STRING boneRef;
   FLOAT weight;
}

template SkinWeightGroup {
   <E7B502DB-0C05-4288-A025-80762E19E0AB>
   DWORD nWeights;
   array SkinWeight skinWeights[nWeights];
}

template Coords2d {
   <F6F23F44-7686-11cf-8F52-0040333594A3>
   FLOAT u;
   FLOAT v;
}

template Matrix4x4 {
   <F6F23F45-7686-11cf-8F52-0040333594A3>
   array FLOAT matrix[16];
}

template ColorRGBA {
   <35FF44E0-6C7C-11cf-8F52-0040333594A3>
   FLOAT red;
   FLOAT green;
   FLOAT blue;
   FLOAT alpha;
}

template ColorRGB {
   <D3E16E81-7835-11cf-8F52-0040333594A3>
   FLOAT red;
   FLOAT green;
   FLOAT blue;
}

template TextureFilename {
   <A42790E1-7810-11cf-8F52-0040333594A3>
   STRING filename;
}

template Material {
   <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
   ColorRGBA faceColor;
   FLOAT power;
   ColorRGB specularColor;
   ColorRGB emissiveColor;
   [...]
}

template MeshFace {
   <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
   DWORD nFaceVertexIndices;
   array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
   <F6F23F40-7686-11cf-8F52-0040333594A3>
   DWORD nTextureCoords;
   array Coords2d textureCoords[nTextureCoords];
}

template MeshSkinWeights {
   <C7E2131A-30F3-4eb9-AACC-E0AE11D8FE62>
   DWORD nVertices;
   array SkinWeightGroup skinWeights[nVertices];
}

template MeshMaterialList {
   <F6F23F42-7686-11cf-8F52-0040333594A3>
   DWORD nMaterials;
   DWORD nFaceIndexes;
   array DWORD faceIndexes[nFaceIndexes];
   [Material]
}

template MeshNormals {
   <F6F23F43-7686-11cf-8F52-0040333594A3>
   DWORD nNormals;
   array Vector normals[nNormals];
   DWORD nFaceNormals;
   array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
   <3D82AB44-62DA-11cf-AB39-0020AF71E433>
   DWORD nVertices;
   array Vector vertices[nVertices];
   DWORD nFaces;
   array MeshFace faces[nFaces];
   [...]
}

template BoneInfo {
   <1FF0AE59-4B0B-4dfe-88F2-91D58E395767>
   STRING boneName;
}

template AnimLinkName {
   <0057EC91-F96B-4f5e-9CFB-0E305F39DA1A>
   STRING linkName;
}

template IKChain {
   <2684B333-AAB2-45d9-87D8-6E2BB22616AD>
   STRING chainName;
   STRING startNode;
   STRING endNode;
}

template ConstraintInfo {
   <8713D495-C538-44dc-AE54-1097E7C93D13>
   Boolean bActive;
   Boolean bLimited;
   FLOAT fUpperLimit;
   FLOAT fLowerLimit;
}

template JointConstraint {
   <BE433CF1-BCC0-43f8-9FE5-DB0556414426>
   array ConstraintInfo Rotation[3];
   array ConstraintInfo Translation[3];
}

template FrameTransformMatrix {
   <F6F23F41-7686-11cf-8F52-0040333594A3>
   Matrix4x4 frameMatrix;
}

template Frame {
   <3D82AB46-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template FloatKeys {
   <10DD46A9-775B-11cf-8F52-0040333594A3>
   DWORD nValues;
   array FLOAT values[nValues];
}

template TimedFloatKeys {
   <F406B180-7B3B-11cf-8F52-0040333594A3>
   DWORD time;
   FloatKeys tfkeys;
}

template AnimationKey {
   <10DD46A8-775B-11cf-8F52-0040333594A3>
   DWORD keyType;
   DWORD nKeys;
   array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
   <E2BF56C0-840F-11cf-8F52-0040333594A3>
   DWORD openclosed;
   DWORD positionquality;
}

template Animation {
   <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
   [...]
}

template AnimationSet {
   <3D82AB50-62DA-11cf-AB39-0020AF71E433>
   [Animation]
}

template DiffuseTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07401>
   STRING filename;
}

template SpecularTextureFileName {
   <DF64E0D7-4FFA-4634-9DA0-3EF2FAA081CE>
   STRING filename;
}

template AmbientTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07402>
   STRING filename;
}

template EmissiveTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07403>
   STRING filename;
}

template ReflectionTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07404>
   STRING filename;
}

template ShininessTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07405>
   STRING filename;
}

template BumpTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07406>
   STRING filename;
}

template DisplacementTextureFileName {
   <E00200E2-D4AB-481a-9B85-E20F9AE07407>
   STRING filename;
}

template DetailTextureFileName {
   <C223DC28-5C0E-41bc-9706-A30E023EF118>
   STRING filename;
}

template FresnelTextureFileName {
   <C16742E5-974D-4576-870D-2047C79DF7A9>
   STRING filename;
}

template FS10Material {
   <16B4B490-C327-42e3-8A71-0FA35C817EA2>
   ColorRGBA FallbackDiffuse;
   ColorRGB  Specular;
   FLOAT     Power;
   FLOAT     DetailScale;
   FLOAT     BumpScale;
   FLOAT     EnvironmentLevelScale;
   Boolean   bUseGlobalEnv;
   Boolean   bModEnvInvDiffuseAlpha;
   Boolean   bModEnvSpecularMapAlpha;
  Boolean   bFresnelDiffuse; Boolean bFresnelSpecular; Boolean bFresnelEnvironment;
   Boolean   bUsePrecipitation;
   Boolean   bPrecipOffset;
   FLOAT     PrecipOffset;
   FLOAT     SpecMapPowerScale;
   STRING    SrcBlend;
   STRING    DstBlend;
   [...]
}

template AllowBloom {
   <D66E37C9-9DFE-4092-8565-C6E4C3498235>
   Boolean     AllowBloom;
}

template BloomData {
   <58ED1E67-0D18-44EF-B676-40BB20C1EE88>
   Boolean BloomCopy;
   Boolean BloomModAlpha;
}

template SpecularBloomFloor {
   <21195174-A31D-47ed-BE5A-04ACAD4C3544>
   FLOAT     SpecularBloomFloor;
}

template AmbientLightScale {
   <4CC76AEB-E84F-4688-AB49-E1DC4B9273C7>
   FLOAT     AmbientLightScale;
}

template EmissiveData {
   <A02EF480-3ED3-433d-A71D-5CAC4775757A>
   STRING   EmissiveBlend;
}

template AlphaData {
   <10DB69F3-E0EE-4fb3-8055-63E539EF5885>
   Boolean  ZTestAlpha;
   FLOAT    AlphaTestValue;
   STRING   AlphaTestFunction;
   Boolean  FinalAlphaWrite;
   FLOAT    FinalAlphaWriteValue;
}

template EnhancedParameters {
   <99CAD20D-DCC5-4ad4-ADAE-ED3CDE30CC02>
   Boolean  AssumeVerticalNormal;
   Boolean  ZWriteAlpha;
   Boolean  NoZWrite;
   Boolean  VolumeShadow;
   Boolean  NoShadow;
   Boolean  PrelitVertices;
}

template BaseMaterialSpecular {
   <E294ED4E-5C5A-4927-B19A-6A2D445FAF24>
   Boolean  AllowBaseMaterialSpecular;
}

template BaseMaterialSkin {
   <B640F860-9E28-4cab-AD46-CACCE2A418AC>
   Boolean  AllowSkinning;
}

template DoubleSidedMaterial {
   <B1C6C3B0-DD1A-417b-919A-B04BAD6AE06D>
   Boolean  DoubleSided;
}

template BlendConstantSetting {
   <48EA96C3-588E-451d-B4BB-0C746C8380D9>
   Boolean  BlendConstant;
}

template ForceTextureAddressWrapSetting {
   <046EE84C-7977-4a11-AA2B-C79FF5391EDD>
   Boolean  ForceTextureAddressWrap;
}

template ForceTextureAddressClampSetting {
   <DB108D57-A3A8-4b76-8CB0-8379CDDEC074>
   Boolean  ForceTextureAddressClamp;
}

template NoSpecularBloom {
   <BCE314D2-15DB-4ffd-9F6F-0763B2A4616F>
   Boolean  AllowSpecularBloom;
}

template EmissiveBloom {
   <5FF8D7A2-30B5-41bc-A891-28A427D78246>
   Boolean  AllowEmissiveBloom;
}

template BlendDiffuseByBaseAlpha {
   <A623FA7C-37CB-4d17-B702-854E0DBDB467>
   Boolean  BlendDiffByBaseAlpha;
}

template BlendDiffuseByInverseSpecularMapAlpha {
   <DAA68529-1C27-4182-9D97-E631A4759EA7>
   Boolean  BlendDiffuseByInvSpecAlpha;
}

template NNumberTexture {
   <E49E744A-CDBE-40c1-9C89-4A46BEB44D33>
   Boolean  IsNNumberTexture;
}

template PartData {
   <79B183BA-7E70-44d1-914A-23B304CA91E5>
   DWORD nByteCount;
   array BYTE XMLData[ nByteCount ];
}

Header {
	1;
	0;
	1;
}

GuidToName {
   "{e8c6b811-f380-447b-95e2-dd193b724c68}";
   "DEMO_OldTower";
}
Frame masterfrm {
FrameTransformMatrix {
   1.0, 0.0, 0.0, 0.0,
   0.0, 0.0, 1.0, 0.0,
   0.0, 1.0, 0.0, 0.0,
   0.0, 0.0, 0.0, 1.0;
}

Frame frmpart0 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Frame frmpart1_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part1 {
16;
-17.22524; -2.83133; 12.77785;,
-0.72505; -2.83133; 12.77785;,
-0.72505; 9.39972; 12.77785;,
-17.22524; 9.39972; 12.77785;,
-15.35591; 9.41121; 18.87834;,
-15.35591; -2.17986; 17.93943;,
-2.71968; -2.17986; 17.93943;,
-2.71968; 9.41121; 18.87834;,
2.63481; -30.56725; 8.12311;,
17.63482; -30.56725; 8.12311;,
17.63482; 4.37211; 8.12311;,
2.63481; 4.37211; 8.12311;,
5.70861; -8.41403; 11.43514;,
12.74010; -8.41403; 11.43514;,
12.74010; -3.11676; 11.43514;,
5.70861; -3.11676; 11.43514;;

8;
3; 2, 1, 0;,
3; 0, 3, 2;,
3; 6, 5, 4;,
3; 4, 7, 6;,
3; 10, 9, 8;,
3; 8, 11, 10;,
3; 14, 13, 12;,
3; 12, 15, 14;;

MeshMaterialList {
1;
8;
0,
0,
0,
0,
0,
0,
0,
0;
Material mat1 {
  0.588000; 0.588000; 0.588000; 1.000000;;
  0.000000;
  1.000000; 1.000000; 1.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "DACH.BMP";
  }
  DiffuseTextureFileName  {
     "DACH.BMP";
  }
  FS10Material {
    0.588000; 0.588000; 0.588000; 1.000000;;
    1.000000; 1.000000; 1.000000;;
    50.000000;
    0.000000; 0.000000;
    0.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    50.000000;
    "One"; "Zero";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      0;
      1.000000;
      "Never";
      0;
      1.000000;
    }
    EnhancedParameters  {
      0;
      0;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      0;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "DACH.BMP";
    }
  }
}
}

MeshNormals {
16;
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; -0.08074; 0.99674;,
0.00000; -0.08074; 0.99674;,
0.00000; -0.08074; 0.99674;,
0.00000; -0.08074; 0.99674;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;;

8;
3; 2, 1, 0;,
3; 0, 3, 2;,
3; 6, 5, 4;,
3; 4, 7, 6;,
3; 10, 9, 8;,
3; 8, 11, 10;,
3; 14, 13, 12;,
3; 12, 15, 14;;
}
MeshTextureCoords {
16;
-1.50200; 1.23215;,
2.50200; 1.23215;,
2.50200; -0.25187;,
-1.50200; -0.25187;,
2.50600; 1.08190;,
2.50600; -0.08190;,
-1.50600; -0.08190;,
-1.50600; 1.08190;,
4.86742; 1.25000;,
4.86742; -0.25000;,
-3.86742; -0.25000;,
-3.86742; 1.25000;,
0.04365; 0.23525;,
0.32833; 0.23525;,
0.32833; 0.02079;,
0.04365; 0.02079;;
}

}

}

Frame frmpart2_LOD_100 {
FrameTransformMatrix {
   1.000, 0.000, 0.000, 0.000,
   0.000, 1.000, 0.000, 0.000,
   0.000, 0.000, 1.000, 0.000,
   0.000, 0.000, 0.000, 1.000;
}

Mesh Part2 {
160;
-17.22524; -2.83133; 12.51245;,
-17.22524; 9.39972; 12.51245;,
-0.72505; 9.39972; 12.51245;,
-0.72505; -2.83133; 12.51245;,
-17.22524; -2.83133; 12.51245;,
-0.72505; -2.83133; 12.51245;,
-0.72505; -2.83133; 12.77785;,
-17.22524; -2.83133; 12.77785;,
-0.72505; -2.83133; 12.51245;,
-0.72505; 9.39972; 12.51245;,
-0.72505; 9.39972; 12.77785;,
-0.72505; -2.83133; 12.77785;,
-0.72505; 9.39972; 12.51245;,
-17.22524; 9.39972; 12.51245;,
-17.22524; 9.39972; 12.77785;,
-0.72505; 9.39972; 12.77785;,
-17.22524; 9.39972; 12.51245;,
-17.22524; -2.83133; 12.51245;,
-17.22524; -2.83133; 12.77785;,
-17.22524; 9.39972; 12.77785;,
-17.22529; -2.83135; 14.26639;,
-17.22529; 9.39973; 14.26639;,
-17.22524; 9.39972; 12.77785;,
-17.22524; -2.83133; 12.77785;,
-17.22529; 9.39973; 14.26639;,
-0.72505; 9.39973; 14.26639;,
-0.72505; 9.39972; 12.77785;,
-17.22524; 9.39972; 12.77785;,
-17.22529; -2.83135; 14.26639;,
-0.72505; -2.83135; 14.26639;,
-0.72505; -2.83133; 12.77785;,
-17.22524; -2.83133; 12.77785;,
-0.72505; -2.83135; 14.26639;,
-17.22529; -2.83135; 14.26639;,
-17.22524; -2.83133; 12.77785;,
-0.72505; -2.83133; 12.77785;,
-0.72505; 9.39973; 14.26639;,
-0.72505; -2.83135; 14.26639;,
-0.72505; -2.83133; 12.77785;,
-0.72505; 9.39972; 12.77785;,
-0.72505; 9.39973; 14.26639;,
-17.22529; 9.39973; 14.26639;,
-17.22524; 9.39972; 12.77785;,
-0.72505; 9.39972; 12.77785;,
-17.22529; 9.39973; 14.26639;,
-17.22529; -2.83135; 14.26639;,
-17.22524; -2.83133; 12.77785;,
-17.22524; 9.39972; 12.77785;,
-0.72505; -2.83135; 14.26639;,
-0.72505; 9.39973; 14.26639;,
-0.72505; 9.39972; 12.77785;,
-0.72505; -2.83133; 12.77785;,
-2.71968; 9.41121; 17.87119;,
-2.71968; 9.41121; 18.87834;,
-2.71968; -2.17986; 17.93943;,
-2.71968; 8.67720; 17.77000;,
-2.71968; 7.73482; 12.77824;,
-2.71968; -1.78691; 16.87162;,
-2.71968; -1.78691; 12.77824;,
-2.71968; -2.17986; 16.87162;,
-15.35591; 9.41121; 17.87119;,
-15.35591; 9.41121; 18.87834;,
-2.71968; 9.41121; 18.87834;,
-2.71968; 9.41121; 17.87119;,
-15.35591; 8.67720; 17.77000;,
-15.35591; 9.41121; 17.87119;,
-2.71968; 9.41121; 17.87119;,
-2.71968; 8.67720; 17.77000;,
-15.35591; 7.73482; 12.77824;,
-15.35591; 8.67720; 17.77000;,
-2.71968; 8.67720; 17.77000;,
-2.71968; 7.73482; 12.77824;,
-15.35591; -1.78691; 16.87162;,
-15.35591; -1.78691; 12.77824;,
-2.71968; -1.78691; 12.77824;,
-2.71968; -1.78691; 16.87162;,
-15.35591; -1.78691; 12.77824;,
-15.35591; 7.73482; 12.77824;,
-2.71968; 7.73482; 12.77824;,
-2.71968; -1.78691; 12.77824;,
-15.35591; -2.17986; 17.93943;,
-15.35591; -2.17986; 16.87162;,
-2.71968; -2.17986; 16.87162;,
-2.71968; -2.17986; 17.93943;,
-15.35591; -2.17986; 16.87162;,
-15.35591; -1.78691; 16.87162;,
-2.71968; -1.78691; 16.87162;,
-2.71968; -2.17986; 16.87162;,
-15.35591; -1.78691; 16.87162;,
-15.35591; -2.17986; 16.87162;,
-15.35591; -2.17986; 17.93943;,
-15.35591; 9.41121; 18.87834;,
-15.35591; 9.41121; 17.87119;,
-15.35591; 8.67720; 17.77000;,
-15.35591; 7.73482; 12.77824;,
-15.35591; -1.78691; 12.77824;,
-14.89747; -0.74974; 0.00000;,
-3.34816; -0.74974; 0.00000;,
-3.34816; -0.74974; 12.52556;,
-14.89747; -0.74974; 12.52556;,
-3.34816; -0.74974; 0.00000;,
-3.34816; 6.87516; 0.00000;,
-3.34816; 6.87516; 12.52556;,
-3.34816; -0.74974; 12.52556;,
-3.34816; 6.87516; 0.00000;,
-14.89747; 6.87516; 0.00000;,
-14.89747; 6.87516; 12.52556;,
-3.34816; 6.87516; 12.52556;,
-14.89747; 6.87516; 0.00000;,
-14.89747; -0.74974; 0.00000;,
-14.89747; -0.74974; 12.52556;,
-14.89747; 6.87516; 12.52556;,
2.63481; -30.56725; 0.00000;,
17.63482; -30.56725; 0.00000;,
17.63482; -30.56725; 8.12311;,
2.63481; -30.56725; 8.12311;,
17.63482; -30.56725; 0.00000;,
17.63482; 4.37211; 0.00000;,
17.63482; 4.37211; 8.12311;,
17.63482; -30.56725; 8.12311;,
17.63482; 4.37211; 0.00000;,
2.63481; 4.37211; 0.00000;,
2.63481; 4.37211; 8.12311;,
17.63482; 4.37211; 8.12311;,
2.63481; 4.37211; 0.00000;,
2.63481; -30.56725; 0.00000;,
2.63481; -30.56725; 8.12311;,
2.63481; 4.37211; 8.12311;,
-3.35707; -0.13613; 4.17705;,
-3.35707; 2.71068; 4.17705;,
2.63549; 2.71068; 4.17705;,
2.63549; -0.13613; 4.17705;,
-3.35707; -0.13613; 7.25954;,
2.63549; -0.13613; 7.25954;,
2.63549; 2.71068; 7.25954;,
-3.35707; 2.71068; 7.25954;,
-3.35707; -0.13613; 4.17705;,
2.63549; -0.13613; 4.17705;,
2.63549; -0.13613; 7.25954;,
-3.35707; -0.13613; 7.25954;,
2.63549; 2.71068; 4.17705;,
-3.35707; 2.71068; 4.17705;,
-3.35707; 2.71068; 7.25954;,
2.63549; 2.71068; 7.25954;,
5.70861; -8.41403; 8.12271;,
12.74010; -8.41403; 8.12271;,
12.74010; -8.41403; 11.43514;,
5.70861; -8.41403; 11.43514;,
12.74010; -8.41403; 8.12271;,
12.74010; -3.11676; 8.12271;,
12.74010; -3.11676; 11.43514;,
12.74010; -8.41403; 11.43514;,
12.74010; -3.11676; 8.12271;,
5.70861; -3.11676; 8.12271;,
5.70861; -3.11676; 11.43514;,
12.74010; -3.11676; 11.43514;,
5.70861; -3.11676; 8.12271;,
5.70861; -8.41403; 8.12271;,
5.70861; -8.41403; 11.43514;,
5.70861; -3.11676; 11.43514;;

84;
3; 2, 1, 0;,
3; 0, 3, 2;,
3; 6, 5, 4;,
3; 4, 7, 6;,
3; 10, 9, 8;,
3; 8, 11, 10;,
3; 14, 13, 12;,
3; 12, 15, 14;,
3; 18, 17, 16;,
3; 16, 19, 18;,
3; 22, 21, 20;,
3; 23, 22, 20;,
3; 26, 25, 24;,
3; 27, 26, 24;,
3; 30, 29, 28;,
3; 31, 30, 28;,
3; 34, 33, 32;,
3; 35, 34, 32;,
3; 38, 37, 36;,
3; 39, 38, 36;,
3; 42, 41, 40;,
3; 43, 42, 40;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 51, 50, 48;,
3; 54, 53, 52;,
3; 54, 52, 55;,
3; 54, 55, 56;,
3; 56, 58, 57;,
3; 54, 56, 57;,
3; 59, 54, 57;,
3; 62, 61, 60;,
3; 60, 63, 62;,
3; 66, 65, 64;,
3; 64, 67, 66;,
3; 70, 69, 68;,
3; 68, 71, 70;,
3; 74, 73, 72;,
3; 72, 75, 74;,
3; 78, 77, 76;,
3; 76, 79, 78;,
3; 82, 81, 80;,
3; 80, 83, 82;,
3; 86, 85, 84;,
3; 84, 87, 86;,
3; 90, 89, 88;,
3; 92, 91, 90;,
3; 95, 94, 93;,
3; 92, 90, 88;,
3; 88, 95, 93;,
3; 88, 93, 92;,
3; 98, 97, 96;,
3; 96, 99, 98;,
3; 102, 101, 100;,
3; 100, 103, 102;,
3; 106, 105, 104;,
3; 104, 107, 106;,
3; 110, 109, 108;,
3; 108, 111, 110;,
3; 114, 113, 112;,
3; 112, 115, 114;,
3; 118, 117, 116;,
3; 116, 119, 118;,
3; 122, 121, 120;,
3; 120, 123, 122;,
3; 126, 125, 124;,
3; 124, 127, 126;,
3; 130, 129, 128;,
3; 128, 131, 130;,
3; 134, 133, 132;,
3; 132, 135, 134;,
3; 138, 137, 136;,
3; 136, 139, 138;,
3; 142, 141, 140;,
3; 140, 143, 142;,
3; 146, 145, 144;,
3; 144, 147, 146;,
3; 150, 149, 148;,
3; 148, 151, 150;,
3; 154, 153, 152;,
3; 152, 155, 154;,
3; 158, 157, 156;,
3; 156, 159, 158;;

MeshMaterialList {
1;
84;
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0;
Material mat2 {
  0.588000; 0.588000; 0.588000; 1.000000;;
  0.000000;
  1.000000; 1.000000; 1.000000;;
  0.000000; 0.000000; 0.000000;;
  TextureFileName {
     "EPKT_OLDTOWER.BMP";
  }
  DiffuseTextureFileName  {
     "EPKT_OLDTOWER.BMP";
  }
  FS10Material {
    0.588000; 0.588000; 0.588000; 1.000000;;
    1.000000; 1.000000; 1.000000;;
    50.000000;
    0.000000; 0.000000;
    0.000000;
    0;
    0;
    0;
    0; 0; 0;
    0; 0; 0.000;
    50.000000;
    "SrcAlpha"; "InvSrcAlpha";
    BlendDiffuseByBaseAlpha  {
      0;
    }
    BlendDiffuseByInverseSpecularMapAlpha  {
      0;
    }
    AllowBloom  {
      1;
    }
    SpecularBloomFloor  {
      0.900000;
    }
    EmissiveData  {
      "AdditiveNightOnly";
    }
    AlphaData  {
      1;
      125.153999;
      "GreaterEqual";
      1;
      1.000000;
    }
    EnhancedParameters  {
      0;
      1;
      0;
      0;
      0;
      0;
    }
    BaseMaterialSkin {
      0;
    }
    DoubleSidedMaterial {
      0;
    }
    BlendConstantSetting {
      0;
    }
    ForceTextureAddressWrapSetting {
      0;
    }
    ForceTextureAddressClampSetting {
      0;
    }
    BaseMaterialSpecular {
      0;
    }
    NoSpecularBloom {
      1;
    }
    EmissiveBloom {
      0;
    }
    AmbientLightScale  {
      1.000000;
    }
    DiffuseTextureFileName  {
     "EPKT_OLDTOWER.BMP";
    }
  }
}
}

MeshNormals {
160;
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; -0.00004;,
-1.00000; 0.00000; -0.00004;,
-1.00000; 0.00000; -0.00004;,
-1.00000; 0.00000; -0.00004;,
0.00000; 1.00000; -0.00001;,
0.00000; 1.00000; -0.00001;,
0.00000; 1.00000; -0.00001;,
0.00000; 1.00000; -0.00001;,
0.00000; 1.00000; 0.00001;,
0.00000; 1.00000; 0.00001;,
0.00000; 1.00000; 0.00001;,
0.00000; 1.00000; 0.00001;,
0.00000; -1.00000; -0.00001;,
0.00000; -1.00000; -0.00001;,
0.00000; -1.00000; -0.00001;,
0.00000; -1.00000; -0.00001;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; -1.00000; 0.00001;,
0.00000; -1.00000; 0.00001;,
0.00000; -1.00000; 0.00001;,
0.00000; -1.00000; 0.00001;,
1.00000; 0.00000; 0.00004;,
1.00000; 0.00000; 0.00004;,
1.00000; 0.00000; 0.00004;,
1.00000; 0.00000; 0.00004;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 0.13658; -0.99063;,
0.00000; 0.13658; -0.99063;,
0.00000; 0.13658; -0.99063;,
0.00000; 0.13658; -0.99063;,
0.00000; 0.98264; -0.18551;,
0.00000; 0.98264; -0.18551;,
0.00000; 0.98264; -0.18551;,
0.00000; 0.98264; -0.18551;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; -1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; 0.00000; 1.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
0.00000; -1.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
1.00000; 0.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
0.00000; 1.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;,
-1.00000; 0.00000; 0.00000;;

84;
3; 2, 1, 0;,
3; 0, 3, 2;,
3; 6, 5, 4;,
3; 4, 7, 6;,
3; 10, 9, 8;,
3; 8, 11, 10;,
3; 14, 13, 12;,
3; 12, 15, 14;,
3; 18, 17, 16;,
3; 16, 19, 18;,
3; 22, 21, 20;,
3; 23, 22, 20;,
3; 26, 25, 24;,
3; 27, 26, 24;,
3; 30, 29, 28;,
3; 31, 30, 28;,
3; 34, 33, 32;,
3; 35, 34, 32;,
3; 38, 37, 36;,
3; 39, 38, 36;,
3; 42, 41, 40;,
3; 43, 42, 40;,
3; 46, 45, 44;,
3; 47, 46, 44;,
3; 50, 49, 48;,
3; 51, 50, 48;,
3; 54, 53, 52;,
3; 54, 52, 55;,
3; 54, 55, 56;,
3; 56, 58, 57;,
3; 54, 56, 57;,
3; 59, 54, 57;,
3; 62, 61, 60;,
3; 60, 63, 62;,
3; 66, 65, 64;,
3; 64, 67, 66;,
3; 70, 69, 68;,
3; 68, 71, 70;,
3; 74, 73, 72;,
3; 72, 75, 74;,
3; 78, 77, 76;,
3; 76, 79, 78;,
3; 82, 81, 80;,
3; 80, 83, 82;,
3; 86, 85, 84;,
3; 84, 87, 86;,
3; 90, 89, 88;,
3; 92, 91, 90;,
3; 95, 94, 93;,
3; 92, 90, 88;,
3; 88, 95, 93;,
3; 88, 93, 92;,
3; 98, 97, 96;,
3; 96, 99, 98;,
3; 102, 101, 100;,
3; 100, 103, 102;,
3; 106, 105, 104;,
3; 104, 107, 106;,
3; 110, 109, 108;,
3; 108, 111, 110;,
3; 114, 113, 112;,
3; 112, 115, 114;,
3; 118, 117, 116;,
3; 116, 119, 118;,
3; 122, 121, 120;,
3; 120, 123, 122;,
3; 126, 125, 124;,
3; 124, 127, 126;,
3; 130, 129, 128;,
3; 128, 131, 130;,
3; 134, 133, 132;,
3; 132, 135, 134;,
3; 138, 137, 136;,
3; 136, 139, 138;,
3; 142, 141, 140;,
3; 140, 143, 142;,
3; 146, 145, 144;,
3; 144, 147, 146;,
3; 150, 149, 148;,
3; 148, 151, 150;,
3; 154, 153, 152;,
3; 152, 155, 154;,
3; 158, 157, 156;,
3; 156, 159, 158;;
}
MeshTextureCoords {
160;
0.28219; 0.72530;,
0.28219; 0.64146;,
0.36424; 0.64146;,
0.36424; 0.72530;,
0.36869; 0.59129;,
0.99120; 0.59129;,
0.99120; 0.57877;,
0.36869; 0.57877;,
0.36874; 0.59129;,
0.99125; 0.59129;,
0.99125; 0.57877;,
0.36874; 0.57877;,
0.36869; 0.59129;,
0.99120; 0.59129;,
0.99120; 0.57877;,
0.36869; 0.57877;,
0.36874; 0.59129;,
0.99125; 0.59129;,
0.99125; 0.57877;,
0.36874; 0.57877;,
0.19323; 0.90805;,
0.99905; 0.90805;,
0.99904; 0.99968;,
0.19323; 0.99968;,
-0.00357; 0.90805;,
0.99965; 0.90805;,
0.99965; 0.99949;,
-0.00357; 0.99949;,
-0.00357; 0.90805;,
0.99965; 0.90805;,
0.99965; 0.99949;,
-0.00357; 0.99949;,
-0.00358; 0.90805;,
0.99965; 0.90805;,
0.99964; 0.99949;,
-0.00358; 0.99949;,
0.19323; 0.90805;,
0.99904; 0.90805;,
0.99904; 0.99968;,
0.19323; 0.99968;,
-0.00358; 0.90805;,
0.99965; 0.90805;,
0.99964; 0.99949;,
-0.00358; 0.99949;,
0.19323; 0.90805;,
0.99904; 0.90805;,
0.99904; 0.99968;,
0.19323; 0.99968;,
0.19323; 0.90805;,
0.99905; 0.90805;,
0.99904; 0.99968;,
0.19323; 0.99968;,
0.99618; 0.29090;,
0.99618; 0.23412;,
0.34269; 0.28705;,
0.95480; 0.29661;,
0.90167; 0.57804;,
0.36484; 0.34726;,
0.36484; 0.57804;,
0.34269; 0.34726;,
0.99967; 0.74140;,
0.99967; 0.71233;,
0.62861; 0.71233;,
0.62861; 0.74140;,
0.62869; 0.77300;,
0.62869; 0.75181;,
0.99928; 0.75181;,
0.99928; 0.77300;,
0.99953; 0.75261;,
0.99953; 0.59216;,
0.62734; 0.59216;,
0.62734; 0.75261;,
0.99897; 0.70871;,
0.99897; 0.74982;,
0.62826; 0.74982;,
0.62826; 0.70871;,
0.36794; 0.85621;,
0.90476; 0.85621;,
0.90476; 0.14379;,
0.36794; 0.14379;,
0.62771; 0.71033;,
0.62771; 0.75039;,
0.99932; 0.75039;,
0.99932; 0.71033;,
0.62771; 0.75438;,
0.62771; 0.77364;,
0.99932; 0.77364;,
0.99932; 0.75438;,
0.36489; 0.34726;,
0.34273; 0.34726;,
0.34273; 0.28705;,
0.99622; 0.23412;,
0.99622; 0.29090;,
0.95484; 0.29661;,
0.90171; 0.57804;,
0.36489; 0.57804;,
0.34416; 0.63962;,
0.00021; 0.63962;,
0.00021; 0.23379;,
0.34416; 0.23379;,
0.00004; 0.63962;,
0.24169; 0.63962;,
0.24169; 0.23379;,
0.00004; 0.23379;,
0.00002; 0.63962;,
0.34418; 0.63962;,
0.34418; 0.23379;,
0.00002; 0.23379;,
0.24168; 0.63962;,
0.00003; 0.63962;,
0.00003; 0.23379;,
0.24168; 0.23379;,
-0.00424; 0.23216;,
0.42327; 0.23216;,
0.42327; 0.00041;,
-0.00424; 0.00041;,
0.00034; 0.23216;,
0.99951; 0.23216;,
0.99951; 0.00041;,
0.00034; 0.00041;,
0.57156; 0.23216;,
0.99906; 0.23216;,
0.99906; 0.00041;,
0.57156; 0.00041;,
0.00041; 0.23216;,
0.99946; 0.23216;,
0.99946; 0.00041;,
0.00041; 0.00041;,
0.27967; 0.74844;,
0.27967; 0.70938;,
0.06773; 0.70938;,
0.06773; 0.74844;,
0.06785; 0.74844;,
0.27979; 0.74844;,
0.27979; 0.70938;,
0.06785; 0.70938;,
0.06694; 0.75041;,
0.27965; 0.75041;,
0.27965; 0.64100;,
0.06694; 0.64100;,
0.06682; 0.75041;,
0.27953; 0.75041;,
0.27953; 0.64100;,
0.06682; 0.64100;,
0.36610; 0.72552;,
0.62501; 0.72552;,
0.62501; 0.59037;,
0.36610; 0.59037;,
0.68137; 0.10022;,
0.83639; 0.10022;,
0.83639; 0.00085;,
0.68137; 0.00085;,
0.36610; 0.72552;,
0.62501; 0.72552;,
0.62501; 0.59037;,
0.36610; 0.59037;,
0.68137; 0.10022;,
0.83639; 0.10022;,
0.83639; 0.00085;,
0.68137; 0.00085;;
}

}

}

}

}
