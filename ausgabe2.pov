//==========================================================

// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 15.02.2002 Zeit: 21:23:29

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

background {color White}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}

plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}

plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}

// Objekt: 1 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 2 ,-2 > pigment {color Gold} finish {reflection 0.8}}// Objekt: 2 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 2 ,-6 > pigment {color Silver} finish {reflection 0.8}}// Objekt: 3 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 2 ,-10 > texture {Chrome_Metal}}// Objekt: 4 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 2 ,-14 > pigment {color White filter 0.9} finish {reflection 0.1 ior 1.5}}// Objekt: 5 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 6 , 2 ,-2 > texture {White_Marble}}// Objekt: 6 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 6 , 2 ,-6 > texture {Red_Marble}}// Objekt: 7 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 6 , 2 ,-10 > texture {DMFWood4}}// Objekt: 8 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 6 , 2 ,-14 > texture {DMFWood6}}
