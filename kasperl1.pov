//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 17.02.2002 Zeit: 22:19:28

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

sky_sphere { pigment { Bright_Blue_Sky}}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}

// Objekt: 1 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 3 , 3 , 3 > rotate < 0 , 0 , 0 > translate < 5 , 4 ,-6 > 
texture {NBwinebottle}}// Objekt: 2 Zylinder       

cylinder{ < 0 , 0 , 0 > , < 0 , 1 , 0 > , 1 scale < 1 , 2 , 1 > rotate < 0 , 0 , 0 > translate < 5 , 0 ,-6 > 
texture {Candy_Cane}}// Objekt: 3 Zylinder       

cylinder{ < 0 , 0 , 0 > , < 0 , 1 , 0 > , 1 scale < 1 , 4 , 1 > rotate <-90 , 0 , 0 > translate < 5 , 4 ,-8 > 
texture {Ruby_Glass}}// Objekt: 4 Disc           

disc{ < 0 , 0 , 0 > , <0,1,0>, 1 , 0 scale < 2 , 1 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 6.900 ,-6 > 
texture {Gold_Metal}}// Objekt: 5 Kegel          

cone{ < 0 , 0 , 0 > , 1 , < 0 , 1 , 0 > ,0scale < 1 , 4 , 1 > rotate < 0 , 0 , 0 > translate < 5 , 6.900 ,-6 > 
texture {Polished_Brass}}// Objekt: 6 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < .3000 , .3000 , .3000 > rotate < 0 , 0 , 0 > translate < 5 , 11 ,-6 > 
texture {Jade}}// Objekt: 7 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < .5 , .5 , .5 > rotate < 0 , 0 , 0 > translate < 3 , 5 ,-8 > 
texture {Lightening1}}// Objekt: 8 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < .5 , .5 , .5 > rotate < 0 , 0 , 0 > translate < 7 , 5 ,-8 > 
texture {Lightening1}}// Objekt: 9 Disc           

disc{ < 0 , 0 , 0 > , <0,1,0>, 1 , 0 scale < 5 , 1 , 5 > rotate < 0 , 0 , 0 > translate < 5 , 0.01 ,-6 > 
texture {Water}}
