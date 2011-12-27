
#include <windows.h>
#include <math.h>
#include "grafik3d.h"


void _stdcall show_3D (HDC DC, int anzahl, linientype k[], short x, short y)
{
int     i;
HGDIOBJ oldpen;
    
oldpen = SelectObject(DC,Stift1);			// alten Stift merken
	
for (i=0; i<anzahl; i++){					// Mit schwarzem Stift loeschen

	MoveToEx(DC,k[i].x1,k[i].y1,NULL);
    LineTo(DC,k[i].x2,k[i].y2);  
}

SelectObject(DC,oldpen);					// neu zeichnen	

for (i=0; i<anzahl; i++){
	k[i].x1 =(long) (k[i].a.x + k[i].a.z / 2+x);
	k[i].y1 =(long) (-(k[i].a.y + k[i].a.z / 8)+y);
	k[i].x2 =(long) (k[i].b.x + k[i].b.z / 2+x);
    k[i].y2 =(long) (-(k[i].b.y + k[i].b.z / 8)+y);
	MoveToEx(DC,k[i].x1,k[i].y1,NULL);
    LineTo(DC,k[i].x2,k[i].y2);  
}
//SelectObject(DC,oldpen);
}



void _stdcall rotation (int anzahl,linientype k[],short alpha,short beta,short gamma)
{
int i;
double ax, ay, az, bx, by, bz;


if (alpha != 0) {
	for (i=0; i<anzahl; i++){
		ay = k[i].a.y;
        	az = k[i].a.z;
	        by = k[i].b.y;
        	bz = k[i].b.z;
	        k[i].a.y = ay * Cost[alpha] - az * Sint[alpha];
	        k[i].a.z = ay * Sint[alpha] + az * Cost[alpha];
	        k[i].b.y = by * Cost[alpha] - bz * Sint[alpha];
	        k[i].b.z = by * Sint[alpha] + bz * Cost[alpha];}
}
if (beta != 0){
	for (i=0; i<anzahl; i++){
		az = k[i].a.z;
	        ax = k[i].a.x;
        	bx = k[i].b.x;
	        bz = k[i].b.z;
        	k[i].a.z = az * Cost[beta] - ax * Sint[beta];
	        k[i].b.z = bz * Cost[beta] - bx * Sint[beta];
	        k[i].a.x = az * Sint[beta] + ax * Cost[beta];
	        k[i].b.x = bz * Sint[beta] + bx * Cost[beta];}
}
if (gamma != 0){
	for (i=0; i<anzahl; i++){
		ax = k[i].a.x;
        	ay = k[i].a.y;
	        bx = k[i].b.x;
	        by = k[i].b.y;
	        k[i].a.x = ax * Cost[gamma] - ay * Sint[gamma];
	        k[i].a.y = ax * Sint[gamma] + ay * Cost[gamma];
        	k[i].b.x = bx * Cost[gamma] - by * Sint[gamma];
	        k[i].b.y = bx * Sint[gamma] + by * Cost[gamma];}
}

}

void _stdcall scalierung (short anzahl,linientype k[],double scal)
{
int i;

for (i=0; i<anzahl; i++){
	k[i].a.x = k[i].a.x * scal;
        k[i].a.y = k[i].a.y * scal;
        k[i].a.z = k[i].a.z * scal;
        k[i].b.x = k[i].b.x * scal;
        k[i].b.y = k[i].b.y * scal;
        k[i].b.z = k[i].b.z * scal;}
}

void _stdcall translation (int anzahl, linientype k[],short dx,short dy,short dz)
{
int i;

for (i=0; i<anzahl; i++){
	k[i].a.x = k[i].a.x + dx;
        k[i].a.y = k[i].a.y + dy;
        k[i].a.z = k[i].a.z + dz;
        k[i].b.x = k[i].b.x + dx;
        k[i].b.y = k[i].b.y + dy;
        k[i].b.z = k[i].b.z + dz;}
}


void _stdcall Pen_3D (int PStyle,int Pwidth, BYTE r, BYTE g, BYTE b)
{

   //	Stift2 = CreatePen(PS_SOLID,Pwidth, RGB (r,g,b ));
	
}



BOOL WINAPI DllMain (HINSTANCE hDLL, DWORD dwReason, LPVOID lpReserved)
{
double r;

  switch (dwReason)
  {
    case DLL_PROCESS_ATTACH:
        /* MessageBox ( GetFocus(),
                  (LPCTSTR) "Build 1.001",
                  (LPCTSTR) "Info",
                  MB_OK | MB_SYSTEMMODAL); */

    	r= 3.141592653589793285/180;
    	Sint[2]=sin(r*358);
    	Cost[2]=cos(r*358);
    	Sint[1]=sin(r*2);
    	Cost[1]=cos(r*2);
    	Stift1=CreatePen(PS_SOLID,1,0);
    	Stift2=CreatePen(PS_SOLID,1,0xffffff);
        break;

    case DLL_PROCESS_DETACH:
	    DeleteObject(Stift1);
    	DeleteObject(Stift2);	
      	break;
  }

return TRUE;
}






