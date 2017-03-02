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

Frame frm-utl28c {
  FrameTransformMatrix {
-1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,0.000000,19.392361,1.000000;;
 }
Frame frm-fuselg3 {
  FrameTransformMatrix {
-0.866025,0.500000,0.000000,0.000000,
0.500000,0.866025,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.145474,0.091682,19.276245,1.000000;;
 }
Mesh fuselg3 {
 42;
 3.296115;-5.715412;19.390879;,
 3.296115;-5.715412;19.390879;,
 3.296115;-5.715412;-19.295313;,
 3.296115;-5.715412;-19.295313;,
 3.296263;5.705238;19.390879;,
 3.296263;5.705238;19.390879;,
 3.296263;5.705238;-19.295313;,
 3.296263;5.705238;-19.295313;,
 37.453735;-5.715415;19.390879;,
 37.453735;-5.715415;19.390879;,
 37.453735;-5.715415;-19.295313;,
 37.453735;-5.715415;-19.295313;,
 37.453735;5.705235;19.390879;,
 37.453735;5.705235;19.390879;,
 37.453735;5.705235;-19.295313;,
 37.453735;5.705235;-19.295313;,
 20.374928;-5.715414;19.390879;,
 20.374926;-5.715414;-19.295313;,
 37.453735;-5.715415;0.047783;,
 3.296115;-5.715412;0.047783;,
 20.375000;5.705236;19.390879;,
 37.453735;5.705235;0.047783;,
 20.375000;5.705236;-19.295313;,
 3.296263;5.705238;0.047783;,
 20.375000;5.705236;0.047783;,
 3.296263;5.705238;0.047783;,
 20.375000;5.705236;-19.295313;,
 37.453735;5.705235;0.047783;,
 20.375000;5.705236;19.390879;,
 3.296115;-5.715412;0.047783;,
 37.453735;-5.715415;0.047783;,
 20.374926;-5.715414;-19.295313;,
 20.374928;-5.715414;19.390879;,
 20.374926;-5.715414;0.047783;,
 37.453735;5.705235;-19.295313;,
 37.453735;5.705235;19.390879;,
 37.453735;-5.715415;-19.295313;,
 37.453735;-5.715415;19.390879;,
 3.296263;5.705238;-19.295313;,
 3.296263;5.705238;19.390879;,
 3.296115;-5.715412;-19.295313;,
 3.296115;-5.715412;19.390879;;

 32;
 3;22,17,3;,
 3;15,11,17;,
 3;5,1,16;,
 3;16,37,12;,
 3;20,5,16;,
 3;16,12,20;,
 3;22,15,17;,
 3;3,6,22;,
 3;18,34,27;,
 3;27,13,18;,
 3;13,9,18;,
 3;18,36,34;,
 3;30,33,31;,
 3;33,2,31;,
 3;19,2,33;,
 3;24,14,26;,
 3;21,14,24;,
 3;19,33,32;,
 3;23,4,24;,
 3;24,7,23;,
 3;26,7,24;,
 3;24,4,28;,
 3;35,21,24;,
 3;28,35,24;,
 3;33,8,32;,
 3;32,0,19;,
 3;30,8,33;,
 3;31,10,30;,
 3;29,41,39;,
 3;39,25,29;,
 3;38,40,25;,
 3;29,25,40;;

 MeshMaterialList {
  2;
  32;
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
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "utl14c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "utl14b.bmp";
 }
 }
}
 MeshNormals {
  42;
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577348;0.577355;0.577348;,
  -0.577348;0.577355;0.577348;,
  -0.408246;0.816498;-0.408247;,
  -0.408246;0.816498;-0.408247;,
  0.408248;-0.816497;0.408248;,
  0.408248;-0.816497;0.408248;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.000000;-0.600000;0.800000;,
  0.000000;-0.707107;-0.707107;,
  0.800000;-0.600000;0.000000;,
  -0.707111;-0.707102;0.000000;,
  0.000000;0.707107;0.707107;,
  0.707107;0.707107;0.000000;,
  0.000000;0.554700;-0.832050;,
  -0.832045;0.554708;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.832045;0.554708;0.000000;,
  0.000000;0.554700;-0.832050;,
  0.707107;0.707107;0.000000;,
  0.000000;0.707107;0.707107;,
  -0.707111;-0.707102;0.000000;,
  0.800000;-0.600000;0.000000;,
  0.000000;-0.707107;-0.707107;,
  0.000000;-0.600000;0.800000;,
  0.000000;-1.000000;0.000000;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.408248;-0.816497;0.408248;,
  -0.408246;0.816498;-0.408247;,
  -0.577348;0.577355;0.577348;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;0.577353;;

  32;
  3;22,17,3;,
  3;15,11,17;,
  3;5,1,16;,
  3;16,37,12;,
  3;20,5,16;,
  3;16,12,20;,
  3;22,15,17;,
  3;3,6,22;,
  3;18,34,27;,
  3;27,13,18;,
  3;13,9,18;,
  3;18,36,34;,
  3;30,33,31;,
  3;33,2,31;,
  3;19,2,33;,
  3;24,14,26;,
  3;21,14,24;,
  3;19,33,32;,
  3;23,4,24;,
  3;24,7,23;,
  3;26,7,24;,
  3;24,4,28;,
  3;35,21,24;,
  3;28,35,24;,
  3;33,8,32;,
  3;32,0,19;,
  3;30,8,33;,
  3;31,10,30;,
  3;29,41,39;,
  3;39,25,29;,
  3;38,40,25;,
  3;29,25,40;;
 }
 MeshTextureCoords {
 42;
 0.343750;0.968750;,
 0.351563;0.270833;,
 0.005208;0.968750;,
 0.351563;0.270833;,
 0.343750;0.968747;,
 0.463542;0.270836;,
 0.463542;0.270836;,
 0.005208;0.968747;,
 0.343750;0.270833;,
 0.343750;0.031250;,
 0.005208;0.270833;,
 0.351563;0.968750;,
 0.463542;0.968750;,
 0.343750;0.234375;,
 0.005208;0.270833;,
 0.463542;0.968750;,
 0.351563;0.619792;,
 0.351563;0.619792;,
 0.174479;0.031250;,
 0.174479;0.968750;,
 0.463542;0.619793;,
 0.174479;0.270833;,
 0.463542;0.619793;,
 0.174479;0.968747;,
 0.174479;0.619790;,
 0.638672;0.242188;,
 0.005208;0.619790;,
 0.174479;0.234375;,
 0.343750;0.619790;,
 0.638672;0.335937;,
 0.174479;0.270833;,
 0.005208;0.619792;,
 0.343750;0.619792;,
 0.174479;0.619792;,
 0.005208;0.234375;,
 0.343750;0.270833;,
 0.005208;0.031250;,
 0.351563;0.968750;,
 0.667969;0.242188;,
 0.609375;0.242188;,
 0.667969;0.335937;,
 0.609375;0.335937;;
 }
}
Frame frm-SSc17 {
  FrameTransformMatrix {
-0.000009,0.000005,0.000000,0.000000,
0.000005,0.000009,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
37.783661,-0.084020,18.619135,1.000000;;
 }
Mesh SSc17 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SSc18 {
  FrameTransformMatrix {
-0.000009,0.000005,0.000000,0.000000,
0.000005,0.000009,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
37.783619,-0.083970,-18.827734,1.000000;;
 }
Mesh SSc18 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
Frame frm-fuselg2 {
  FrameTransformMatrix {
0.866025,0.500000,0.000000,0.000000,
0.500000,-0.866025,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.145477,0.091682,19.276154,1.000000;;
 }
Mesh fuselg2 {
 42;
 3.296115;-5.715413;19.390871;,
 3.296115;-5.715413;19.390871;,
 3.296115;-5.715413;-19.295321;,
 3.296115;-5.715413;-19.295321;,
 3.296263;5.705239;19.390871;,
 3.296263;5.705239;19.390871;,
 3.296263;5.705239;-19.295321;,
 3.296263;5.705239;-19.295321;,
 37.453735;-5.715408;19.390871;,
 37.453735;-5.715408;19.390871;,
 37.453735;-5.715408;-19.295321;,
 37.453735;-5.715408;-19.295321;,
 37.453735;5.705244;19.390871;,
 37.453735;5.705244;19.390871;,
 37.453735;5.705244;-19.295321;,
 37.453735;5.705244;-19.295321;,
 20.374928;-5.715410;19.390871;,
 20.374926;-5.715410;-19.295321;,
 37.453735;-5.715408;0.047775;,
 3.296115;-5.715413;0.047775;,
 20.375000;5.705242;19.390871;,
 37.453735;5.705244;0.047775;,
 20.375000;5.705242;-19.295321;,
 3.296263;5.705239;0.047775;,
 20.375000;5.705242;0.047775;,
 3.296263;5.705239;0.047775;,
 20.375000;5.705242;-19.295321;,
 37.453735;5.705244;0.047775;,
 20.375000;5.705242;19.390871;,
 3.296115;-5.715413;0.047775;,
 37.453735;-5.715408;0.047775;,
 20.374926;-5.715410;-19.295321;,
 20.374928;-5.715410;19.390871;,
 20.374926;-5.715410;0.047775;,
 37.453735;5.705244;-19.295321;,
 37.453735;5.705244;19.390871;,
 37.453735;-5.715408;-19.295321;,
 37.453735;-5.715408;19.390871;,
 3.296263;5.705239;-19.295321;,
 3.296263;5.705239;19.390871;,
 3.296115;-5.715413;-19.295321;,
 3.296115;-5.715413;19.390871;;

 32;
 3;22,17,3;,
 3;15,11,17;,
 3;5,1,16;,
 3;16,37,12;,
 3;20,5,16;,
 3;16,12,20;,
 3;22,15,17;,
 3;3,6,22;,
 3;18,34,27;,
 3;27,13,18;,
 3;13,9,18;,
 3;18,36,34;,
 3;30,33,31;,
 3;33,2,31;,
 3;19,2,33;,
 3;24,14,26;,
 3;21,14,24;,
 3;19,33,32;,
 3;23,4,24;,
 3;24,7,23;,
 3;26,7,24;,
 3;24,4,28;,
 3;35,21,24;,
 3;28,35,24;,
 3;33,8,32;,
 3;32,0,19;,
 3;30,8,33;,
 3;31,10,30;,
 3;25,38,40;,
 3;40,29,25;,
 3;29,39,25;,
 3;29,41,39;;

 MeshMaterialList {
  2;
  32;
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
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "utl14c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "utl14b.bmp";
 }
 }
}
 MeshNormals {
  42;
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577348;0.577355;0.577348;,
  -0.577348;0.577355;0.577348;,
  -0.408247;0.816498;-0.408247;,
  -0.408247;0.816498;-0.408247;,
  0.408248;-0.816497;0.408248;,
  0.408248;-0.816497;0.408248;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.000000;-0.600000;0.800000;,
  0.000000;-0.707107;-0.707107;,
  0.800000;-0.600000;0.000000;,
  -0.707111;-0.707102;0.000000;,
  0.000000;0.707107;0.707107;,
  0.707107;0.707107;0.000000;,
  0.000000;0.554700;-0.832050;,
  -0.832045;0.554708;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.832045;0.554708;0.000000;,
  0.000000;0.554700;-0.832050;,
  0.707107;0.707107;0.000000;,
  0.000000;0.707107;0.707107;,
  -0.707111;-0.707102;0.000000;,
  0.800000;-0.600000;0.000000;,
  0.000000;-0.707107;-0.707107;,
  0.000000;-0.600000;0.800000;,
  0.000000;-1.000000;0.000000;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.408248;-0.816497;0.408248;,
  -0.408247;0.816498;-0.408247;,
  -0.577348;0.577355;0.577348;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;0.577353;;

  32;
  3;22,17,3;,
  3;15,11,17;,
  3;5,1,16;,
  3;16,37,12;,
  3;20,5,16;,
  3;16,12,20;,
  3;22,15,17;,
  3;3,6,22;,
  3;18,34,27;,
  3;27,13,18;,
  3;13,9,18;,
  3;18,36,34;,
  3;30,33,31;,
  3;33,2,31;,
  3;19,2,33;,
  3;24,14,26;,
  3;21,14,24;,
  3;19,33,32;,
  3;23,4,24;,
  3;24,7,23;,
  3;26,7,24;,
  3;24,4,28;,
  3;35,21,24;,
  3;28,35,24;,
  3;33,8,32;,
  3;32,0,19;,
  3;30,8,33;,
  3;31,10,30;,
  3;25,38,40;,
  3;40,29,25;,
  3;29,39,25;,
  3;29,41,39;;
 }
 MeshTextureCoords {
 42;
 0.825521;0.968750;,
 0.947917;0.968750;,
 0.489583;0.968750;,
 0.947917;0.968750;,
 0.825521;0.968747;,
 0.833333;0.968747;,
 0.833333;0.968747;,
 0.489583;0.968747;,
 0.825521;0.270833;,
 0.835938;0.005208;,
 0.489583;0.270833;,
 0.947917;0.270833;,
 0.833333;0.270833;,
 0.835938;0.250000;,
 0.489583;0.270833;,
 0.833333;0.270833;,
 0.947917;0.619792;,
 0.947917;0.619792;,
 0.660156;0.005208;,
 0.657552;0.968750;,
 0.833333;0.619790;,
 0.657552;0.270833;,
 0.833333;0.619790;,
 0.657552;0.968747;,
 0.657552;0.619790;,
 0.638672;0.242188;,
 0.489583;0.619790;,
 0.660156;0.250000;,
 0.825521;0.619790;,
 0.638672;0.335938;,
 0.657552;0.270833;,
 0.489583;0.619792;,
 0.825521;0.619792;,
 0.657552;0.619792;,
 0.484375;0.250000;,
 0.825521;0.270833;,
 0.484375;0.005208;,
 0.947917;0.270833;,
 0.667969;0.242188;,
 0.609375;0.242188;,
 0.667969;0.335938;,
 0.609375;0.335938;;
 }
}
Frame frm-SSc15 {
  FrameTransformMatrix {
0.000009,0.000005,0.000000,0.000000,
0.000005,-0.000009,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
37.786530,0.085499,18.612316,1.000000;;
 }
Mesh SSc15 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SSc16 {
  FrameTransformMatrix {
0.000009,0.000005,0.000000,0.000000,
0.000005,-0.000009,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
37.786533,0.085499,-18.751949,1.000000;;
 }
Mesh SSc16 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
Frame frm-fuselg1 {
  FrameTransformMatrix {
0.000000,-1.000000,0.000000,0.000000,
-1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.145477,0.091682,19.276154,1.000000;;
 }
Mesh fuselg1 {
 42;
 3.296115;-5.715413;19.390871;,
 3.296115;-5.715413;19.390871;,
 3.296115;-5.715413;-19.295321;,
 3.296115;-5.715413;-19.295321;,
 3.296263;5.705239;19.390871;,
 3.296263;5.705239;19.390871;,
 3.296263;5.705239;-19.295321;,
 3.296263;5.705239;-19.295321;,
 37.453735;-5.715410;19.390871;,
 37.453735;-5.715410;19.390871;,
 37.453735;-5.715410;-19.295321;,
 37.453735;-5.715410;-19.295321;,
 37.453735;5.705242;19.390871;,
 37.453735;5.705242;19.390871;,
 37.453735;5.705242;-19.295321;,
 37.453735;5.705242;-19.295321;,
 20.374928;-5.715411;19.390871;,
 20.374926;-5.715411;-19.295321;,
 37.453735;-5.715410;0.047775;,
 3.296115;-5.715413;0.047775;,
 20.375000;5.705241;19.390871;,
 37.453735;5.705242;0.047775;,
 20.375000;5.705241;-19.295321;,
 3.296263;5.705239;0.047775;,
 20.375000;5.705241;0.047775;,
 3.296263;5.705239;0.047775;,
 20.375000;5.705241;-19.295321;,
 37.453735;5.705242;0.047775;,
 20.375000;5.705241;19.390871;,
 3.296115;-5.715413;0.047775;,
 37.453735;-5.715410;0.047775;,
 20.374926;-5.715411;-19.295321;,
 20.374928;-5.715411;19.390871;,
 20.374926;-5.715411;0.047775;,
 37.453735;5.705242;-19.295321;,
 37.453735;5.705242;19.390871;,
 37.453735;-5.715410;-19.295321;,
 37.453735;-5.715410;19.390871;,
 3.296263;5.705239;-19.295321;,
 3.296263;5.705239;19.390871;,
 3.296115;-5.715413;-19.295321;,
 3.296115;-5.715413;19.390871;;

 32;
 3;22,17,3;,
 3;15,11,17;,
 3;5,1,16;,
 3;16,37,12;,
 3;20,5,16;,
 3;16,12,20;,
 3;22,15,17;,
 3;3,6,22;,
 3;18,34,27;,
 3;27,13,18;,
 3;13,9,18;,
 3;18,36,34;,
 3;30,33,31;,
 3;33,2,31;,
 3;19,2,33;,
 3;24,14,26;,
 3;21,14,24;,
 3;19,33,32;,
 3;23,4,24;,
 3;24,7,23;,
 3;26,7,24;,
 3;24,4,28;,
 3;35,21,24;,
 3;28,35,24;,
 3;33,8,32;,
 3;32,0,19;,
 3;30,8,33;,
 3;31,10,30;,
 3;29,41,39;,
 3;39,25,29;,
 3;25,40,29;,
 3;25,38,40;;

 MeshMaterialList {
  2;
  32;
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
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "utl14c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "utl14b.bmp";
 }
 }
}
 MeshNormals {
  42;
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;-0.577353;,
  -0.577348;0.577355;0.577348;,
  -0.577348;0.577355;0.577348;,
  -0.408247;0.816498;-0.408247;,
  -0.408247;0.816498;-0.408247;,
  0.408248;-0.816497;0.408248;,
  0.408248;-0.816497;0.408248;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.000000;-0.600000;0.800000;,
  0.000000;-0.707107;-0.707107;,
  0.800000;-0.600000;0.000000;,
  -0.707111;-0.707102;0.000000;,
  0.000000;0.707107;0.707107;,
  0.707107;0.707107;0.000000;,
  0.000000;0.554700;-0.832050;,
  -0.832045;0.554708;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.832045;0.554708;0.000000;,
  0.000000;0.554700;-0.832050;,
  0.707107;0.707107;0.000000;,
  0.000000;0.707107;0.707107;,
  -0.707111;-0.707102;0.000000;,
  0.800000;-0.600000;0.000000;,
  0.000000;-0.707107;-0.707107;,
  0.000000;-0.600000;0.800000;,
  0.000000;-1.000000;0.000000;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.408248;-0.816497;0.408248;,
  -0.408247;0.816498;-0.408247;,
  -0.577348;0.577355;0.577348;,
  -0.577353;-0.577345;-0.577353;,
  -0.577353;-0.577345;0.577353;;

  32;
  3;22,17,3;,
  3;15,11,17;,
  3;5,1,16;,
  3;16,37,12;,
  3;20,5,16;,
  3;16,12,20;,
  3;22,15,17;,
  3;3,6,22;,
  3;18,34,27;,
  3;27,13,18;,
  3;13,9,18;,
  3;18,36,34;,
  3;30,33,31;,
  3;33,2,31;,
  3;19,2,33;,
  3;24,14,26;,
  3;21,14,24;,
  3;19,33,32;,
  3;23,4,24;,
  3;24,7,23;,
  3;26,7,24;,
  3;24,4,28;,
  3;35,21,24;,
  3;28,35,24;,
  3;33,8,32;,
  3;32,0,19;,
  3;30,8,33;,
  3;31,10,30;,
  3;29,41,39;,
  3;39,25,29;,
  3;25,40,29;,
  3;25,38,40;;
 }
 MeshTextureCoords {
 42;
 0.825521;0.968750;,
 0.947917;0.968750;,
 0.489583;0.968750;,
 0.947917;0.968750;,
 0.825521;0.968747;,
 0.833333;0.968747;,
 0.833333;0.968747;,
 0.489583;0.968747;,
 0.825521;0.270833;,
 0.835938;0.005208;,
 0.489583;0.270833;,
 0.947917;0.270833;,
 0.833333;0.270833;,
 0.835938;0.250000;,
 0.489583;0.270833;,
 0.833333;0.270833;,
 0.947917;0.619792;,
 0.947917;0.619792;,
 0.660156;0.005208;,
 0.657552;0.968750;,
 0.833333;0.619790;,
 0.657552;0.270833;,
 0.833333;0.619790;,
 0.657552;0.968747;,
 0.657552;0.619790;,
 0.639648;0.242188;,
 0.489583;0.619790;,
 0.660156;0.250000;,
 0.825521;0.619790;,
 0.639648;0.335938;,
 0.657552;0.270833;,
 0.489583;0.619792;,
 0.825521;0.619792;,
 0.657552;0.619792;,
 0.484375;0.250000;,
 0.825521;0.270833;,
 0.484375;0.005208;,
 0.947917;0.270833;,
 0.669922;0.242188;,
 0.609375;0.242188;,
 0.669922;0.335938;,
 0.609375;0.335938;;
 }
}
Frame frm-SSc13 {
  FrameTransformMatrix {
0.000000,-0.000010,0.000000,0.000000,
-0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
38.136562,-0.143568,18.298210,1.000000;;
 }
Mesh SSc13 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SSc14 {
  FrameTransformMatrix {
0.000000,-0.000010,0.000000,0.000000,
-0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
38.136753,-0.143579,-18.624718,1.000000;;
 }
Mesh SSc14 {
 6;
 0.000000;0.000000;-0.100000;,
 0.000000;0.000000;0.100000;,
 0.000000;-0.100000;0.000000;,
 0.000000;0.100000;0.000000;,
 -0.100000;0.000000;0.000000;,
 0.100000;0.000000;0.000000;;

 8;
 3;5,3,1;,
 3;3,5,0;,
 3;2,5,1;,
 3;5,2,0;,
 3;3,4,1;,
 3;4,3,0;,
 3;4,2,1;,
 3;2,4,0;;

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
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.988701;0.988701;0.988701;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;;

  8;
  3;5,3,1;,
  3;3,5,0;,
  3;2,5,1;,
  3;5,2,0;,
  3;3,4,1;,
  3;4,3,0;,
  3;4,2,1;,
  3;2,4,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
}
Frame frm-ffuselg {
  FrameTransformMatrix {
0.007600,0.999971,0.000000,0.000000,
0.999971,-0.007600,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.000006,0.000002,41.206642,1.000000;;
 }
Mesh ffuselg {
 32;
 13.200001;0.000000;2.500000;,
 13.200001;0.000000;-2.500000;,
 6.600000;11.431536;2.500000;,
 6.600000;11.431536;2.500000;,
 6.600000;11.431536;-2.500000;,
 6.600000;11.431536;-2.500000;,
 -6.600001;11.431536;2.500000;,
 -6.600001;11.431536;2.500000;,
 -6.600001;11.431536;-2.500000;,
 -6.600001;11.431536;-2.500000;,
 -13.200001;-0.000001;2.500000;,
 -13.200001;-0.000001;-2.500000;,
 -6.599998;-11.431536;2.500000;,
 -6.599998;-11.431536;-2.500000;,
 6.600001;-11.431534;2.500000;,
 6.600001;-11.431534;2.500000;,
 6.600001;-11.431534;-2.500000;,
 6.600001;-11.431534;-2.500000;,
 6.600001;-11.431534;-2.500000;,
 6.600001;-11.431534;2.500000;,
 -6.599998;-11.431536;-2.500000;,
 -6.599998;-11.431536;2.500000;,
 -13.200001;-0.000001;-2.500000;,
 -13.200001;-0.000001;2.500000;,
 -6.600001;11.431536;-2.500000;,
 -6.600001;11.431536;2.500000;,
 6.600000;11.431536;-2.500000;,
 6.600000;11.431536;2.500000;,
 13.200001;0.000000;-2.500000;,
 13.200001;0.000000;2.500000;,
 0.000000;0.000000;-2.500000;,
 0.000000;0.000000;2.500000;;

 24;
 3;31,0,3;,
 3;30,4,28;,
 3;31,3,7;,
 3;30,8,4;,
 3;31,7,10;,
 3;30,22,8;,
 3;31,10,12;,
 3;30,20,22;,
 3;31,12,15;,
 3;30,16,20;,
 3;31,15,0;,
 3;30,28,16;,
 3;26,9,27;,
 3;13,21,23;,
 3;11,13,23;,
 3;5,2,29;,
 3;1,5,29;,
 3;17,14,21;,
 3;13,17,21;,
 3;11,23,25;,
 3;24,11,25;,
 3;1,29,19;,
 3;18,1,19;,
 3;9,6,27;;

 MeshMaterialList {
  2;
  24;
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "utl14c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.200000;0.200000;0.200000;;
 TextureFilename {
  "utl14c.bmp";
 }
 }
}
 MeshNormals {
  32;
  0.783349;0.150756;0.603023;,
  0.783349;-0.150756;-0.603023;,
  0.272352;0.786214;0.554700;,
  0.272352;0.786214;0.554700;,
  0.544705;0.628971;-0.554700;,
  0.544705;0.628971;-0.554700;,
  -0.522233;0.603023;0.603023;,
  -0.522233;0.603023;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.783349;-0.150756;0.603023;,
  -0.783349;0.150756;-0.603023;,
  -0.272352;-0.786214;0.554700;,
  -0.544705;-0.628971;-0.554700;,
  0.544705;-0.628971;0.554700;,
  0.544705;-0.628971;0.554700;,
  0.272352;-0.786214;-0.554700;,
  0.272352;-0.786214;-0.554700;,
  0.272352;-0.786214;-0.554700;,
  0.544705;-0.628971;0.554700;,
  -0.544705;-0.628971;-0.554700;,
  -0.272352;-0.786214;0.554700;,
  -0.783349;0.150756;-0.603023;,
  -0.783349;-0.150756;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.522233;0.603023;0.603023;,
  0.544705;0.628971;-0.554700;,
  0.272352;0.786214;0.554700;,
  0.783349;-0.150756;-0.603023;,
  0.783349;0.150756;0.603023;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;;

  24;
  3;31,0,3;,
  3;30,4,28;,
  3;31,3,7;,
  3;30,8,4;,
  3;31,7,10;,
  3;30,22,8;,
  3;31,10,12;,
  3;30,20,22;,
  3;31,12,15;,
  3;30,16,20;,
  3;31,15,0;,
  3;30,28,16;,
  3;26,9,27;,
  3;13,21,23;,
  3;11,13,23;,
  3;5,2,29;,
  3;1,5,29;,
  3;17,14,21;,
  3;13,17,21;,
  3;11,23,25;,
  3;24,11,25;,
  3;1,29,19;,
  3;18,1,19;,
  3;9,6,27;;
 }
 MeshTextureCoords {
 32;
 0.971354;0.135417;,
 0.994792;0.557292;,
 0.953125;0.359375;,
 0.937500;0.015625;,
 0.937500;0.015625;,
 0.994792;0.359375;,
 0.952865;0.467405;,
 0.869792;0.015625;,
 0.869792;0.015625;,
 0.994531;0.467405;,
 0.835938;0.135417;,
 0.994792;0.557292;,
 0.869792;0.255208;,
 0.994792;0.755208;,
 0.953819;0.393186;,
 0.937500;0.255208;,
 0.937500;0.255208;,
 0.995486;0.393186;,
 0.994792;0.755208;,
 0.953125;0.755208;,
 0.869792;0.255208;,
 0.953125;0.755208;,
 0.835938;0.135417;,
 0.953125;0.557292;,
 0.994792;0.359375;,
 0.953125;0.359375;,
 0.994227;0.709852;,
 0.952561;0.709852;,
 0.971354;0.135417;,
 0.953125;0.557292;,
 0.903646;0.135417;,
 0.903646;0.135417;;
 }
}
Frame frm-crgatt {
  FrameTransformMatrix {
0.007600,0.999971,0.000000,0.000000,
0.999971,-0.007600,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.000002,0.000000,-2.484907,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-utl28c {
  {frm-utl28c}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 1.000000, 0.000000;;,  # Original(0.000000, 179.999985, 0.000000) Reextracted(0.000000, 179.999985, 0.000000)
  15; 4; 0.000000, 0.000000, 1.000000, 0.000000;;;  # Original(0.000000, 179.999985, 0.000000) Reextracted(0.000000, 179.999985, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -19.392361;;,
  15; 3; 0.000000, 0.000000, -19.392361;;;
  }
 }
 Animation anim-fuselg3 {
  {frm-fuselg3}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.258819, -0.965926, 0.000000;;,  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  15; 4; 0.000000, -0.258819, -0.965926, 0.000000;;;  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.145474, 0.091682, -19.276245;;,
  15; 3; -0.145474, 0.091682, -19.276245;;;
  }
 }
 Animation anim-SSc17 {
  {frm-SSc17}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.258819, -0.965926, 0.000000;;,  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  15; 4; 0.000000, -0.258819, -0.965926, 0.000000;;;  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 37.783663, -0.084020, -18.619134;;,
  15; 3; 37.783663, -0.084020, -18.619134;;;
  }
 }
 Animation anim-SSc18 {
  {frm-SSc18}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.258819, -0.965926, 0.000000;;,  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  15; 4; 0.000000, -0.258819, -0.965926, 0.000000;;;  # Original(0.000000, 179.999985, -30.000000) Reextracted(0.000000, 179.999985, -30.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 37.783620, -0.083970, 18.827735;;,
  15; 3; 37.783620, -0.083970, 18.827735;;;
  }
 }
 Animation anim-fuselg2 {
  {frm-fuselg2}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.965926, 0.258819, 0.000000;;,  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  15; 4; 0.000000, 0.965926, 0.258819, 0.000000;;;  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.145477, 0.091682, -19.276154;;,
  15; 3; -0.145477, 0.091682, -19.276154;;;
  }
 }
 Animation anim-SSc15 {
  {frm-SSc15}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.965926, 0.258819, 0.000000;;,  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  15; 4; 0.000000, 0.965926, 0.258819, 0.000000;;;  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 37.786531, 0.085499, -18.612316;;,
  15; 3; 37.786531, 0.085499, -18.612316;;;
  }
 }
 Animation anim-SSc16 {
  {frm-SSc16}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.965926, 0.258819, 0.000000;;,  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  15; 4; 0.000000, 0.965926, 0.258819, 0.000000;;;  # Original(179.999985, 0.000000, 30.000000) Reextracted(179.999985, 0.000000, 30.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 37.786534, 0.085499, 18.751950;;,
  15; 3; 37.786534, 0.085499, 18.751950;;;
  }
 }
 Animation anim-fuselg1 {
  {frm-fuselg1}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.707107, 0.707107, 0.000000;;,  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  15; 4; 0.000000, -0.707107, 0.707107, 0.000000;;;  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.145477, 0.091682, -19.276154;;,
  15; 3; -0.145477, 0.091682, -19.276154;;;
  }
 }
 Animation anim-SSc13 {
  {frm-SSc13}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.707107, 0.707107, 0.000000;;,  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  15; 4; 0.000000, -0.707107, 0.707107, 0.000000;;;  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 38.136564, -0.143568, -18.298211;;,
  15; 3; 38.136564, -0.143568, -18.298211;;;
  }
 }
 Animation anim-SSc14 {
  {frm-SSc14}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, -0.707107, 0.707107, 0.000000;;,  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  15; 4; 0.000000, -0.707107, 0.707107, 0.000000;;;  # Original(0.000000, 179.999985, 90.000000) Reextracted(0.000000, 179.999985, 90.000000)
  }
  AnimationKey {
  1;
  7;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  6; 3; 0.000010, 0.000010, 0.000010;;,
  7; 3; 0.750000, 0.750000, 0.750000;;,
  8; 3; 0.750000, 0.750000, 0.750000;;,
  9; 3; 0.375005, 0.375005, 0.375005;;,
  10; 3; 0.000010, 0.000010, 0.000010;;,
  15; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 38.136754, -0.143579, 18.624717;;,
  15; 3; 38.136754, -0.143579, 18.624717;;;
  }
 }
 Animation anim-ffuselg {
  {frm-ffuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.709789, 0.704415, 0.000000;;,  # Original(179.999985, 0.000000, 89.564552) Reextracted(179.999985, 0.000000, 89.564552)
  15; 4; 0.000000, 0.709789, 0.704415, 0.000000;;;  # Original(179.999985, 0.000000, 89.564552) Reextracted(179.999985, 0.000000, 89.564552)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.000006, 0.000002, -41.206642;;,
  15; 3; -0.000006, 0.000002, -41.206642;;;
  }
 }
 Animation anim-crgatt {
  {frm-crgatt}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.709789, 0.704415, 0.000000;;,  # Original(179.999985, 0.000000, 89.564552) Reextracted(179.999985, 0.000000, 89.564552)
  15; 4; 0.000000, 0.709789, 0.704415, 0.000000;;;  # Original(179.999985, 0.000000, 89.564552) Reextracted(179.999985, 0.000000, 89.564552)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.000002, 0.000000, 2.484907;;,
  15; 3; -0.000002, 0.000000, 2.484907;;;
  }
 }
  }