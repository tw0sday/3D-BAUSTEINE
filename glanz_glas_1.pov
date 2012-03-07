//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 17.02.2002 Zeit: 21:19:05

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

sphere{ < 0 , 0 , 0 > , 1 scale < 3 , 3 , 3 > rotate < 0 , 0 , 0 > translate < 4 , 3 ,-4 > 
texture {Polished_Chrome}}// Objekt: 2 Kegel          

cone{ < 0 , 0 , 0 > , 1 , < 0 , 1 , 0 > ,0scale < 2 , 4 , 2 > rotate < 0 , 0 , 0 > translate < 10 , 0 ,-4 > 
texture {Copper_Metal}}// Objekt: 3 Disc           

disc{ < 0 , 0 , 0 > , <0,1,0>, 1 , .3333 scale < 3 , 1 , 3 > rotate < 0 , 0 , 0 > translate < 8 , 9.999 ,-9 > 
texture {Gold_Metal}}// Objekt: 4 Zylinder       

cylinder{ < 0 , 0 , 0 > , < 0 , 1 , 0 > , 1 scale < 2 , 1 , 2 > rotate < 0 , 0 , 0 > translate < 8 , 0 ,-9 > 
texture {Polished_Brass}}// Objekt: 5 W�rfel         

box{ < 0 , 0 , 0 > , < 1 , 1 ,-1 > scale < 2 , 2 , 2 > rotate < 45 , 0 , 45 > translate < 8 , 1 ,-9 > 
texture {PinkAlabaster}}// Objekt: 6 Quader         

box{ < 0 , 0 , 0 > , < 1 , 1 ,-1 > scale < 2 , 5 , 3 > rotate < 0 ,-30 , 10 > translate < 2 , 0 ,-10 > 
texture {NBbeerbottle}}
