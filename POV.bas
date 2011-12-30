Attribute VB_Name = "POV"

'**********************************************************************************************
'                                  P O V - E x p o r t
'**********************************************************************************************
'Die Szenendatei für den Raytracer POV (persistence of vision) besteht aus einer Textdatei mit
'Anweisungen für die Erstellung von Objekten, deren Position und deren Lage im Raum, sowie deren
'Oberflächenaussehen und Beleuchtung.

Sub Def_Pov()                       'Standardausgaben in die POV-Datei

With F4.Text1
 .Text = ""                                 'Textfeld löschen
 appCr "//=========================================================="
 appCr "// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber "
 appCr "// POV 2 Datei Datum: " & Date & " Zeit: " & Time
 appCr "//=========================================================="
 .Text = .Text & F4.T_incl.Text '#inlude Befehle aus dem unsichtb. Textfeld T_incl kopieren
 appCr ""
 appCr "// Standardeinstellungen: "
 appCr "background {color White}"
 appCr "camera {location <15,8,-15> look_at <0,0,0>}"
 appCr "light_source {<5,10,-20> color White}" & vbCrLf
 appCr "plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}"
 appCr "plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}"
 appCr "plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}"
 
End With
End Sub




Private Sub app(ptxt As String)             'Ausgabe auf Textfeld bzw. Datei
 F4.Text1.Text = F4.Text1.Text & ptxt             'String jeweils anhängen
End Sub

Private Sub appCr(ptxt As String)           'Ausgabe auf Textfeld bzw. Datei
 F4.Text1.Text = F4.Text1.Text & ptxt & vbCrLf & vbCrLf   'String jeweils anhängen + CR LF
End Sub

'*****************************  Pov-Objekte generieren  ********************************

Sub PovGen()                        'POV-Skript generieren
Dim i, j As Integer

If objmax > 0 Then                          'Objektarray nicht leer
  For akto = 1 To UBound(obj)               'von Anfang bis Ende
   With obj(akto)
     Select Case .typ
       Case 1: Call povKugel                'Sphere-Objekt ausgeben
       Case 2: Call povKegel
       Case 3: Call povZylinder
       Case 4: Call povWuerfel
       
       Case Else: Debug.Print "POV-Objekt unzulässig Typ:" & .typ, .bez
     End Select
   End With
  Next akto
End If
End Sub

Private Sub pov_p(ByVal ind%)               'Punktkoordinaten ausgeben <x,y,z>

If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With obj(akto)                            'Aktuelles Objekt Punktkoordinaten ausgeben
    
    app " <" & .p(ind).y & "," & .p(ind).z & "," & -.p(ind).x & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub

Private Function modulo(ByVal x As Long, n As Long) As Long
Dim h As Single
   h = x / n
   modulo = Int((h - Int(h)) * n)
   'Debug.Print "modulo "; x; n; modulo
End Function

Private Sub povRGB(ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
                                            'pov RGB-Werte jeweils 0..1
  app " color red " & Int(r / 255) & " green " & Int(g / 255) & " blue " & Int(b / 255)
End Sub

Private Sub L2RGB(ByVal col As Long)        'LongInteger => GRB Werten
  Dim r, g, b As Integer                    'einzelne Bytes aus long-Variable dividieren
  Debug.Print "RGB "; col                   'Testausdruck
    r = modulo(col, 256)                    'niederwertigstes Byte = Rot
    b = Int(col / 65536)                    'höchstwertigstes Byte = Blau
    g = (modulo(col, 65536) - r) / 256      'mittleres Byte = Grün
    Call povRGB(r, g, b)
  'Debug.Print r; G; b
End Sub

Private Sub povKugel()                          'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kugel
    app .pov & "{": pov_p (1)                   'Mittelpunkt
    app "," & .r(1)                             'Radius
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
End Sub

Sub povKegel()                          'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .pov & "{": pov_p (1)                   'Mittelpunkt der Grundfläche
    app "," & .r(1) & ",": pov_p (2): app ",0"  'Spitze
    app " pigment {"                            'Farbe
    L2RGB .defcol
    'povRGB 0, 255,255
    appCr " }}"
  End With
End Sub

Sub povZylinder()                       'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .pov & "{": pov_p (1): app ","          'Mittelpunkte der Grundfläche
    pov_p (2)                                   'Mittelpunkte der Deckfläche
    app "," & .r(1)                             'Radius
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
End Sub

Sub povWuerfel()                        'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Würfel
    app .pov & "{": pov_p (1): app ","          'Eckpunkte der Grundfläche
    pov_p (2)                                   'Eckpunkte der Deckfläche
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
End Sub


