//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 05.02.2002 Zeit: 22:20:57

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

background {color White}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


 plane {<0,1,0> 0 translate <0,0,0> pigment {checker color White color Black} finish {ambient 0.3}}

//plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}

//plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}

// Objekt: 1 Pyramide       

prism { conic_sweep linear_spline 1,0,5, <1,1>,  <0,1> , <0,0> , <1,0>,  <1,1> scale <5,5,5> rotate <180,0,0> translate <0,5,0>  pigment { color red 0 green 1 blue 1 }}


// Objekt: Prisma 

prism { linear_sweep linear_spline 1,0,5, <1,1>,  <0,1> , <0,-1> , <1,0>, <1,1> scale <1,2,3> rotate <180,0,0> translate <12,5,-5>  pigment { color red 1 green 1 blue 1 }}