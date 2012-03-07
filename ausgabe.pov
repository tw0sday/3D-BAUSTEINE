//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 06.03.2002 Zeit: 21:03:31

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

sky_sphere { pigment { Bright_Blue_Sky}}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Silver} 

finish {ambient 0.3 reflection 0.3}}

plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}

plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}

// Objekt: 1 Quader         

box{ < 0, 0, 0> , < 1, 1,-1> 
scale < 7, 2, 4> rotate < 0, 30, 0> translate < 2, 0,-2> 
 pigment {rgb < 0, 1, 1> }}



