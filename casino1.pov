//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 19.02.2002 Zeit: 00:47:16

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

sky_sphere { pigment { Bright_Blue_Sky}}

camera {location <18,9,-18> look_at <0,1,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Silver} finish {ambient 0.3}}

// Objekt: 1 1 .CSG-Vereinigung


union{
// Objekt: 2 Disc           

disc{ < 0, 0, 0> , <0,1,0>, 1, .3scale < 10, 1, 10> rotate < 0, 0, 0> translate < 0, .01, 0> 
}
// Objekt: 3 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1scale < 1, 6, 1> rotate < 0, 0, 0> translate <-9, 0, 0> 
}
// Objekt: 4 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1scale < 1, 6, 1> rotate < 0, 0, 0> translate < 9, 0, 0> 
}
// Objekt: 5 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1scale < 1, 6, 1> rotate < 0, 0, 0> translate < 0, 0, 9> 
}
// Objekt: 6 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1scale < 1, 6, 1> rotate < 0, 0, 0> translate < 0, 0,-9> 
}
// Objekt: 7 1 .CSG-Durchschnit


intersection{
// Objekt: 8 Kugel          

sphere{ < 0, 0, 0> , 1scale < 100, 100, 100> rotate < 0, 0, 0> translate < 0, 106, 0> 
}
// Objekt: 9 Kugel          

sphere{ < 0, 0, 0> , 1scale < 100, 100, 100> rotate < 0, 0, 0> translate < 0,-92, 0> 
}
scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 0> 
texture {Ruby_Glass}}
// Objekt: 10 CSG-Ende       7

scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 0> 
texture {Ruby_Glass}}
// Objekt: 11 CSG-Ende       7

// Objekt: 12 Kegel          

cone{ < 0, 0, 0> , 1, < 0, 1, 0> ,0scale < 2, 5, 2> rotate < 0, 0, 0> translate < 0, 8, 0> 
texture {Gold_Metal}}
// Objekt: 13 4 .CSG-Vereinigung


union{
// Objekt: 14 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 0, 8, 8> 
}
// Objekt: 15 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 4, 8, 7> 
}
// Objekt: 16 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 7, 8, 4> 
}
// Objekt: 17 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 8, 8, 0> 
}
// Objekt: 18 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 7, 8,-4> 
}
// Objekt: 19 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 4, 8,-7> 
}
// Objekt: 20 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate < 0, 8,-8> 
}
// Objekt: 21 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate <-4, 8,-7> 
}
// Objekt: 22 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate <-7, 8,-4> 
}
// Objekt: 23 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate <-8, 8, 0> 
}
// Objekt: 24 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate <-7, 8, 4> 
}
// Objekt: 25 Kugel          

sphere{ < 0, 0, 0> , 1scale < .5, .5, .5> rotate < 0, 0, 0> translate <-4, 8, 7> 
}
scale < 1, 1, 1> rotate < 0, 0, 0> translate < 0, 0, 0> 
texture {Polished_Chrome}}
// Objekt: 26 CSG-Ende       13

// Objekt: 27 Zylinder       

cylinder{ < 0, 0, 0> , < 0, 1, 0> , 1scale < 2, 1, 2> rotate < 0, 0, 0> translate < 0, 0, 0> 
texture {Water}}
// Objekt: 28 Kugel          

sphere{ < 0, 0, 0> , 1scale < 2, 2, 2> rotate < 0, 0, 0> translate < 0, 2, 0> 
texture {Polished_Brass}}

