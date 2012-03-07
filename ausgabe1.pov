//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 15.02.2002 Zeit: 15:30:45

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

difference {
// Objekt: 1 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 3 , 3 , 3 > rotate < 0 , 0 , 0 > translate < 4 , 3 ,-4 >  pigment { color red  1  green  0  blue  0  }}

// Objekt: 2 Quader         

box{ < 0 , 0 , 0 > , < 1 , 1 ,-1 > scale < 1 , 5 , 1 > rotate < 0 , 0 , 0 > translate < 4 , 3 ,-4 >  pigment { color red  1  green  0  blue  1  }}

 }
