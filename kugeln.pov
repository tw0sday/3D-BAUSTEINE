//==========================================================

// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 09.02.2002 Zeit: 16:14:06

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
// #include "rdgranit.map"

// Standardeinstellungen: 

background {color White}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}

plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}

plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}

// Objekt: 1 Kugel   weiss-blaue Kugel        

sphere{ < 2, 2,-2> , 2 pigment { agate  color_map {[0.5 color Blue] [1 color White]}}}


// Objekt: 2 Kugel   Kugel aus Holz        

sphere{ < 2, 2,-6> , 2 pigment {DMFWood4}} 

//{wood  color_map {[0 color Brown] [0.5 color DarkBrown][1 color Brown]}}}


// Objekt: 3 Kugel   rot-gelb gestreifte Kugel         

sphere{ < 2, 2,-10> , 2 pigment {gradient <0,1,0>  
     color_map {[0 color Yellow] [0.5 color Red][1 color Yellow]}}} 

// Objekt: 4 Kugel   rot-gelb aus Granit         

sphere{ < 7, 2,-2> , 2 pigment {granite }} //color_map {M_RedGranite}scale 1}}

// Objekt: 5 Kugel   Kugel aus Marmor        

sphere{ < 7, 2,-6> , 2 pigment { agate  color_map {[0.5 color White] [0.7 color Gray][0.9 color White]}}}   


// Objekt: 6 Kugel   Kugel aus Silver        

sphere{ < 7, 2,-10> , 2 pigment {color Silver} normal {bumps  0.2 scale 0.1} 
     finish {reflection 0.7  phong 0.8 phong_size 80 }}

// Objekt: 7 Kugel   Kugel aus Gold        

sphere{ < 11, 2,-2> , 2 pigment {color Gold } finish {reflection 0.8 }}


// Objekt: 7 Kugel   Kugel         

sphere{ < 11, 2,-2> , 2 pigment {color Gold } finish {reflection 0.8}}  

// Objekt: 8 Kugel   würfel aus Glas        

box{ < 10, 0,-5> , <12,2,-7> pigment {color White filter 0.01} 
     finish {reflection 0.1 refraction 0.1 ior 1.5 phong 0.8 phong_size 80}}
