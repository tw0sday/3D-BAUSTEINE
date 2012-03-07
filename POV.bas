Attribute VB_Name = "POV"
'****************************************************************************************
'  Modul: POV.Bas                3 D - B A U K A S T E N                Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung: Modul POV.bas                                  Datum:  30.1.2002
'
'Die Szenendatei f�r den Raytracer POV (persistence of vision) besteht aus einer Textdatei
'mit den Anweisungen f�r die Erstellung von Objekten, deren Position und deren Lage im Raum,
'sowie deren Oberfl�chenaussehen und Beleuchtung.
'
'****************************************************************************************
'                                  P O V - E x p o r t
'****************************************************************************************
Dim povColor As Boolean

Sub Def_Pov()                       'Standardausgaben in die POV-Datei
povColor = True

With F4.Text1
 .Text = ""                                 'Textfeld l�schen
 appCr "//=========================================================="
 appCr "// 3D-Baukasten Version 1.3 (c) 2002 H.Kleber "
 appCr "// POV 2 Datei Datum: " & Date & " Zeit: " & Time
 appCr "//=========================================================="
 .Text = .Text & F4.T_incl.Text '#inlude Befehle aus dem unsichtb. Textfeld T_incl kopieren
 appCr ""
 appCr "// Standardeinstellungen: "
 appCr "sky_sphere { pigment { Bright_Blue_Sky}}"
 appCr "camera {location <15,8,-15> look_at <0,0,0>}"
 appCr "light_source {<5,10,-20> color White}" & vbCrLf
 appCr "plane {<0,1,0> 0 pigment {checker color White color Silver} "
 appCr "finish {ambient 0.3 reflection 0.3}}"
 appCr "plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}"
 appCr "plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}"
 
End With
End Sub

'****************************************************************************************

Private Sub app(ptxt As String)             'Ausgabe auf Textfeld bzw. Datei
 F4.Text1.Text = F4.Text1.Text & ptxt             'String jeweils anh�ngen
End Sub

Private Sub appCr(ptxt As String)           'Ausgabe auf Textfeld bzw. Datei
 F4.Text1.Text = F4.Text1.Text & ptxt & vbCrLf & vbCrLf   'String jeweils anh�ngen + CR LF
End Sub

Private Function �(Wert) As Variant         'Ausgabe einer Dezimalzahl mit "." als Komma
Dim str1 As String * 6, str2 As String * 1
'  � = Left$(Str$(Wert * pi / pi), 6) & " "  'etwas seltsam, aber funktioniert!
 str1 = str$(Wert): str2 = ","
 If InStr(1, str1, str2) > 0 Then � = Mid$(str1, InStr(1, str1, str2), 1) = "."
 If InStr(1, str1, str2) = 0 Then � = Left$(str$(Wert), 6)
 
End Function                                '6 Stellen

'****************************************************************************************

Private Sub pov_p(ByVal ind%)               'Punktkoordinaten ausgeben <x,y,z>

If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With obj(akto)                            'Aktuelles Objekt Punktkoordinaten ausgeben
    
    app " <" & �(.P(ind).y) & "," & �(.P(ind).z) & "," & �(-.P(ind).x) & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub
'****************************************************************************************

Private Sub pov_xyp(ByVal ind%)             'Punktkoordinaten ausgeben <x,y> 2-dimensional

If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With obj(akto)                            'Aktuelles Objekt Punktkoordinaten ausgeben
    
    app " <" & �(.P(ind).y) & "," & �(-.P(ind).x) & "> "
                                          
  End With                                  'keine Koordinaten-Transformation
 End If
End Sub

'****************************************************************************************

Private Sub pov_d3p(ByVal ind%)             'Punktkoordinaten aus d3obj-Punktliste
                                            'ausgeben <x,y,z> bereits transformiert!
If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With D3obj(akto)                          'Aktuelles D3Objekt Punktkoordinaten ausgeben
    
    app " <" & �(.V(ind).y) & "," & �(.V(ind).z) & "," & �(-.V(ind).x) & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub
'****************************************************************************************

Private Sub pov_d2p(ByVal ind%)             'Punktkoordinaten aus d3obj-Punktliste
                                            'ausgeben <x,y> bereits transformiert 2-dim!
If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With D3obj(akto)                          'Aktuelles D3Objekt Punktkoordinaten ausgeben
    
    app " <" & �(.V(ind).y) & "," & �(.V(ind).z) & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'y -> x , z -> y
End Sub
'****************************************************************************************

Private Sub pov_scale()
If akto > 0 And akto <= UBound(obj) Then
  With obj(akto)                            'Aktuelles Objekt Scalierung ausgeben
    
    app vbCrLf & "scale <" & �(.scale.y) & "," & �(.scale.z) & "," & �(.scale.x) & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub

'****************************************************************************************

Private Sub pov_rotate()
If akto > 0 And akto <= UBound(obj) Then
  With obj(akto)                            'Aktuelles Objekt Scalierung ausgeben
    
    app "rotate <" & �(-.rot.y) & "," & �(-.rot.z) & "," & �(.rot.x) & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub

'****************************************************************************************

Private Sub pov_translate()
If akto > 0 And akto <= UBound(obj) Then
  With obj(akto)                            'Aktuelles Objekt Translation ausgeben
                                            'Verschiebung zwischen Objektursprung
                                            'und POV-Anhaltspunkt m�glich! (P00)
    app "translate <" & �(.trans.y + .P00.y * .scale.y) _
                & "," & �(.trans.z + .P00.z * .scale.z) _
                & "," & �(-.trans.x + -.P00.x * .scale.x) & "> " _
                & vbCrLf
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub

'****************************************************************************************

Private Sub pov_transform()
  pov_scale
  pov_rotate
  pov_translate
End Sub

'****************************************************************************************

Private Function modulo(ByVal x As Long, n As Long) As Long
Dim h As Single
   h = x / n
   modulo = Int((h - Int(h)) * n)
End Function

'****************************************************************************************

Private Sub povRGB_lang(ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
                                            'pov RGB-Werte jeweils 0..1
  app " color red " & �(r / 255) & " green " & �(g / 255) & " blue " & �(b / 255)
End Sub
'****************************************************************************************

Private Sub povRGB(ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
                                            'pov RGB-Werte jeweils 0..1
  app "rgb <" & �(r / 255) & "," & �(g / 255) & "," & �(b / 255) & ">"
End Sub

'****************************************************************************************

Private Sub L2RGB(ByVal col As Long)        'LongInteger => GRB Werten
  Dim r, g, b As Integer                    'einzelne Bytes aus long-Variable dividieren
  Debug.Print "RGB "; col                   'Testausdruck
    r = modulo(col, 256)                    'niederwertigstes Byte = Rot
    b = Int(col / 65536)                    'h�chstwertigstes Byte = Blau
    g = (modulo(col, 65536) - r) / 256      'mittleres Byte = Gr�n
    Call povRGB(r, g, b)
  Debug.Print "RGB "; akto; " = "; r; g; b
End Sub

'****************************************************************************************

Private Sub pov_color()
    app " pigment {"                            'Farbe
    L2RGB obj(akto).defcol
    appCr " }}"
End Sub
'****************************************************************************************

Private Sub pov_tex()                           'Einf�gen einer Textur oder Farbe


With obj(akto)
If povColor Then                                'wenn bemalt werden soll
  If .texi <> 0 Then                            'Textur statt Farbe
    app "texture {" & F6.CB3.List(.texi) & "}}" & vbCrLf   'Texturname(Index) anh�ngen
  Else: pov_color: app vbCrLf                   'Farbe wenn nichts anderes angegeben
  End If
Else: app "}" & vbCrLf
End If
End With
End Sub

'****************************************************************************************
'                              P O V - T e x t u r e n
'****************************************************************************************

Sub Fill_CB3_Texi()                             'Combobox mit Texturnamen f�llen
  F6.CB3.AddItem "Chrome_Metal"                 'Metalloberfl�chen
  F6.CB3.AddItem "Brass_Metal"
  F6.CB3.AddItem "Gold_Metal"
  F6.CB3.AddItem "Silver_Metal"
  F6.CB3.AddItem "Bronze_Metal"
  F6.CB3.AddItem "Copper_Metal"
  F6.CB3.AddItem "Polished_Chrome"
  F6.CB3.AddItem "Polished_Brass"
  F6.CB3.AddItem "Aluminum"
  F6.CB3.AddItem "Rusty_Iron"
  
  F6.CB3.AddItem "Brown_Agate"                  'Steinoberfl�chen
  F6.CB3.AddItem "Sapphire_Agate"
  F6.CB3.AddItem "Pink_Granite"
  F6.CB3.AddItem "PinkAlabaster"
  F6.CB3.AddItem "White_Marble"
  F6.CB3.AddItem "Red_Marble"
  F6.CB3.AddItem "Jade"
  
  F6.CB3.AddItem "Glass3"                       'Glasoberfl�chen
  F6.CB3.AddItem "Green_Glass"
  F6.CB3.AddItem "Ruby_Glass"
  F6.CB3.AddItem "NBwinebottle"
  F6.CB3.AddItem "NBbeerbottle"
  
  F6.CB3.AddItem "Rosewood"                     'Holzoberfl�chen
  F6.CB3.AddItem "Cherry_Wood"
  F6.CB3.AddItem "Tan_Wood"
  F6.CB3.AddItem "Pine_Wood"
  F6.CB3.AddItem "Dark_Wood"
  F6.CB3.AddItem "White_Wood"
  F6.CB3.AddItem "Cork"
  F6.CB3.AddItem "Yellow_Pine"
  F6.CB3.AddItem "DMFWood1"
  F6.CB3.AddItem "DMFWood2"
  F6.CB3.AddItem "DMFWood3"
  F6.CB3.AddItem "DMFWood4"
  F6.CB3.AddItem "DMFWood5"
  F6.CB3.AddItem "DMFWood6"
  
  F6.CB3.AddItem "Water"                        'Sonstige Oberfl�chen
  F6.CB3.AddItem "Candy_Cane"
  F6.CB3.AddItem "Peel"
  F6.CB3.AddItem "Lightening1"
  F6.CB3.AddItem "Starfield"
  F6.CB3.AddItem "Blue_Sky2"
  F6.CB3.AddItem "Blood_Sky"
End Sub


'****************************************************************************************

Private Sub povKugel()                          'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kugel
    app .POV & "{": pov_p (1)                   'Mittelpunkt
    app "," & �(.r(1))                          'Radius
    pov_transform
  End With
End Sub

'****************************************************************************************

Sub povKegel()                                  'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .POV & "{": pov_p (1)                   'Mittelpunkt der Grundfl�che
    app "," & �(.r(1)) & ",": pov_p (2): app ",0"  'Spitze
    pov_transform
  End With
End Sub

'****************************************************************************************

Sub povZylinder()                               'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .POV & "{": pov_p (1): app ","          'Mittelpunkte der Grundfl�che
    pov_p (2)                                   'Mittelpunkte der Deckfl�che
    app "," & �(.r(1))                          'Radius
    pov_transform
  End With
End Sub

'****************************************************************************************

Sub povWuerfel_Quader()                         'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'W�rfel
    app .POV & "{": pov_p (1): app ","          'Eckpunkte der Grundfl�che (0,0,0)
    pov_p (2)                                   'Eckpunkte der Deckfl�che (1,1,1)
    pov_transform
  End With
End Sub

'****************************************************************************************

Sub pov_Pyramide()                               'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Pyramide oder Prisma
                                                'Trick 17! Prisma als Pyramide getarnt
    app .POV & "linear_spline 0,1,5,"           'nach oben zulaufend, H�he 0 bis H�he 1
    pov_xyp (1): pov_xyp (2)                    'Grundfl�che ist 4 seit. Polygon (+1)
    pov_xyp (3): pov_xyp (4)                    'Eckpunkte der Grundfl�che (0,0) (0,1) ..
    pov_xyp (1)                                 '1. Eckpunkt der Grundfl�che wiederholen!
    pov_scale                                   'die Eckpunkte sind 2 dimensional !
    app "rotate <" & �(-.rot.y + 180) & "," & �(-.rot.z) & "," & �(.rot.x) & "> "
    pov_translate                               'die Pyramide muss um 180 Grad gedreht
  End With                                      'werden !!
End Sub
'****************************************************************************************

Sub pov_Prisma()                                'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Pyramide oder Prisma
                                                'Trick 17! Prisma als Pyramide getarnt
    app .POV & "linear_spline 0,1,4,"           'nach oben zulaufend, H�he 0 bis H�he 1
    pov_xyp (1): pov_xyp (2)                    'Grundfl�che ist 4 seit. Polygon (+1)
    pov_xyp (3)                                 'Eckpunkte der Grundfl�che (0,0) (0,1) ..
    pov_xyp (1)                                 '1. Eckpunkt der Grundfl�che wiederholen!
    pov_transform
  End With                                      'werden !!
End Sub

'****************************************************************************************

Private Sub pov_Disc()                          'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Disk
    app .POV & "{": pov_p (1)                   'Mittelpunkt
    app ", <0,1,0>"                             '13.Punkt = Normalvektor
    app "," & �(.r(1))                          'Radius
    app "," & �(.r(2))                          'innerer Radius
    pov_transform
  End With
End Sub

'****************************************************************************************

Private Sub pov_CSG()                           'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt CSG ....
                                                'Einzelfarben oder Gesamtf�rbung
  If .defcol <> vbWhite Or .texi <> 0 Then povColor = False
    appCr "// Objekt: " & akto & " " & .bez & .r(1) & vbCrLf
    app .POV & "{" & vbCrLf                     'CSG-Kommando & {
  End With
End Sub
'****************************************************************************************

Private Sub pov_declare()                       'Ausgabe der Struktur f�r pov-Szenendatei
Dim str

  With obj(akto)                                'Aktuelles Objekt
  str = .bez                                    'Bezeichnung der #Neu "XY" Anweisung
                                              
  If .defcol <> vbWhite Or .texi <> 0 Then povColor = False             '#declare XY =
    appCr "// Objekt: " & akto & " " & .r(1) & " ." & .bez & vbCrLf
    app .POV & " " & Trim$(Mid$(str, 5, Len(str))) & "="        'Bezeichnung ohne #Neu
  End With
End Sub

'****************************************************************************************

Private Sub pov_CSG_End()                       'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    .defcol = obj(.r(1)).defcol                 'Werte aus zugeh�riger CSG-Anweisung
    .texi = obj(.r(1)).texi                     'hierher kopieren
    .rot = obj(.r(1)).rot
    .trans = obj(.r(1)).trans
    .scale = obj(.r(1)).scale
    povColor = True
    pov_transform
    pov_tex                                     'Textur des zugeh�rigen CSG
'    app "}"                                    'CSG beenden
    appCr "// Objekt: " & akto & " " & .bez & .r(1)

  End With
End Sub
'****************************************************************************************

Private Sub pov_declare_Ende()                  'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt CSG ....
    .defcol = obj(.r(1)).defcol                 'Werte aus zugeh�riger CSG-Anweisung
    .texi = obj(.r(1)).texi                     'hierher kopieren
    .rot = obj(.r(1)).rot
    .trans = obj(.r(1)).trans
    .scale = obj(.r(1)).scale                   'Einzelfarben oder Gesamtf�rbung
    appCr "// Objekt: " & akto & " " & .bez & .r(1) & vbCrLf
    app "object { " & .POV                      'object { XY
    povColor = True
    pov_transform
    pov_tex
  End With
End Sub
'****************************************************************************************

Private Sub pov_new_Object()                    'Ausgabe der Struktur f�r pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt CSG ....
    appCr "// Objekt: " & akto & " " & .bez & vbCrLf
    app "object { " & .POV                      'object { XY
    povColor = True
    pov_transform
  End With
End Sub
'****************************************************************************************
'                    P O V - O b j e k t e   g e n e r i e r e n
'****************************************************************************************

Sub PovGen()                                    'POV-Skript generieren
Dim i, j As Integer

If objmax > 0 Then                              'Objektarray nicht leer
  For akto = 1 To UBound(obj)                   'von Anfang bis Ende
   With obj(akto)
     Select Case .typ
       Case 1: Call povKugel                    'Sphere-Objekt ausgeben
       Case 2: Call povKegel                    'Kegel
       Case 3: Call povZylinder                 'Zylinder
       Case 4: Call povWuerfel_Quader           'W�rfel
       Case 5: Call povWuerfel_Quader           'Quader
       Case 6: Call pov_Pyramide                '4 seit. Pyramide
       Case 7: Call pov_Prisma                  '3 seit. Prisma
       Case 8: Call pov_Disc                    'kreisrunde Scheibe
       Case -100: Call pov_CSG_End              'CSG-Ende
       Case -104 To -101: Call pov_CSG          'CSG-Beginn
       Case -105: Call pov_declare              '#declare
       Case -106: Call pov_declare_Ende         'Ende deklarierter K�rper
       Case 200: Call pov_new_Object            'neu deklarierter K�rper
       Case Else: Debug.Print "POV-Objekt unbekannter Typ:" & .typ, .bez
     End Select
     If .typ > 0 Then pov_tex                   'Textur oder Farbe zuordnen
   End With                                     'neg .typ = nicht sichtbar!
  Next akto
End If
End Sub



'****************************************************************************************
'**************************************** EOF *******************************************

