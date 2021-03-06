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

Frame frm-wep06d {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbar {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.000001,1.000000;;
 }
Mesh wepbar {
 30;
 0.011535;0.006778;-0.443264;,
 -0.011535;-0.006542;-0.443264;,
 0.000000;-0.013201;-0.443264;,
 -0.011535;0.006778;-0.443264;,
 0.000000;0.013438;-0.443264;,
 0.011535;-0.006542;-0.443264;,
 0.011535;-0.006542;-0.443264;,
 0.000000;0.013438;-0.443264;,
 -0.011535;0.006778;-0.443264;,
 0.000000;-0.013201;-0.443264;,
 -0.011535;-0.006542;-0.443264;,
 0.033521;0.019472;0.000035;,
 0.033521;-0.019235;0.000035;,
 0.000000;-0.038588;0.000035;,
 -0.033521;-0.019235;0.000035;,
 -0.033521;0.019472;0.000035;,
 0.000000;0.038825;0.000035;,
 0.012833;0.007527;-0.293405;,
 0.028482;-0.016326;-0.370103;,
 0.012832;-0.007291;-0.293405;,
 0.000000;-0.032770;-0.370103;,
 0.000000;-0.014699;-0.293405;,
 -0.028482;-0.016326;-0.370103;,
 -0.012833;-0.007291;-0.293405;,
 -0.028482;0.016562;-0.370103;,
 -0.012833;0.007527;-0.293405;,
 0.000000;0.033006;-0.370103;,
 0.000000;0.014936;-0.293405;,
 0.011535;0.006778;-0.443264;,
 0.028482;0.016562;-0.370103;;

 40;
 3;26,27,17;,
 3;29,26,17;,
 3;24,25,27;,
 3;26,24,27;,
 3;20,22,1;,
 3;2,20,1;,
 3;18,20,2;,
 3;5,18,2;,
 3;22,23,25;,
 3;24,22,25;,
 3;22,24,3;,
 3;1,22,3;,
 3;29,18,5;,
 3;0,29,5;,
 3;20,21,23;,
 3;22,20,23;,
 3;24,26,4;,
 3;3,24,4;,
 3;29,17,19;,
 3;18,29,19;,
 3;18,19,21;,
 3;20,18,21;,
 3;26,29,0;,
 3;4,26,0;,
 3;28,6,9;,
 3;7,28,9;,
 3;10,8,7;,
 3;9,10,7;,
 3;12,13,19;,
 3;13,21,19;,
 3;11,17,27;,
 3;16,11,27;,
 3;16,27,25;,
 3;15,16,25;,
 3;15,25,23;,
 3;14,15,23;,
 3;14,23,21;,
 3;13,14,21;,
 3;12,19,17;,
 3;11,12,17;;

 MeshMaterialList {
  2;
  40;
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
  1,
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
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "Wep06c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "Wep06c.bmp";
 }
 }
}
 MeshNormals {
  30;
  0.547520;0.474167;-0.689483;,
  -0.547521;-0.474167;-0.689483;,
  0.115416;-0.599718;-0.791844;,
  -0.807646;0.279777;-0.519070;,
  -0.115416;0.599718;-0.791844;,
  0.807646;-0.279777;-0.519070;,
  0.807646;-0.279777;-0.519070;,
  -0.115416;0.599718;-0.791844;,
  -0.807646;0.279777;-0.519070;,
  0.115416;-0.599718;-0.791844;,
  -0.547521;-0.474167;-0.689483;,
  0.753525;0.652572;-0.079690;,
  0.941906;-0.326286;-0.079690;,
  0.188381;-0.978858;-0.079689;,
  -0.753525;-0.652572;-0.079689;,
  -0.941906;0.326286;-0.079689;,
  -0.188381;0.978858;-0.079690;,
  0.864414;0.497085;0.075460;,
  0.755845;-0.654581;-0.014936;,
  0.862695;-0.500062;0.075460;,
  -0.188961;-0.981871;-0.014936;,
  -0.001719;-0.997147;0.075460;,
  -0.944806;-0.327290;-0.014936;,
  -0.864414;-0.497085;0.075460;,
  -0.755844;0.654581;-0.014936;,
  -0.862695;0.500062;0.075460;,
  0.188961;0.981871;-0.014936;,
  0.001719;0.997147;0.075460;,
  0.547520;0.474167;-0.689483;,
  0.944806;0.327290;-0.014936;;

  40;
  3;26,27,17;,
  3;29,26,17;,
  3;24,25,27;,
  3;26,24,27;,
  3;20,22,1;,
  3;2,20,1;,
  3;18,20,2;,
  3;5,18,2;,
  3;22,23,25;,
  3;24,22,25;,
  3;22,24,3;,
  3;1,22,3;,
  3;29,18,5;,
  3;0,29,5;,
  3;20,21,23;,
  3;22,20,23;,
  3;24,26,4;,
  3;3,24,4;,
  3;29,17,19;,
  3;18,29,19;,
  3;18,19,21;,
  3;20,18,21;,
  3;26,29,0;,
  3;4,26,0;,
  3;28,6,9;,
  3;7,28,9;,
  3;10,8,7;,
  3;9,10,7;,
  3;12,13,19;,
  3;13,21,19;,
  3;11,17,27;,
  3;16,11,27;,
  3;16,27,25;,
  3;15,16,25;,
  3;15,25,23;,
  3;14,15,23;,
  3;14,23,21;,
  3;13,14,21;,
  3;12,19,17;,
  3;11,12,17;;
 }
 MeshTextureCoords {
 30;
 0.371346;0.108870;,
 0.371094;0.141131;,
 0.371220;0.157261;,
 0.371094;0.108870;,
 0.371220;0.092739;,
 0.371346;0.141131;,
 0.971511;0.475254;,
 0.931641;0.338555;,
 0.891770;0.384121;,
 0.931641;0.520821;,
 0.891770;0.475254;,
 0.976562;0.078125;,
 0.976562;0.171875;,
 0.976197;0.218750;,
 0.975831;0.171875;,
 0.975831;0.078125;,
 0.976197;0.031250;,
 0.575876;0.107055;,
 0.471375;0.164829;,
 0.575876;0.142945;,
 0.471064;0.204657;,
 0.575736;0.160889;,
 0.470753;0.164828;,
 0.575595;0.142945;,
 0.470753;0.085172;,
 0.575595;0.107055;,
 0.471064;0.045343;,
 0.575736;0.089111;,
 0.971511;0.384122;,
 0.471375;0.085172;;
 }
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000079,0.443318,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-wepbar {
  {frm-wepbar}
  AnimationKey {
  2;
  15;
  0; 3; 0.000000, 0.000000, 0.000001;;,
  1; 3; 0.000000, 0.000000, 0.004294;;,
  2; 3; 0.000000, 0.000000, 0.070003;;,
  3; 3; 0.000000, 0.000000, 0.135713;;,
  4; 3; 0.000000, 0.000000, 0.106314;;,
  5; 3; 0.000000, 0.000000, 0.040605;;,
  6; 3; 0.000000, 0.000000, 0.025105;;,
  7; 3; 0.000000, 0.000000, 0.090815;;,
  8; 3; 0.000000, 0.000000, 0.151212;;,
  10; 3; 0.000000, 0.000000, 0.019794;;,
  11; 3; 0.000000, 0.000000, 0.045917;;,
  12; 3; 0.000000, 0.000000, 0.111626;;,
  13; 3; 0.000000, 0.000000, 0.130401;;,
  14; 3; 0.000000, 0.000000, 0.064692;;,
  15; 3; 0.000000, 0.000000, 0.000001;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000079, -0.443318;;,
  15; 3; 0.000000, 0.000079, -0.443318;;;
  }
 }
  }

