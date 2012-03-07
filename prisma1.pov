//==========================================================

// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber 

// POV 2 Datei Datum: 07.02.2002 Zeit: 11:34:35

//==========================================================

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


// Standardeinstellungen: 

background {color White}

camera {location <15,8,-15> look_at <0,0,0>}

light_source {<5,10,-20> color White}


plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}

plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}

plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}

// Objekt: 1 Prisma         

prism { linear_sweep linear_spline 0,1,4, < 0, 0>  < 1, 0>  < .5, .8659>  < 0, 0> scale < 9, 7, 9> rotate < 180,-90,-10> translate < 4, 8,-12>  pigment { color red  .5019 green  1 blue  .7725 }}


