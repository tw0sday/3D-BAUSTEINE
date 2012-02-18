//==========================================================

// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 18.02.2002 Zeit: 23:29:26

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

sky_sphere { pigment { Bright_Blue_Sky}}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}

// Objekt: 1 1 .CSG-Differenz  


difference{
// Objekt: 2 Würfel         

box{ < 0, 0, 0> , < 1, 1,-1> scale < 6, 6, 6> rotate < 0, 0, 0> translate <-2, 0, 7> 
}
// Objekt: 3 Quader         

box{ < 0, 0, 0> , < 1, 1,-1> scale < 4, 4, 8> rotate < 0, 0, 0> translate <-1, 1, 8> 
}
// Objekt: 4 Quader         

box{ < 0, 0, 0> , < 1, 1,-1> scale < 8, 4, 4> rotate < 0, 0, 0> translate <-3, 1, 6> 
}
// Objekt: 5 Quader         

box{ < 0, 0, 0> , < 1, 1,-1> scale < 4, 8, 4> rotate < 0, 0, 0> translate <-1,-1, 6> 
}
scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 0> 
texture {PinkAlabaster}}
// Objekt: 6 CSG-Ende       1

// Objekt: 7 Kugel          

sphere{ < 0, 0, 0> , 1scale < 3, 3, 3> rotate < 0, 0, 0> translate < 1, 3, 4> 
texture {Lightening1}}

