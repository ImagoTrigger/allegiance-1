xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
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

Header {
 1;
 0;
 1;
}

Frame frm-bounding_model {
  FrameTransformMatrix {
-0.592000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,0.592000,0.000000,
0.000000,0.592000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bound2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000000,0.000000,4.829914,1.000000;;
 }
Mesh bound2 {
 33;
 -1.352990;1.352990;-4.619398;,
 -2.499999;2.500000;-3.535534;,
 -3.266407;3.266407;-1.913418;,
 -3.535533;3.535534;-0.000000;,
 0.000000;1.913417;-4.619398;,
 0.000001;3.535533;-3.535534;,
 0.000001;4.619397;-1.913418;,
 0.000001;5.000000;-0.000001;,
 1.352990;1.352989;-4.619398;,
 2.500000;2.499999;-3.535534;,
 3.266407;3.266406;-1.913418;,
 3.535534;3.535533;-0.000000;,
 1.913417;-0.000001;-4.619398;,
 3.535533;-0.000001;-3.535534;,
 4.619397;-0.000001;-1.913417;,
 5.000000;-0.000001;-0.000000;,
 1.352990;-1.352991;-4.619398;,
 2.499999;-2.500000;-3.535534;,
 3.266407;-3.266408;-1.913417;,
 3.535533;-3.535534;0.000000;,
 -0.000000;-1.913417;-4.619398;,
 -0.000001;-3.535534;-3.535534;,
 -0.000001;-4.619397;-1.913417;,
 -0.000001;-5.000000;0.000000;,
 -1.352990;-1.352990;-4.619398;,
 -2.500000;-2.500000;-3.535534;,
 -3.266408;-3.266407;-1.913417;,
 -3.535534;-3.535533;0.000000;,
 -1.913417;-0.000000;-4.619398;,
 -3.535534;0.000000;-3.535534;,
 -4.619398;0.000001;-1.913417;,
 -5.000000;0.000001;-0.000000;,
 -0.000000;-0.000000;-5.000000;;

 34;
 3;32,28,0;,
 4;0,28,29,1;,
 4;1,29,30,2;,
 3;32,8,12;,
 4;30,26,27,31;,
 4;29,25,26,30;,
 4;28,24,25,29;,
 3;32,24,28;,
 4;2,30,31,3;,
 4;12,8,9,13;,
 3;32,0,4;,
 4;13,9,10,14;,
 4;26,22,23,27;,
 4;25,21,22,26;,
 4;24,20,21,25;,
 3;32,20,24;,
 4;4,0,1,5;,
 4;5,1,2,6;,
 4;6,2,3,7;,
 4;14,10,11,15;,
 4;22,18,19,23;,
 4;21,17,18,22;,
 4;20,16,17,21;,
 3;32,16,20;,
 4;10,6,7,11;,
 3;32,4,8;,
 4;8,4,5,9;,
 4;9,5,6,10;,
 4;18,14,15,19;,
 4;17,13,14,18;,
 4;16,12,13,17;,
 3;32,12,16;,
 5;19,15,11,7,3;,
 5;3,31,27,23,19;;

 MeshNormals {
  33;
  -0.269132;0.269132;-0.924735;,
  -0.498494;0.498494;-0.709230;,
  -0.652733;0.652733;-0.384551;,
  -0.546601;0.546601;0.634393;,
  0.000000;0.380611;-0.924735;,
  0.000000;0.704977;-0.709231;,
  0.000000;0.923104;-0.384551;,
  0.000000;0.954919;0.296868;,
  0.269133;0.269132;-0.924735;,
  0.498494;0.498494;-0.709230;,
  0.652733;0.652733;-0.384551;,
  0.675229;0.675229;0.296868;,
  0.380611;-0.000000;-0.924735;,
  0.704977;-0.000000;-0.709230;,
  0.923104;-0.000000;-0.384551;,
  0.954919;-0.000000;0.296868;,
  0.269132;-0.269133;-0.924735;,
  0.498494;-0.498494;-0.709230;,
  0.652733;-0.652733;-0.384551;,
  0.546601;-0.546601;0.634393;,
  -0.000000;-0.380611;-0.924735;,
  -0.000000;-0.704977;-0.709230;,
  -0.000000;-0.923104;-0.384551;,
  -0.000000;-0.954919;0.296868;,
  -0.269132;-0.269133;-0.924735;,
  -0.498494;-0.498494;-0.709230;,
  -0.652733;-0.652733;-0.384551;,
  -0.675229;-0.675229;0.296868;,
  -0.380611;0.000000;-0.924735;,
  -0.704977;0.000000;-0.709230;,
  -0.923104;0.000000;-0.384551;,
  -0.954919;0.000000;0.296868;,
  -0.000000;-0.000000;-1.000000;;

  34;
  3;32,28,0;,
  4;0,28,29,1;,
  4;1,29,30,2;,
  3;32,8,12;,
  4;30,26,27,31;,
  4;29,25,26,30;,
  4;28,24,25,29;,
  3;32,24,28;,
  4;2,30,31,3;,
  4;12,8,9,13;,
  3;32,0,4;,
  4;13,9,10,14;,
  4;26,22,23,27;,
  4;25,21,22,26;,
  4;24,20,21,25;,
  3;32,20,24;,
  4;4,0,1,5;,
  4;5,1,2,6;,
  4;6,2,3,7;,
  4;14,10,11,15;,
  4;22,18,19,23;,
  4;21,17,18,22;,
  4;20,16,17,21;,
  3;32,16,20;,
  4;10,6,7,11;,
  3;32,4,8;,
  4;8,4,5,9;,
  4;9,5,6,10;,
  4;18,14,15,19;,
  4;17,13,14,18;,
  4;16,12,13,17;,
  3;32,12,16;,
  5;19,15,11,7,3;,
  5;3,31,27,23,19;;
 }
}
}
Frame frm-bound1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.061138,-0.000000,-1.803576,1.000000;;
 }
Mesh bound1 {
 10;
 -1.199522;1.199522;2.827301;,
 0.000000;1.696380;2.827300;,
 1.199522;1.199522;2.827301;,
 1.696380;-0.000000;2.827301;,
 1.199522;-1.199522;2.827301;,
 -0.000000;-1.696380;2.827301;,
 -1.199522;-1.199522;2.827301;,
 -1.696380;0.000000;2.827301;,
 -0.000000;-0.000000;-5.654601;,
 0.000000;0.000000;2.827301;;

 16;
 3;9,7,6;,
 3;8,6,7;,
 3;9,6,5;,
 3;8,5,6;,
 3;9,5,4;,
 3;8,4,5;,
 3;9,4,3;,
 3;8,3,4;,
 3;9,3,2;,
 3;8,2,3;,
 3;9,2,1;,
 3;8,1,2;,
 3;9,1,0;,
 3;8,0,1;,
 3;9,0,7;,
 3;8,7,0;;

 MeshNormals {
  10;
  -0.546835;0.546836;0.633989;,
  0.000000;0.773342;0.633989;,
  0.546836;0.546835;0.633989;,
  0.773342;-0.000000;0.633989;,
  0.546835;-0.546836;0.633989;,
  -0.000000;-0.773342;0.633989;,
  -0.546836;-0.546835;0.633989;,
  -0.773342;0.000000;0.633989;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;;

  16;
  3;9,7,6;,
  3;8,6,7;,
  3;9,6,5;,
  3;8,5,6;,
  3;9,5,4;,
  3;8,4,5;,
  3;9,4,3;,
  3;8,3,4;,
  3;9,3,2;,
  3;8,2,3;,
  3;9,2,1;,
  3;8,1,2;,
  3;9,1,0;,
  3;8,0,1;,
  3;9,0,7;,
  3;8,7,0;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
  AnimationKey {
  1;
  2;
  1; 3; 0.592000, 0.592000, 0.592000;;,
  100; 3; 0.592000, 0.592000, 0.592000;;;
  }
 }
 Animation anim-bound2 {
  {frm-bound2}
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, 0.000000, 4.829914;;,
  100; 3; -0.000000, 0.000000, 4.829914;;;
  }
 }
 Animation anim-bound1 {
  {frm-bound1}
  AnimationKey {
  2;
  2;
  1; 3; -0.061138, -0.000000, -1.803576;;,
  100; 3; -0.061138, -0.000000, -1.803576;;;
  }
 }
}
