Attribute VB_Name = "M2"
'****************************************************************************************
'  Modul: M2                  3 D - B A U K A S T E N                  Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung: Modul M2                                      Datum:  30.1.2002
'  Für die Transformationen in der Grafik-Pipeline (Rotation,Scalierung,Translation)
'  werden Matrizenrechnungen (4x4 Matrizen) sowie Vektorrechnungen benötigt.
'  Matrizenrechnung, Vektorrechnung
'****************************************************************************************

Global a(1 To 4, 1 To 4) As Single          'quadratische (4x4) Matrizen
Global b(1 To 4, 1 To 4) As Single
Global C(1 To 4, 1 To 4) As Single
Global V1(1 To 4) As Single                 'Spaltenvektor = Punktvektor(x,y,z,1)
Global V2(1 To 4) As Single                 'wegen Matrizenrechnung auf 4 Elemente erw.


'****************************************************************************************
'                           Matrix -Grundroutinen
'****************************************************************************************

Sub MPrint(ByRef M)                         'Ausgabe der übergebenen 4x4 Matrix
Dim i%, j%
Debug.Print ""                              'in das Direktfenster
 For i = 1 To 4                             'Zeile
   Debug.Print ""
   For j = 1 To 4                           'Spalte
     Debug.Print M(i, j);                   'Element ausgeben
   Next j
 Next i
End Sub

Sub VPrint(ByRef V)                         'Ausgabe des übergebenen Vektors(4)
Dim i%
Debug.Print ""                              'in das Direktfenster
 For i = 1 To 4                             'Zeile
   Debug.Print ""
     Debug.Print V(i);                      'Element ausgeben
 Next i
End Sub

Sub MClear(ByRef M)                         'Alle Matrixelemente = 0 setzen
Dim i%, j%
 For i = 1 To 4                             'Zeile
   For j = 1 To 4                           'Spalte
      M(i, j) = 0                           'Element =0
   Next j
 Next i
End Sub

Sub MEin(ByRef M)                           'Einheitsmatrix erzeugen
  MClear M                                  'Call ByRef ohne () !!
  M(1, 1) = 1: M(2, 2) = 1
  M(3, 3) = 1: M(4, 4) = 1
End Sub

Sub MMul(ByRef a, ByRef b, ByRef C)         'Matrizenmultiplikation zweier 4x4 Matrizen
Dim i%, j%, k%                              'C = A . B  ( C wird überschrieben !!)
  For i = 1 To 4                            'C(i,j) = Sum (k=1..4)( a(i,k) * b(k,j) )
    For j = 1 To 4
      C(i, j) = 0
      For k = 1 To 4
        C(i, j) = C(i, j) + a(i, k) * b(k, j)
      Next k
    Next j
  Next i
End Sub

Sub MxVMul(ByRef a, ByRef V1, ByRef V2)     '4x4 Matrix mal SpaltenVektor (PunktVektor)
Dim i%, k%                                  'C = A . B  ( C wird überschrieben !!)
  For i = 1 To 4                            'V1(i) = Sum (k=1..4)( a(i,k) * V1(k) )
      V2(i) = 0
      For k = 1 To 4
        V2(i) = V2(i) + a(i, k) * V1(k)
      Next k
  Next i
End Sub

Sub p2v(ByRef P As R3_Point, ByRef V1) 'Wandelt einen R3-Punkt in einen 4-Vektor
   V1(1) = P.x
   V1(2) = P.y
   V1(3) = P.z
   V1(4) = 1
End Sub

Sub v2p(ByRef P As R3_Point, ByRef V1) 'Wandelt einen 4-Vektor  in einen R3-Punkt
   P.x = V1(1)
   P.y = V1(2)
   P.z = V1(3)
End Sub

Sub FTM(ByVal akt, ByRef M)                 'Füllt d3obj mit Transformationsmatrix
                                  'Direkte Zuweisung .TM = M vom Compiler verweigert?
                                  
  If UBound(D3obj) < d3akto Then
    ReDim Preserve D3obj(akto) 'D3-Objektarray vergrößern
    Debug.Print "akto <> d3akto ! "; akto; d3akto
  End If
  
  With D3obj(akt)
    .TM(1, 1) = M(1, 1): .TM(1, 2) = M(1, 2): .TM(1, 3) = M(1, 3): .TM(1, 4) = M(1, 4)
    .TM(2, 1) = M(2, 1): .TM(2, 2) = M(2, 2): .TM(2, 3) = M(2, 3): .TM(2, 4) = M(2, 4)
    .TM(3, 1) = M(3, 1): .TM(3, 2) = M(3, 2): .TM(3, 3) = M(3, 3): .TM(3, 4) = M(3, 4)
    .TM(4, 1) = M(4, 1): .TM(4, 2) = M(4, 2): .TM(4, 3) = M(4, 3): .TM(4, 4) = M(4, 4)
  End With
End Sub

Sub FillTM(akt)                         'Berechnen und Füllen der Transformationsmatrix
  Dim a(1 To 4, 1 To 4) As Single       'Matrix A
  Dim b(1 To 4, 1 To 4) As Single       'Matrix B
  Dim C(1 To 4, 1 To 4) As Single       'Matrix C
  Dim TM(1 To 4, 1 To 4) As Single      'Matrix TM
  Dim rx, ry, rz As Single              'Winkel in Bogenmass
  
  MEin a: MEin b: MEin C: MEin TM       'Alle Matrizen mit Einheitsmatrix belegen
 
 If akt <= UBound(obj) Then
 
  With obj(akt)
                                         'unnötige Berechnungen vermeiden
  If (.rot.x <> 0) Or (.rot.y <> 0) Or (.rot.z <> 0) Then

    If .rot.x <> 0 Then                  'Rotation um die X-Achse
      rx = .rot.x * pi / 180             'Rotationswinkel in Bogenmass umrechnen
      a(2, 2) = Cos(rx)
      a(2, 3) = -Sin(rx)
      a(3, 2) = Sin(rx)
      a(3, 3) = Cos(rx)
    End If
    
    If .rot.y <> 0 Then                  'Rotation um die Y-Achse
      ry = .rot.y * pi / 180
      b(1, 1) = Cos(ry)
      b(1, 3) = Sin(ry)
      b(3, 1) = -Sin(ry)
      b(3, 3) = Cos(ry)
    End If
    
    If .rot.z <> 0 Then                  'Rotation um die Y-Achse
      rz = .rot.z * pi / 180
      C(1, 1) = Cos(rz)
      C(1, 2) = -Sin(rz)
      C(2, 1) = Sin(rz)
      C(2, 2) = Cos(rz)
    End If
      MMul a, b, TM                     'TM = A.B
      MMul TM, C, a                     'A = TM.C  Ergebnis der Rotation
   End If                               '<>0 0 0

      MEin b: MEin C: MEin TM           'wieder mit Einheitsmatrix belegen
      
      b(1, 1) = .scale.x                'Scalierung in x,y,z - Richtung
      b(2, 2) = .scale.y
      b(3, 3) = .scale.z
      
      C(1, 4) = .trans.x                'Translation in x,y,z
      C(2, 4) = .trans.y
      C(3, 4) = .trans.z
              
    MMul a, b, TM
    MMul C, TM, a                       'Ergebnis in A
    
    FTM akt, a                          'in die Transformationsmatrix des O.
    
  End With
End If
End Sub

Sub Test_Click()
 Debug.Print "Körper "; akto; ""
 
 MPrint D3obj(akto).TM
End Sub

