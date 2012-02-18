//==========================================================

// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 15.02.2002 Zeit: 22:45:11

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

background {color White}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}


// Objekt: 1 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 , 15 > texture {Chrome_Metal}}// Objekt: 2 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 , 11 > texture {Brass_Metal}}// Objekt: 3 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 , 7 > texture {Gold_Metal}}// Objekt: 4 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 , 3 > texture {Silver_Metal}}// Objekt: 5 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 ,-1 > texture {Bronze_Metal}}// Objekt: 6 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 ,-5 > texture {Copper_Metal}}// Objekt: 7 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 ,-9 > texture {Polished_Chrome}}// Objekt: 8 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-8 , 0 ,-13 > texture {Polished_Brass}}// Objekt: 9 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 , 15 > texture {Aluminum}}// Objekt: 10 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 , 11 > texture {Rusty_Iron}}// Objekt: 11 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 , 7 > texture {Brown_Agate}}// Objekt: 12 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 , 3 > texture {Sapphire_Agate}}// Objekt: 13 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 ,-1 > texture {Pink_Granite}}// Objekt: 14 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 ,-5 > texture {PinkAlabaster}}// Objekt: 15 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 ,-9 > texture {White_Marble}}// Objekt: 16 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-3 , 0 ,-13 > texture {Red_Marble}}// Objekt: 17 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 , 15 > texture {Jade}}// Objekt: 18 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 , 11 >  pigment {rgb < 1 , 0 , 0 > }}

// Objekt: 19 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 , 7 >  pigment {rgb < 1 , 0 , 0 > }}

// Objekt: 20 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 , 3 > texture {Rosewood}}// Objekt: 21 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 ,-1 > texture {Cherry_Wood}}// Objekt: 22 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 ,-5 > texture {Tan_Wood}}// Objekt: 23 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 ,-9 > texture {Pine_Wood}}// Objekt: 24 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 2 , 0 ,-13 > texture {Dark_Wood}}// Objekt: 25 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 , 15 > texture {White_Wood}}// Objekt: 26 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 , 11 > texture {DMFWood4}}// Objekt: 27 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 , 7 > texture {DMFWood6}}// Objekt: 28 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 , 3 >  pigment {rgb < 1 , 0 , 0 > }}

// Objekt: 29 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 ,-1 >  pigment {rgb < 1 , 0 , 0 > }}

// Objekt: 30 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 ,-5 > texture {Glass3}}// Objekt: 31 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 ,-9 > texture {Green_Glass}}// Objekt: 32 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 7 , 0 ,-13 > texture {Ruby_Glass}}
