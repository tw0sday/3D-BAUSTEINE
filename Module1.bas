Attribute VB_Name = "MODULE1"
'****************************************************************************************
'  Programm: Modul1.bas             3 D - B A U K A S T E N             Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung:                                                Datum:  29.1.2002
'  Vereinbarung der komplexen Datentypen und Datenstrukturen sowie Globaler Variablen
'  Modul zur 3D-Ausgabe von "Drahmodellen"
'  benötigt CPP-DLL graf3d32.DLL zur schnelleren Ausgabe in 3D-Picture
'****************************************************************************************
'  Änderungen: Neu: Objektkoordinatenursprung in POV_Obj                        29.1.2002
'
'****************************************************************************************
'            D a t e n s t r u k t u r e n  u n d   S t r u k t u r v a r i a b l e n
'****************************************************************************************

Option Explicit

' *** Datenstrukturen zur Verwaltung der Oberfläche ***

Type View_typ                   'Strukturvariable für Ansichten
  name As String * 5            'Name xy,yz,xz,d3
  pic As PictureBox             'Verweis auf entsprechende Picturebox
  
  x0 As Single                  'Koordinaten-Nullpunkt (in Scaleeinheiten)
  y0 As Single                  'Koordinaten-Nullpunkt (in Scaleeinheiten)
  dx As Single                  'letzte draw x-pos (in ScaleKoordinateneinheiten)
  dy As Single                  'letzte draw y-pos (in ScaleKoordinateneinheiten)
  xneu As Single                'aktuelle Position in Koordinaten
  yneu As Single                'aktuelle Position in Koordinaten
  xalt As Single                'letzte Position in Koordinaten
  yalt As Single                'letzte Position in Koordinaten
  mx As Single                  'Vergrösserungsfaktor in x-Richtung
  my As Single                  'Vergrösserungsfaktor in y-Richtung
  sx As Integer                 'Spiegelung des Koordinatensystems in x-Richtung
  sy As Integer                 'Spiegelung in y-Richtung
  twist As Boolean              'Vertauschen der Koordinatenachsen
  grid As Boolean               'Hintergrundraster
  cur As Integer                'Cursorart
End Type

Global View(1 To 4) As View_typ 'Array der Views1.-4. View'

Type R2_Point                   'Punkt im R2
  x As Single
  y As Single
End Type


Global akti%, akta%             'Index des akt. Views im view-Array / letzten aktiven V.
Global zoomf!, d3zoomf!         'Zoomfaktor
Global Itool, Itool2            ' Toolbar Indizes
Global pcount%                                 'Punktzähler für Markierung
Global aktp As R2_Point         'Übergabeparameter für Punkt

'****************************************************************************************
' *** Datenstrukturen zur Verwaltung der Objekte  ***

Type R3_Point                   'Punkttyp oder Vektor im R3
  x As Single
  y As Single
  z As Single
End Type

Type POV_Object                 'Datenstuktur für POV-Objekt'
  typ As Integer                'Objekttyp 1,2,...
  bez As String * 15            'Bezeichnung z.B. Kugel 1
  POV As Variant                'Pov-Bezeichnung z.B. sphere, box,...
  P() As R3_Point               'Punkt 1-n dynamisches Array!
                                'Kugel 1 Punkt, Dreieck 3 Punkte ...
  scale As R3_Point             'eigentlich Skalierungs-Zahlentripel!
  rot As R3_Point               'eigentlich Winkel- Zahlentripel!
  trans As R3_Point             'Verschiebungsvektor
  P00 As R3_Point               'Objekt- POV-Ursprungsverschiebung
  
  r() As Single                 'Groessenangabe zB. Radius 1 od Distanz
                                'wieder dynamisches Array
  defcol As Long                'Default Farbe (Long 4 Byte Zuweisung)
  texi  As Integer              'Index im Textur_Array 0 => defcolor
End Type
  
Global obj() As POV_Object      'Dynamisches Array der POV-Object Struktur
Global akto%                    'Index des akt. Objekts im obj-Array
Global objmax                   'groesse des obj-Arrays


'****************************************************************************************
'***            Datenstrukturen zur Verwaltung der 3D-Ansicht                         ***
'****************************************************************************************

Type punkttype
        x As Double             ' kartesische Koordinaten
        y As Double             ' C-kompatible Typen notwendig!
        z As Double
End Type

Global scal As Double
Global Const pi = 3.14159265358979
Global Const r = pi / 180


    Type linientype             ' Übergabetyp für C-DLL
        a As punkttype          ' Linie von A nach B
        b As punkttype
        x1 As Long              ' Punkte im R2 Bildschirm
        y1 As Long              ' x1,y1   Anfangspunkt
        x2 As Long              ' x2,y2   Endpunkt der Linie
        y2 As Long              ' C-kompatible Datentypen!
    End Type
        
    Type Kante
        AI As Integer           'INDEX auf Anfangspunkt der Kante
        ei As Integer           'INDEX auf Endpunkt der Kante (max 32768 Punkte)
        typ As Integer          'Codierte Linientypen (z.Z. Reserve)
    End Type

Type D3_Körper
  V() As R3_Point               'Dyn. Array der Punkte (Vertices)
  TM(1 To 4, 1 To 4)            'Transformationsmatrix
  e() As Kante                  'Dyn. Array Kanten
  KO() As linientype            'Dynamisches Array der 3D dargestellten Kanten
  farbe As Long                 'wird mit nl gefüllt und an C-DLL übergeben
End Type


Global D3obj() As D3_Körper     'Dynamisches Array von Körpern
Global d3akto As Integer        'aktueller 3DKörper
Global POV_ID                   'ID des POV-Renderfensters

'****************************************************************************************
'               3 D - F e n s t e r - M a n i p u l a t i o n  ( K a m e r a )
'****************************************************************************************

'3D-Zeichenroutinen wurden aus Performancegründen in C-DLL implementiert
'hier sind die Übergabeparameter definiert

Declare Sub show_3D Lib _
  "c:\3dbau\graf3d32.DLL" (ByVal hDC&, ByVal anzahl%, l As linientype, ByVal x%, ByVal y%)

Declare Sub rotation Lib _
  "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal alpha%, ByVal beta%, ByVal gamma%)

Declare Sub scalierung Lib _
  "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal scal As Double)

Declare Sub translation Lib _
  "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal dx%, ByVal dy%, ByVal dz%)

'Declare Sub Pen_3D Lib _
  "c:\3dbau\graf3d32.DLL" (ByVal Pstyle%, ByVal Pwidth%, r As Byte, g As Byte, b As Byte)

'****************************************************************************************
'               D a t e n s t r u k t u r  -  M a n i p u l a t i o n
'****************************************************************************************

Sub nl(x1!, y1!, z1!, x2!, y2!, z2!)        'neue Linie in 3D-Kantenliste einfügen
Dim anzahl%
  anzahl = UBound(D3obj(d3akto).KO)         'Anzahl Linien bestimmen
  ReDim Preserve D3obj(d3akto).KO(anzahl + 1)  ' Neue Linie anhängen
  With D3obj(d3akto).KO(anzahl)
   ' anzahl = UBound(.k)                    ' Anzahl Linien bestimmen
 
    .a.x = y1 * 40
    .a.y = z1 * 40                          ' KOORDINATENTRANSFORMATION !!!
    .a.z = -x1 * 40                         ' KOORDINATENTRANSFORMATION !!!
    .b.x = y2 * 40                          ' gegenüber C-DLL
    .b.y = z2 * 40
    .b.z = -x2 * 40                         ' Steckungsfaktor 40
    .x1 = x1 * 40
    .y1 = y1 * 40
    .x2 = x2 * 40
    .y2 = y2 * 40
 
 Rem Debug.Print "newline " & d3akto, anzahl & " < " & x1 & " " & y1 & " " & z1 & " > _
 " & " < " & x2 & " " & y2 & " " & z2
  
  End With
End Sub
'****************************************************************************************


Private Sub PrintP(Text)                    'Hilfsprogramm zur Ausgabe der Punktdaten
Dim Pin%                                    'im Direktfenster
    Debug.Print Text;                       'z.B. Aufrufendes Modul
    Debug.Print "Körper:"; d3akto; obj(d3akto).bez
    For Pin = 1 To UBound(D3obj(d3akto).V)  'Alle Punkte des aktuellen Körpers
      With D3obj(d3akto).V(Pin)
        Debug.Print Pin; "<"; .x; .y; .z; ">"   'im Direktfenster drucken
      End With
    Next Pin
End Sub
'****************************************************************************************

Private Sub FP(x, y, z)                     'FillPoint - Punktkoordinaten einfügen
Dim Pin%

  Pin = UBound(D3obj(d3akto).V)             'Anzahl der Punkte bestimmen
  ReDim Preserve D3obj(d3akto).V(Pin + 1)   'Anzahl erhöhen
    With D3obj(d3akto)
      .V(Pin).x = x - .V(0).x               'Punktkoordinaten
      .V(Pin).y = y - .V(0).y               'relativ zum lok. Koordinatenursprung!
      .V(Pin).z = z - .V(0).z
      'Debug.Print "FP "; Pin; "<"; x, y, z; ">"
    End With
End Sub
'****************************************************************************************

Private Sub FE(Anf, Ende)                   'FillEdge - Kantenpunkte Indizes einfügen
Dim Ein%

  Ein = UBound(D3obj(d3akto).e)             'Anzahl der Kanten bestimmen
  ReDim Preserve D3obj(d3akto).e(Ein + 1)   'Anzahl erhöhen
    With D3obj(d3akto).e(Ein)
      .AI = Anf                             'Index des AnfangsPunktes
      .ei = Ende                            'Index des Endpunktes
            
      'Debug.Print "FE"; Ein; "<<"; .AI; .EI; ">>"
    End With
End Sub

'****************************************************************************************

Function Param(str1 As String) As Integer   'ersten (Parameter) aus String str1
  Dim pos1%, pos2%                          'extrahieren
  
  Dim anz As String
  
  anz = "0": pos1 = 0: pos2 = 0
  
  pos1 = InStr(str1, "(")
  pos2 = InStr(str1, ")")
  
  If (pos1 < pos2) And (pos2 < Len(str1)) Then
      anz = Mid$(str1, pos1 + 1, pos2 - pos1)
  End If
  Param = Abs(Val(anz))
 Debug.Print "Prisma :"; anz
End Function


'****************************************************************************************
'                   G r a p h i k - T r a n s f o r m a t i o n
'****************************************************************************************


Private Sub TransPipe()         'Transformation des Einheitskörpers auf tatsächl. Objekt
Dim Pin%, k!
   
  
  With D3obj(d3akto)
    
  'Debug.Print "Transpipe "; d3akto: MPrint .TM

    For Pin = 1 To UBound(.V)   'Alle Punkte des aktuellen Körpers
      p2v .V(Pin), V1           'in Spaltenvektor umwandeln (Call ByRef!)

      MxVMul .TM, V1, V2        'V2 = Transformationsmatrix x Vektor V1
      v2p .V(Pin), V2           'neuen Vektor in Punkt zurück speichern
    Next Pin
  End With

End Sub
'****************************************************************************************

Private Sub D3_Out()                        'Übergabe der Sichtbaren Kanten an 3D-Modul
   Dim Ain%, Bin%, Ein%                     'macht 3D-Darstellung unabhängig (Kamerafunktion)
   Dim a As R3_Point, e As R3_Point
       
 For Ein = 1 To UBound(D3obj(d3akto).e)     'Alle Kanten des Körpers
  With D3obj(d3akto)
    Ain = (.e(Ein).AI)                      'Index des Anfangspunktes
     a.x = .V(Ain).x                        'Koordinaten des Anfangspunktes
     a.y = .V(Ain).y                        'der Kante E(Ein)
     a.z = .V(Ain).z
    Bin = (.e(Ein).ei)                      'Index des Endpunktes
     e.x = .V(Bin).x                        'Koordinaten des Endpunktes
     e.y = .V(Bin).y                        'der Kante E(Ein)
     e.z = .V(Bin).z
    nl a.x, a.y, a.z, e.x, e.y, e.z         '3D-Newline
  End With
 Next Ein
End Sub

'****************************************************************************************
'                    3 D - A c h s e n k r e u z   u.  X Y - E b e n e
'****************************************************************************************

Sub D3_Achse()
    nl 0, 0, 0, 14, 0, 0                    'x Achsenkreuz
    nl 0, 0, 0, 0, 12, 0                    'y
    nl 0, 0, 0, 0, 0, 8                     'z
    
    nl 13, 0, -0.1, 14, 0, 0                'x-Pfeil
    nl 13, 0, 0.1, 14, 0, 0
    nl 12, 0, 0.5, 13, 0, 1                 ' "x"
    nl 12, 0, 1, 13, 0, 0.5
    
    nl 0, 11, -0.1, 0, 12, 0                'y-Pfeil
    nl 0, 11, 0.1, 0, 12, 0
    nl 0, 11.5, 0.4, 0, 12, 1               ' "y"
    nl 0, 11.6, 1, 0, 11.75, 0.75
       
    nl 0, -0.1, 7, 0, 0, 8                  'z-Pfeil
    nl 0, 0.1, 7, 0, 0, 8

    nl 0, -1, 7.5, 0, -1.5, 7.5             ' "z"
    nl 0, -1, 8, 0, -1.5, 8
    nl 0, -1.5, 7.5, 0, -1, 8

End Sub

'****************************************************************************************

Sub D3_Scala()                              'Achsenkreuz und Gitterraster im 3D-Riss
Dim x!, y!
    scal = 1                                'Skalierungsfaktor zu Beginn
    MEin a                                  'Transformationsmatrix für Koordinatensystem
    FTM d3akto, a                           '= Einheitsmatrix
    With D3obj(0)                           'Objekt 0 = Achsenkreuz + Gitterraster
    FP 0, 0, 0                              'lokaler Koordinatenursprung = 0 0 0
      For x = 1 To 10
        FP x, 0, 0: FP x, 10, 0             'Punkte für Linien parallel zur Y-Achse
        FE 2 * x - 1, 2 * x                 'Linien 1.-2.,3.-4.Punkt,...
      Next x
      For y = 1 To 10
        FP 0, y, 0: FP 10, y, 0             'Punkte für Linien parallel zur X-Achse
        FE 2 * y + 19, 2 * y + 20           'Linien 21.-22.,23.-24.Punkt,...
      Next y
    D3_Achse                                'Achsenkreuz
    scalierung CInt(UBound(.KO)), .KO(0), scal
    End With
End Sub

'****************************************************************************************
'              3 D - S p e z i a l k ö r p e r - ( R o t a t i o n s k ö r p e r )
'****************************************************************************************
'gilt in V1.2 für: Kugel, Kegel, Zylinder
'========================================
'Einige Körper werden vom Programm aufgrund charakteristischer Werte berechnet !
'- und nicht durch Eingabe einer Punkttabelle spezifiziert
'diese können in der Programmversion 1.0 - 1.2 Beta nicht rotiert werden
'****************************************************************************************

Private Sub D3_Kreis(x!, y!, z!, r!)        'Kreisscheibe # XY-Ebene M (x,y,z)

Dim n As Integer                            'Laufvariable
Dim xn!, yn!, vi%

vi = UBound(D3obj(d3akto).V())              'Index des Startpunktes merken

FP x, y + r, z                              '1.Punkt

  For n = 1 To 11                           'Kreis aus 12 Strecken
    xn = x - Sin(pi / 6 * n) * r
    yn = y + Cos(pi / 6 * n) * r
    
    FP xn, yn, z                            '2. - 10. Punkt der Kreisscheibe
    FE vi + n - 1, vi + n                   'Kantenliste Punkte verbinden
  Next n
FE vi, vi + 11                              'Kante 10.Punkt - 1.Punkt
End Sub
'****************************************************************************************

Private Sub D3_Disc(akt%)
Dim a%, ri!

ri = obj(akt).r(2)

FP 0, 0, 0
D3_Kreis 0, 0, 0, 1                         'Kreisscheibe
D3_Kreis 0, 0, 0, ri                        'Loch Innenradius

  For a = 1 To 12
    FE a, a + 12                            'Kante Grundfläche -Deckfläche
  Next a
FP 0, 0, 1                                  '13.Punkt = Hilfspunkt für Normalvektor
End Sub

'****************************************************************************************

Private Sub D3_Kegel()                      'Kegel in 3D - Datenstruktur füllen

Dim n As Integer
Dim si!, co!

FP 0, 0, 0                                  '0. Mittelpunkt des Kreises = Koordinatenurspr.
D3_Kreis 0, 0, 0, 1                         'Grundfläche des Kegels 11 Punkte

FP 0, 0, 1                                  '11.Punkt = Spitze des Kegels

  For n = 1 To 12
    FE 13, n                                'Mantelgeraden
  Next n
End Sub
'****************************************************************************************

Private Sub D3_Zylinder()                   'Zylinder in 3D - Datenstruktur
Dim a As Integer

FP 0, 0, 0                                  '0. Mittelpunkt des Kreises = Koordinatenurspr.
D3_Kreis 0, 0, 0, 1                         'Grundfläche
D3_Kreis 0, 0, 1, 1                         'Deckfläche

  For a = 1 To 12
    FE a, a + 12                            'Kante Grundfläche -Deckfläche
  Next a
  
End Sub
'****************************************************************************************

Private Sub D3_Kugel()

Dim x, y, z As Single
Dim l, b, vi, h As Integer
Dim sil!, sib!, col!, cob!

FP 0, 0, 0                                  'Koordinatenursprung = Kugelmittelpunkt

D3_Kreis 0, 0, 0, 1                         'Äquator
D3_Kreis 0, 0, 0.5, 0.87                    '30 Grad nördl. Breite
D3_Kreis 0, 0, -0.5, 0.87                   '30 Grad südl. Breite
D3_Kreis 0, 0, 0.87, 0.5                    '60 Grad nördl. Breite
D3_Kreis 0, 0, -0.87, 0.5                   '60 Grad südl. Breite

vi = UBound(D3obj(d3akto).V())              'Index des Startpunktes merken
  For l = 0 To 5                            'Längengrade
  For b = 0 To 11                           'Breitengrade
  
    sil = Sin(pi / 6 * l)                   'Länge
    col = Cos(pi / 6 * l)
    sib = Sin(pi / 6 * b)                   'Breite
    cob = Cos(pi / 6 * b)
    
    x = 0 - sil * sib                       'kartesische Koordin auf der Kugel
    y = 0 + col * sib
    z = 0 + cob
    
    FP x, y, z

    FE vi + 12 * l + b, vi + 12 * l + b + 1
    'Debug.Print vi + 12 * l + b; vi + 12 * l + b + 1
 Next b
 Next l
 FP 0, 0, 1                                 'letzten Punkt der Kugel einfügen
End Sub

'****************************************************************************************
'                      e b e n f l ä c h i g e   3 D - K ö r p e r
'****************************************************************************************
'ebenflächig begrenzte Körper werden durch die Angabe von Punkten (x,y,z -Koordinaten)
'sowie Kanten (Index auf Anfangs- und Endpunkt) spezifiziert
'****************************************************************************************

                                'W ü r f e l - 3 D  D a r s t e l l u n g
Private Sub Wuerfel_dat()       'Geometriedaten eines Einheits-Würfels (Quaders)

  obj(d3akto).P00.x = 0         'Verschiebungsvektor ObjektUrsprung - POV-P1Punkt
  obj(d3akto).P00.y = 0         'wird bei manchen Körpern benötigt, um verschiedene
  obj(d3akto).P00.z = 0         'Bezugspunkte zwischen 3DBau und POV zu ermöglichen.
  
  FP 0, 0, 0                    'lokaler Koordinatenursprung nicht im Mittelpunkt!!
                                'wegen Kompatibilität mit POV
                                
  FP 0, 0, 0                    'Punktliste ab Index 1 füllen
  FP 1, 0, 0                    '8 Eckpunkte des Einheitswürfels
  FP 1, 1, 0
  FP 0, 1, 0
  FP 0, 0, 1
  FP 1, 0, 1
  FP 1, 1, 1
  FP 0, 1, 1
  
ReDim D3obj(d3akto).e(1)        'Kantenarray ab Index 1 füllen
  FE 1, 2:  FE 2, 3:    FE 3, 4:    FE 4, 1:    FE 5, 6:    FE 6, 7
  FE 7, 8:  FE 8, 5:    FE 1, 5:    FE 2, 6:    FE 3, 7:    FE 4, 8
End Sub
'****************************************************************************************
Private Sub Pyramide4_dat()      'Geometriedaten einer regelmäßigen 4seit. Pyramide

  obj(d3akto).P00.x = 0         'Verschiebungsvektor ObjektUrsprung - POV-P1Punkt
  obj(d3akto).P00.y = 0         'wird bei manchen Körpern benötigt, um verschiedene
  obj(d3akto).P00.z = 1         'Bezugspunkte zwischen 3DBau und POV zu ermöglichen.
  
  FP 0, 0, 0                    'lokaler Koordinatenursprung im Mittelpunkt der
                                'Grundfläche
                                'wegen Kompatibilität mit POV
                                
  FP 0, 0, 0                    'Punktliste ab Index 1 füllen
  FP 1, 0, 0                    '4 Eckpunkte der Grundfläche
  FP 1, 1, 0
  FP 0, 1, 0
  FP 0.5, 0.5, 1                'Spitze
  
ReDim D3obj(d3akto).e(1)        'Kantenarray ab Index 1 füllen
  FE 1, 2:  FE 2, 3:    FE 3, 4:    FE 4, 1:    'Umfang der Grundfläche
  FE 1, 5:  FE 2, 5:    FE 3, 5:    FE 4, 5:    'Mantel
End Sub
'****************************************************************************************

Private Sub Prisma3_dat()       'Geometriedaten einer regelmäßigen 4seit. Pyramide

  obj(d3akto).P00.x = 0         'Verschiebungsvektor ObjektUrsprung - POV-P1Punkt
  obj(d3akto).P00.y = 0         'wird bei manchen Körpern benötigt, um verschiedene
  obj(d3akto).P00.z = 0         'Bezugspunkte zwischen 3DBau und POV zu ermöglichen.
  
  FP 0, 0, 0                    'lokaler Koordinatenursprung im Mittelpunkt der
                                'Grundfläche
                                'wegen Kompatibilität mit POV
  FP 0, 0, 0                    'Punktliste ab Index 1 füllen
  FP 1, 0, 0                    '4 Eckpunkte der Grundfläche
  FP 0.5, 0.866, 0
  FP 0, 0, 1
  FP 1, 0, 1
  FP 0.5, 0.866, 1
  
ReDim D3obj(d3akto).e(1)        'Kantenarray ab Index 1 füllen
  FE 1, 2:  FE 2, 3:    FE 3, 1 'Umfang der Grundfläche
  FE 4, 5:  FE 5, 6:    FE 6, 4 'Deckfläche
  FE 1, 4:  FE 2, 5:    FE 3, 6 'Mantel
End Sub
'****************************************************************************************
Private Sub D3_CGS_end(akt)

End Sub
'****************************************************************************************
Private Sub D3_Prisma()
  Prisma3_dat                   'regelmäßiges dreiseitiges Prisma
End Sub
'****************************************************************************************
Private Sub D3_Wuerfel()
  Wuerfel_dat                   'Punkt- und Kantenliste mit Einheitswürfel füllen
End Sub
'****************************************************************************************
Private Sub D3_Quader()
  Wuerfel_dat                   'Punkt- und Kantenliste mit Einheitswürfel füllen
End Sub                         'Quader unterscheidet sich nur durch die Scalierung
'****************************************************************************************
Private Sub D3_Pyramide()
  Pyramide4_dat                 'Punkt- und Kantenliste mit quadratischer Pyramide füllen
End Sub
'****************************************************************************************
'                        Z o o m / R e f r e s h - F u n k t i o n e n
'****************************************************************************************
'Kernfunktion: D3_Refresh
'nach Hinzufügen, Löschen oder Verändern eines Körpers werden die Datenstrukturen für
'3D-Körper (Punkt, Kantenlisten) neu gefüllt, die Transformationsmatrix neu berechnet,
'und die Körper durch die Transformations-Pipeline geschickt, sowie neu gezeichnet.
'****************************************************************************************

Sub D3_Refresh(ByVal omax As Integer)       'Auffüllen des d3obj Arrays
Dim akt As Integer
  
  obj(0).typ = 0                            '0.tes Objekt ist immer D3Scala
  For akt = 0 To UBound(obj)                'von Anfang bis Ende
  ReDim Preserve D3obj(akt)                 'D3-Objektarray auf gleich viele Körper
    d3akto = akt                            'dimensionieren
    'akto = akt
    With D3obj(akt)
     ReDim .V(0)                            'Punkt(0) = lokaler Koordinatenursprung
     ReDim .e(1)                            'Kanten ab Index 1 füllen
     ReDim .KO(0)                           '3D-Anzeige Kantenarray für C-Dll
     FillTM (akt)                           'Transformationsmatrix für den Körper berechnen
                                            'und in D3_obj Struktur ablegen
                                            'wird ein mal berechnet, und für jeden Punkt des
                                            'Körpers benötigt!
     
        Select Case obj(akt).typ            'vordefinierte Körper
          Case 0: Call D3_Scala
          Case 1: Call D3_Kugel
          Case 2: Call D3_Kegel
          Case 3: Call D3_Zylinder
          Case 4: Call D3_Wuerfel
          Case 5: Call D3_Quader
          Case 6: Call D3_Pyramide
          Case 7: Call D3_Prisma            'Punkt-, Kantenlisten ermitteln
          Case 8: Call D3_Disc(akt)         'akt muss wegen Param i.Radius übergeben werden!
          Case -100: Call D3_CGS_end(akt)
          
          
          Case Else:
       End Select
    End With
    
     TransPipe                              'hinein in die Transformations-Pipeline                               '
     D3_Out                                 'Ausgabe der transform. 3D-Kanten mit nl
  Next akt                                  'in eigenständige 3D-DLL (C-DLL Performance)
End Sub


'****************************************************************************************
'************************************** E O F *******************************************
