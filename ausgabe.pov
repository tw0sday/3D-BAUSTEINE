//==========================================================

// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 24.02.2002 Zeit: 23:13:04

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

// Objekt: 1 0 .#Neu XY        


#declare XY=// Objekt: 2 CSG-Differenz  1


difference{
// Objekt: 3 Quader         

box{ < 0, 0, 0> , < 1, 1,-1> 
scale < 8, 2, 7> rotate < 0, 0, 0> translate < 0, 0, 0> 
}
// Objekt: 4 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1
scale < 1, 4, 1> rotate < 0, 0, 0> translate < 2,-1,-2> 
}
// Objekt: 5 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1
scale < 1, 4, 1> rotate < 0, 0, 0> translate < 6,-1,-2> 
}
// Objekt: 6 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1
scale < 1, 4, 1> rotate < 0, 0, 0> translate < 2,-1,-5> 
}
// Objekt: 7 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1
scale < 1, 4, 1> rotate < 0, 0, 0> translate < 6,-1,-5> 
}

scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 0> 
 pigment {rgb < 1, 1, 1> }}


// Objekt: 8 CSG-Ende       2

// Objekt: 9 XY             


object { XY             
scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 11> 
texture {Brass_Metal}}
// Objekt: 10 XY             


object { XY             
scale < 1, 1, 1> rotate < 90, 0, 0> translate <-12, 0, 10> 
texture {Polished_Chrome}}

