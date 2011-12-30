Attribute VB_Name = "MODULE1"
'**********************************************************************************************
'  Programm:                        3 D - B A U K A S T E N                   Version: 1.1 Beta
'==============================================================================================
'  Programmbeschreibung: Modul zur 3D-Ausgabe von "Drahmodellen"              Datum:   9.1.2001
'  benötigt CPP-DLL graf3d32.DLL zur schnelleren Ausgabe in 3D-Picture
'**********************************************************************************************
'**********************************************************************************************
'            D a t e n s t r u k t u r e n  u n d   S t r u k t u r v a r i a b l e n
'**********************************************************************************************


Option Explicit

' *** Datenstrukturen zur Verwaltung der Oberfläche ***

Type View_typ           'Strukturvariable für Ansichten
  name As String * 5    'Name xy,yz,xz,d3
  pic As PictureBox     'Verweis auf entsprechende Picturebox
  
  x0 As Single          'Koordinaten-Nullpunkt (in Scaleeinheiten)
  y0 As Single          'Koordinaten-Nullpunkt (in Scaleeinheiten)
  dx As Single          'letzte draw x-pos (in ScaleKoordinateneinheiten)
  dy As Single          'letzte draw y-pos (in ScaleKoordinateneinheiten)
  mx As Single          'Vergrösserungsfaktor in x-Richtung
  my As Single          'Vergrösserungsfaktor in y-Richtung
  sx As Integer         'Spiegelung des Koordinatensystems in x-Richtung
  sy As Integer         'Spiegelung in y-Richtung
  twist As Boolean      'Vertauschen der Koordinatenachsen
  grid As Boolean       'Hintergrundraster
  cur As Integer        'Cursorart

End Type

Global View(1 To 4) As View_typ   'Array der Views1.-4. View'

Type R2_Point           'Punkt im R2
  x As Single
  y As Single
End Type

Global aktp As R2_Point    'Übergabeparameter für Punkt


' *** Datenstrukturen zur Verwaltung der Objekte  ***

Type R3_Point            'Punkttyp oder Vektor im R3
  x As Single
  y As Single
  z As Single
End Type

Type POV_Object          'Datenstuktur für POV-Objekt'
  typ As Integer         'Objekttyp 1...View(akti)
  bez As String * 15     'Bezeichnung z.B. Kugel 1
  POV As String * 15     'Pov-Bezeichnung z.B. sphere, box,...
  p() As R3_Point        'Punkt 1-n dynamisches Array!
                         'Kugel 1 Punkt, Dreieck 3 Punkte ...
  scale As R3_Point      'eigentlich Skalierungs-Zahlentripel!
  rot As R3_Point        'eigentlich Winkel- Zahlentripel!
  trans As R3_Point      'Verschiebungsvektor
  
  r() As Single          'Groessenangabe zB. Radius 1 od Distanz
                         'wieder dynamisches Array
                         
  defcol As Long         'Default Farbe (Long 4 Byte Zuweisung)
  texi  As Integer       'Index im Textur_Array 0 => defcolor
End Type
  
'**********************************************************************************************
Type punkttype
        x As Double             ' kartesische Koordinaten
        y As Double
        z As Double
End Type

Global scal As Double
Global Const pi = 3.14159265358979
Global Const r = pi / 180


    Type linientype
        a As punkttype          ' Linie von A nach B
        b As punkttype
        x1 As Long              ' Punkte im R2
        y1 As Long
        x2 As Long
        y2 As Long
        'farbe As Long
    End Type
    

Type D3_Körper
  KO() As linientype           'Dynamisches Array von linien
  Farbe As Long
End Type

Global obj() As POV_Object     'Dynamisches Array der POV-Object Struktur
Global D3obj() As D3_Körper    'Dynamisches Array von Körpern
Global d3akto As Integer       'aktueller 3DKörper


Global akti%                        'Index des akt. Views im view-Array

Global akto%                        'Index des akt. Objekts im obj-Array
Global objmax                          'groesse des obj-Arrays
Global Itool, Itool2                ' Toolbar Indizes


'3D-Zeichenroutinen wurden aus Performancegründen in C implementiert
'hier sind die Übergabeparameter definiert
Declare Sub show_3D Lib "c:\3dbau\graf3d32.DLL" (ByVal hDC&, ByVal anzahl%, l As linientype, ByVal x%, ByVal y%)
Declare Sub rotation Lib "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal alpha%, ByVal beta%, ByVal gamma%)
Declare Sub scalierung Lib "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal scal As Double)
Declare Sub translation Lib "c:\3dbau\graf3d32.DLL" (ByVal anzahl%, l As linientype, ByVal dx%, ByVal dy%, ByVal dz%)
'Declare Sub Pen_3D Lib "c:\3dbau\graf3d32.DLL" (ByVal Pstyle%, ByVal Pwidth%, r As Byte, g As Byte, b As Byte)


Sub Scala()                    'Achsenkreuz und Gitterraster im Grundriss
Dim x!, y!
    scal = 1                   'Skalierungsfaktor zu Beginn
    With D3obj(0)              'Objekt 0 = Achsenkreuz + Gitterraster
    ReDim .KO(0)
    
    nl 0, 0, 0, 20, 0, 0       'Achsenkreuz
    nl 0, 0, 0, 0, 10, 0
    nl 0, 0, 0, 0, 0, 10
    For y = 1 To 10            'Gitterraster
      For x = 1 To 10
        nl x, 0, 0, x, 10, 0   'Linien parallel zur Y-Achse
        nl 0, y, 0, 10, y, 0   'Linien parallel zur x-Achse
      Next x
    Next y
    scalierung CInt(UBound(.KO)), .KO(0), scal
    End With
    D3_Refresh (0)
End Sub


Sub nl(x1!, y1!, z1!, x2!, y2!, z2!)        'neue Linie in Kantenliste einfügen
Dim anzahl%
  anzahl = UBound(D3obj(d3akto).KO)         'Anzahl Linien bestimmen
  ReDim Preserve D3obj(d3akto).KO(anzahl + 1)  ' Neue Linie anhängen
  With D3obj(d3akto).KO(anzahl)
   ' anzahl = UBound(.k)                    ' Anzahl Linien bestimmen
 
    .a.x = y1 * 40
    .a.y = z1 * 40                     ' KOORDINATENTRANSFORMATION !!!
    .a.z = -x1 * 40                    ' KOORDINATENTRANSFORMATION !!!
    .b.x = y2 * 40
    .b.y = z2 * 40
    .b.z = -x2 * 40
    .x1 = x1 * 40
    .y1 = y1 * 40
    .x2 = x2 * 40
    .y2 = y2 * 40
 'Debug.Print "newline " & d3akto, anzahl & " < " & x1 & " " & y1 & " " & z1 & " > " & " < " & x2 & " " & y2 & " " & z2
  End With
End Sub

'**********************************************************************************************
'                        Z o o m / R e f r e s h - F u n k t i o n e n
'**********************************************************************************************

Sub D3_Refresh(ByVal omax As Integer)       ' Auffüllen des d3obj Arrays
Dim akto As Integer

If omax > 0 Then                            'Objektarray nur mit Achsenkreuz gefüllt
  For akto = 1 To omax                      'von Anfang bis Ende
  ReDim Preserve D3obj(akto)                'D3-Objektarray auf gleich viele Körper dimensionieren
     d3akto = akto
     ReDim D3obj(akto).KO(0)

        Select Case obj(akto).typ
       Case 1: Call D3_Kugel                'neu zeichnen
       Case 2: Call D3_Kegel
       Case 3: Call D3_Zylinder
       Case 4: Call D3_Wuerfel
     End Select
   Debug.Print "D3_Refresh Objekt: " & akto, obj(akto).bez, scal

  Next akto
End If
End Sub

Private Sub D3_Wuerfel()
Dim h As R3_Point                            'Hilfspunkt um Schreibarbeit und Rechnerei zu sparen

    'scal = 40
    With obj(d3akto)                                'Werte aus POV-Objekt Struktur
      h.x = .p(1).x: h.y = .p(1).y: h.z = .p(1).z   'h = Ecke links hinten unten
      nl h.x, h.y, h.z, h.x + .r(1), h.y, h.z
      nl h.x, h.y, h.z, h.x, h.y + .r(1), h.z
      nl h.x, h.y, h.z, h.x, h.y, h.z + .r(1)
                                                    'h = Ecke rechts vorne oben
      h.x = .p(1).x + .r(1): h.y = .p(1).y + .r(1): h.z = .p(1).z + .r(1)
      nl h.x, h.y, h.z, h.x - .r(1), h.y, h.z
      nl h.x, h.y, h.z, h.x, h.y - .r(1), h.z
      nl h.x, h.y, h.z, h.x, h.y, h.z - .r(1)
           
                                                    'h = Ecke links vorne oben
      h.x = .p(1).x + .r(1): h.y = .p(1).y: h.z = .p(1).z + .r(1)
      nl h.x, h.y, h.z, h.x - .r(1), h.y, h.z
      nl h.x, h.y, h.z, h.x, h.y, h.z - .r(1)
                                                    'h = Ecke rechts hinten oben
      h.x = .p(1).x: h.y = .p(1).y + .r(1): h.z = .p(1).z + .r(1)
      nl h.x, h.y, h.z, h.x, h.y - .r(1), h.z
      nl h.x, h.y, h.z, h.x, h.y, h.z - .r(1)
                                                    'rechts vorne unten
      h.x = .p(1).x + .r(1): h.y = .p(1).y + .r(1): h.z = .p(1).z
      nl h.x, h.y, h.z, h.x - .r(1), h.y, h.z
      nl h.x, h.y, h.z, h.x, h.y - .r(1), h.z
                       
      'scalierung CInt(UBound(D3obj(d3akto).körper1)), D3obj(d3akto).körper1(0), scal
    End With
End Sub

Private Sub D3_Kreis(p As R3_Point, r1 As Single) 'Kreisscheibe # XY-Ebene

Dim h1 As R3_Point                 'Hilfspunkte um Schreibarbeit und Rechnerei zu sparen
Dim h2 As R3_Point
Dim m As R3_Point

Dim a As Integer
Dim si!, co!

m = p
h2.x = m.x
h2.y = m.y + r1
h2.z = m.z

  For a = 0 To 10                  'Kreis aus 10 Strecken
    si = Sin(36 * a * r)
    co = Cos(36 * a * r)
    
    h1.x = m.x - si * r1
    h1.y = m.y + co * r1
    h1.z = m.z
    
    nl h2.x, h2.y, m.z, h1.x, h1.y, m.z
    h2 = h1                                 'h2 läuft nach
  Next a
End Sub

Private Sub D3_Kegel()
Dim h1 As R3_Point                 'Hilfspunkte um Schreibarbeit und Rechnerei zu sparen
Dim m As R3_Point                   'm = Mittelpunkt Grundfläche
Dim s As R3_Point                   'Spitze

Dim a As Integer
Dim si!, co!

m.x = obj(d3akto).p(1).x: s.x = m.x
m.y = obj(d3akto).p(1).y: s.y = m.y
m.z = obj(d3akto).p(1).z: s.z = m.z + obj(d3akto).r(2)

D3_Kreis m, obj(d3akto).r(1)        'Grundfläche des Kegels

  For a = 0 To 10
    si = Sin(36 * a * r)
    co = Cos(36 * a * r)
    
    h1.x = m.x - si * obj(d3akto).r(1)
    h1.y = m.y + co * obj(d3akto).r(1)
    h1.z = m.z
                                            'Mantelgeraden
    nl s.x, s.y, s.z, h1.x, h1.y, m.z       'Spitze zur Grundfläche
    Next a
End Sub

Private Sub D3_Zylinder()
Dim m As R3_Point                     'm = Mittelpunkt Grundfläche
Dim h1 As R3_Point                    'Hilfspunkt
Dim s As R3_Point
Dim r1 As Single                       'Radius
Dim a As Integer
Dim si!, co!
Dim Hoehe

m.x = obj(d3akto).p(1).x: s.x = m.x
m.y = obj(d3akto).p(1).y: s.y = m.y
m.z = obj(d3akto).p(1).z: s.z = m.z + obj(d3akto).r(2) 'Höhe
r1 = obj(d3akto).r(1)                    'Radius

D3_Kreis m, r1                           'Grundfläche
D3_Kreis s, r1

  For a = 0 To 10
    si = Sin(36 * a * r)
    co = Cos(36 * a * r)
    
    h1.x = m.x - si * obj(d3akto).r(1)
    h1.y = m.y + co * obj(d3akto).r(1)
    h1.z = m.z
    
    nl h1.x, h1.y, m.z, h1.x, h1.y, m.z + obj(d3akto).r(2)   'Grundfläche zur Deckfl.

    Next a
  
End Sub

Private Sub D3_Kugel()

Dim h1  As R3_Point                  'Hilfspunkte um Schreibarbeit und Rechnerei zu sparen
Dim h2 As R3_Point
Dim m As R3_Point                       'm = Mittelpunkt Grundfläche
Dim s As R3_Point                       'oberer Mittelpunkt
Dim t As R3_Point                       'unterer M.

Dim l, b As Integer
Dim sil!, sib!, col!, cob!, r1!



r1 = obj(d3akto).r(1)
m.x = obj(d3akto).p(1).x: s.x = m.x
m.y = obj(d3akto).p(1).y: s.y = m.y
m.z = obj(d3akto).p(1).z: s.z = m.z + r1

D3_Kreis m, obj(d3akto).r(1)            'Äquator
h1 = m: h1.z = m.z + 0.5 * r1           '30 Grad nördl. Breite
D3_Kreis h1, obj(d3akto).r(1) * 0.87
h1 = m: h1.z = m.z - 0.5 * r1           '30 Grad südl. Breite
D3_Kreis h1, obj(d3akto).r(1) * 0.87
h1 = m: h1.z = m.z + 0.87 * r1          '60 Grad nördl. Breite
D3_Kreis h1, obj(d3akto).r(1) * 0.5
h1 = m: h1.z = m.z - 0.87 * r1          '60 Grad südl. Breite
D3_Kreis h1, obj(d3akto).r(1) * 0.5

h2 = s                                  'am Nordpol beginnend

  For l = 0 To 10                       'Länge
  For b = 0 To 6                        'Breite
  
    sil = Sin(36 * l * r)               'Länge
    col = Cos(36 * l * r)
    sib = Sin(30 * b * r)               'Breite
    cob = Cos(30 * b * r)
    
    
    h1.x = m.x - sil * r1 * sib         'kartesische Koordin auf der Kugel
    h1.y = m.y + col * r1 * sib
    h1.z = m.z + cob * r1
    
    nl h2.x, h2.y, h2.z, h1.x, h1.y, h1.z   'Längengrade
    h2 = h1
 Next b
 Next l
End Sub


