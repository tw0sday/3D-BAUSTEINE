//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 15.02.2002 Zeit: 23:15:18

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

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 , 15 > texture {Chrome_Metal}}// Objekt: 2 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 , 11 > texture {Brass_Metal}}// Objekt: 3 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 , 7 > texture {Gold_Metal}}// Objekt: 4 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 , 3 > texture {Silver_Metal}}// Objekt: 5 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 ,-1 > texture {Bronze_Metal}}// Objekt: 6 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-15 , 2 ,-5 > texture {Copper_Metal}}// Objekt: 7 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 , 15 > texture {Polished_Chrome}}// Objekt: 8 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 , 11 > texture {Polished_Brass}}// Objekt: 9 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 , 7 > texture {Aluminum}}// Objekt: 10 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 , 3 > texture {Rusty_Iron}}// Objekt: 11 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 ,-1 > texture {Brown_Agate}}// Objekt: 12 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-10 , 2 ,-5 > texture {Sapphire_Agate}}// Objekt: 13 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 , 15 > texture {Pink_Granite}}// Objekt: 14 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 , 11 > texture {PinkAlabaster}}// Objekt: 15 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 , 7 > texture {White_Marble}}// Objekt: 16 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 , 3 > texture {Red_Marble}}// Objekt: 17 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 ,-1 > texture {Jade}}// Objekt: 18 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate <-5 , 2 ,-5 > texture {Blue_Sky2}}// Objekt: 19 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 , 15 > texture {Blood_Sky}}// Objekt: 20 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 , 11 > texture {Glass3}}// Objekt: 21 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 , 7 > texture {Green_Glass}}// Objekt: 22 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 , 3 > texture {Ruby_Glass}}// Objekt: 23 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 ,-1 > texture {NBwinebottle}}// Objekt: 24 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 0 , 2 ,-5 > texture {NBbeerbottle}}// Objekt: 25 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 , 15 > texture {Water}}// Objekt: 26 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 , 11 > texture {Candy_Cane}}// Objekt: 27 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 , 7 > texture {Peel}}// Objekt: 28 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 , 3 > texture {Lightening1}}// Objekt: 29 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 ,-1 > texture {Starfield}}// Objekt: 30 Kugel          

sphere{ < 0 , 0 , 0 > , 1 scale < 2 , 2 , 2 > rotate < 0 , 0 , 0 > translate < 5 , 2 ,-5 > texture {Rosewood}}
