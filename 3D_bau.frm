VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   Caption         =   "3D-Baukasten"
   ClientHeight    =   12555
   ClientLeft      =   0
   ClientTop       =   1725
   ClientWidth     =   11925
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000008&
   Icon            =   "3D_bau.frx":0000
   LinkTopic       =   "Form1"
   MousePointer    =   1  'Pfeil
   PaletteMode     =   1  'ZReihenfolge
   ScaleHeight     =   837
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   795
   Begin VB.PictureBox xz 
      BackColor       =   &H00000000&
      Height          =   5775
      Left            =   0
      ScaleHeight     =   321.519
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   328.27
      TabIndex        =   3
      Top             =   720
      Width           =   5895
   End
   Begin VB.PictureBox d3 
      BackColor       =   &H00000000&
      Height          =   5895
      Left            =   0
      MousePointer    =   1  'Pfeil
      ScaleHeight     =   328.27
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   328.27
      TabIndex        =   2
      Top             =   6600
      Width           =   5895
   End
   Begin VB.PictureBox yz 
      BackColor       =   &H00000000&
      Height          =   5775
      Left            =   6000
      ScaleHeight     =   321.519
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   328.27
      TabIndex        =   1
      Top             =   720
      Width           =   5895
   End
   Begin VB.PictureBox xy 
      BackColor       =   &H00000000&
      Height          =   5895
      Left            =   6000
      ScaleHeight     =   328.27
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   328.27
      TabIndex        =   0
      Top             =   6600
      Width           =   5895
   End
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   120
      Top             =   7080
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&Datei"
      Begin VB.Menu mnuFileNew 
         Caption         =   "&Neu"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   "Ö&ffnen"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFileSave 
         Caption         =   "&Speichern"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileSaveAs 
         Caption         =   "Speichern unter"
      End
      Begin VB.Menu mnuFileClose 
         Caption         =   "Schließen"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "&Beenden"
      End
   End
   Begin VB.Menu Bearbeiten 
      Caption         =   "Bearbeiten"
   End
   Begin VB.Menu Objekte 
      Caption         =   "Objekte"
   End
   Begin VB.Menu Ansicht 
      Caption         =   "Ansicht"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************************
'  Modul: Form1                 3 D - B A U K A S T E N                Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung: Modul Form1                                   Datum:  30.1.2002
'
'  Darstellung der verwendeten Körper im Grund-, Auf- und Kreuzriss wie im GZ-Unterricht.
'  Initialisierung, Ablaufverwaltung, Menü und Werkzeugleiste (oben), Mousesteuerung
'  Darstellung der Normalrisse, 2D-Darstellungen, Zoom, 2D-Refresh,
'****************************************************************************************


'****************************************************************************************
'                               V a r i a b l e n
'****************************************************************************************

Dim aktv As PictureBox                      'aktueller View
Dim Bsnap As Boolean                        'auf näheste Gitterposition (Ganzzahl)
Dim grid_color As Long                      'Farbe des Hintergrundgitters
Dim zoomed_View%                            'auf vier Felder gezoomter View
Dim i%, form_loaded                         'Hilfsvariable


Dim datMode$, fileNum                       ' für Dateioperationen
Dim fName$                                  ' Dateiname
Dim msg, answer, title, dgDef               ' für MsgBoxen
Dim txt                                     ' Textvariable
'Dim Itool, Itool2                          ' Toolbar Indizes

'Const pi = 3.1415                          ' Konstante Pi
Const Bmsli% = 1                            'linker Mousebutton
Const Bmsre% = 2                            'rechter Mousebutton
Const Bmsmi% = 4                            'mittlerer Mousebutton
Const DefWidth% = 200                       'Einstellung der View-Fenster
Const DefHight% = 200                       'Einstellung der View-Fenster
Const Defmx! = 10                           'Standard-Vergrößerungsfaktor x
Const Defmy! = 10                           'Standard-Vergrößerungsfaktor y
Const ixy = 1, iyz = 2, ixz = 3, id3 = 4    'Index der Views als Konst.
Const StatusH = 400                         'Höhe der Statusleiste (unten)
Const F2H = 5190, F2W = 720                 'Standardabmessungen des Körperforms
Const F3H = 7500, F3W = 720                 'Standardabmessungen des Koordinatenforms
Const F4H = 8700, F4W = 3780                'Standardabmessungen des Registerforms
Const F5H = 450, F5W = 10300                'Standardabmessungen des Koordinatenforms
Const F6H = 3000, F6W = 3780                'Farbe/Textur


'****************************************************************************************
'                       B i l d s c h r i m   -  A u f b a u
'****************************************************************************************
'****************************************************************************************
'                     S t a n d a r d - E i n s t e l l u n g e n
'****************************************************************************************

 Private Sub Form_Load()                    'Einstellungen bei Programmstart
 
 Form_Set                                   'Standard_Bildschirmaufteilung
 form_loaded = 0                            'Form1 noch nicht geladen
 Timer1.Interval = 100                      'Timer alle 500 ms Statusanzeige
 
 Bsnap = True                               'auf näheste Gitterposition (Ganzzahl)
 objmax = 0                                 'anz der POV-Objekte
 zoomf = 10: d3zoomf = 10                   'Zoomfaktoren
 zoomed_View = 0                            'kein View gezoomed
 Itool = 1                                  '1 1. Tool in der Werkzeugbuttonleiste als Def
 Itool2 = 1                                 'ToolBar TB2 bewegliche "Körperauswahl"Form F2
 grid_color = vbWhite                       'RGB(255, 255, 255)
 pcount = 1                                 'Punktzähler
 d3akto = 0
 ReDim D3obj(0)                             '0. Körper im Körperarray = Achsenkreuz

 For i = 1 To UBound(View)                  'Views xy,yz,xz,3d
 akti = i                                   'Index des aktuellen Views im Array View
   With View(i)
    .x0 = DefWidth / 2                      'x0,y0 = Ursprung Mitte des Pictures
    .y0 = DefHight / 2
   
    .mx = Defmx                             'Defaultwerte
    .my = Defmy
    .sx = 1                                 'H-koordinate nicht spiegeln
    .sy = -1                                'V-Koordinate spiegeln !!
    .twist = False                          'nicht verdreht
    .grid = True                            'Hintergrundraster
    .cur = 1                                'Standard-Cursor
    
    Select Case i
        Case 1: .name = "Grund": Set .pic = xy: .sy = 1: .twist = True ': .y0 = 0
        Case 2: .name = "Auf": Set .pic = yz
        Case 3: .name = "Kreuz": Set .pic = xz: .sx = -1
        Case 4: .name = "3D": Set .pic = d3: .grid = False:
        Case Else: .name = "unkno"
    End Select
    'Debug.Print i, .name; .x0, .y0, .mx, .my, .sx, .sy, .twist, .grid 'Testausgabe
   End With
 Next i
  
 POV.Def_Pov                                'Standardwerte für Raytracer
 Def_3D
 
 
 
 form_loaded = 1                            'Form ist geladen
 ViewControl                                'Automatische Bildschiraufteilung !  ab V1.2
 ZoomIn_Click
 ViewRefresh                                'Anzeige erneuern
End Sub

'****************************************************************************************

Private Sub Form_Unload(Cancel As Integer)
  Unload F2                                 'ToolBar TB2 bewegliche "Körperauswahl"
  Unload F3                                'Toolbar TB1 "Werkzeuge"
  Unload F4                                 'Registerblätter
  Unload F5                                 'Koordinatenanzeige
  Unload F6
  Unload F9                                 'Diashow
  
  End
  Unload Me                                 'Form1 Hauptfenster
End Sub
'****************************************************************************************

Private Sub Form_Resize()           'VORSICHT! Wird bereits vor Form_Load aufgerufen!!
  'frmSplash.Show
  If form_loaded = 1 Then ViewControl       'nur wenn vorher Form_load
  F5.Width = Form1.Width: F5.Show           'Form F5 mit verändern
End Sub

'****************************************************************************************
'                  D a r s t e l l u n g s - / A b l a u f v e r w a l t u n g
'****************************************************************************************

Sub Form_Set()                              'Standard-Plazierung der einzelnen Forms
 Form1.Top = 0: Form1.Left = F2W            'Form in linke obere Bildschirmecke neben F2
 Form1.Height = Screen.Height - StatusH - F5H + 100 'fast volle Bildschirmhöhe
 Form1.Width = Screen.Width - (F2W + F4W)   'volle Bildschirmbreite-Tools
 F2.Top = F3H: F2.Left = 0                  'F2= ToolBar TB2 "Körperauswahl" links oben
 F2.Height = Screen.Height - StatusH - F3H
 F2.Width = F2W
 F2.TB2.Height = F2.Height
 F2.Show
 F3.Top = 0: F3.Left = 0: F3.Width = F3W    'F3=Toolbar TB1 "Werkzeuge" darüber
 F3.Height = F3H                            'bis zur Statuszeile aufziehen
 F3.Show
 F4.Top = 0                                 'F4= Registerblätter
 F4.Left = Screen.Width - F4W               'Recher Rand
 'F4.Height = Screen.Height - StatusH
 F4.Show
 F5.Top = Screen.Height - StatusH - F5H     'Koordinatenanzeige
 F5.Left = F3W                              'unten im 3D-View rechts neben F3
 F5.Width = Form1.Width
 F5.Frame6.Width = F5.Width - 50
 F5.Show                                    '(Auflößung > 600x800)
 F6.Left = F4.Left: F6.Top = F4H            'Farbe/Textur-Fenster unter F4
 F6.Show
End Sub

'****************************************************************************************

Sub ViewControl()                   'Automatische Grössenänderung und Anpassung
Dim FH, FW, i, rand  As Integer             'der Zeichenfläche an die Einstellungen von
Dim k As Single                             'Form1 und die Bildschirmgeometrie

rand = 0                                    'Default = wenig Rand
FH = Form1.Height / Screen.TwipsPerPixelY
FW = Form1.Width / Screen.TwipsPerPixelX
Debug.Print Screen.TwipsPerPixelX; Screen.TwipsPerPixelY; Screen.Width; Screen.Height
                                            'ist horizontal oder vertikal weniger Platz?
If FH < FW Then F = Abs(FH) Else F = Abs(FW)
      'rand = Int((Form1.Width / Screen.TwipsPerPixelX - F) / 2)

For i = 1 To 4                              'Views xy,yz,xz,d3
 akti = i                                   'Index des aktuellen Views im Array View
   With View(i)                             'Ausgabefelder
    Select Case i
        Case 1: Set .pic = xy: .pic.Top = F / 2: .pic.Left = F / 2 + rand
        Case 2: Set .pic = yz: .pic.Top = 0: .pic.Left = F / 2 + rand
        Case 3: Set .pic = xz: .pic.Top = 0: .pic.Left = rand
        Case 4: Set .pic = d3: .pic.Top = F / 2: .pic.Left = rand
        Case Else: .name = "unkno"
    End Select
    .pic.Width = F / 2                      'Viertelteilung des Zeichenbereichs
    .pic.Height = F / 2
     .x0 = F / 5                            'Lage des Ursprungs
     .y0 = F / 5
   End With
 Next i

End Sub


'****************************************************************************************
'                               M e n ü - O p e r a t i o n e n
'****************************************************************************************

 
Sub mnuFileExit_Click()                     'Datei schließen
  Unload F2                                 'ToolBar TB2 bewegliche "Körperauswahl"
  Unload F3                                'Toolbar TB1 "Werkzeuge"
  Unload F4                                 'Registerblätter
  Unload F5                                 'Koordinatenanzeige
  Unload F9                                 'Diashow
  End
  Unload Me
End Sub

'****************************************************************************************

Sub mnuFileNew_Click()                      'Neue Szene erstellen
  If objmax > 0 Then Call F4.Clear_All_Objects         'Objectarray leeren
End Sub

'****************************************************************************************

Sub mnuFileSave_Click()
  Call F4.BPOV_Comp_Click                   'Exportdatei erstellen
  Call F4.BPov_Save_Click                   'in Ausgabedatei schreiben
End Sub

'****************************************************************************************
'                        Z o o m / R e f r e s h - F u n k t i o n e n
'****************************************************************************************
'Anm: ViewRefresh(), VRefresh() am Ende der Datei

Private Sub Form_paint()                    'wenn Form1 verdeckt war
  Call ViewRefresh
  Call D3_Resize
End Sub

'****************************************************************************************

Sub ZoomIn_Click()                          ' Vergrößern der 2D-Ansichten
Dim i%

If zoomf < 50 Then
zoomf = zoomf * 1.2                         'um 20 % vergrößern
For i = 1 To 3                              'xy,yz,xz
  akti = i
  With View(i)
    .mx = zoomf                             ' Multiplikationsfaktor in x-Richtung
    .my = zoomf                             ' Multiplikationsfaktor in y-Richtung
    Set aktv = .pic
  End With

Next i
Call grid                                   'Hintergrundraster ausgeben
If objmax > 0 Then Call VRefresh            'Objekte neu zeichnen, falls vorhanden
End If
End Sub

'****************************************************************************************

Sub ZoomOut_Click()                         ' Verkleinern der 2D Anzeige
Dim i%

If zoomf > 5 Then
zoomf = zoomf / 1.2                         ' um ca 16 % verkleinern

If zoomf > 0 Then
 For i = 1 To 3
  akti = i
  With View(i)
     .mx = zoomf                            ' Multiplikationsfaktor in x-Richtung
     .my = zoomf                            ' Multiplikationsfaktor in y-Richtung
    Set aktv = .pic
  End With
 Next i
 Call grid
 If objmax > 0 Then Call VRefresh           'Objekte neu zeichnen, falls vorhanden
End If
End If
End Sub

'****************************************************************************************

Private Sub Timer1_Timer()                  'ständige Aktualisierungen
With View(akti)                             '5x pro Sekunde (Timer1.Intervall)
  F5.Tzoom.Text = zoomf / 10                'Zoomfaktor anzeigen
  .pic.MousePointer = .cur                  'akt. Cursorfor des Views
  'D3_Rotate 0, 1, 0
  DoEvents
End With
End Sub

'****************************************************************************************
'                      w e i t e r e   B e d i e n u n g s e l e m e n t e
'****************************************************************************************


'****************************************************************************************
'                2 D - U m r e c h n u n g s - /  Z e i c h e n f u n k t i o n e n
'****************************************************************************************

Private Function x2p(ByVal x As Single, ByVal y As Single, Optional rel As Boolean) As R2_Point
Dim h As Single                             'Umrechnung Koordinaten -> ScaleKoordinaten
  
  With View(akti)                           'Aktueller View
  If .twist Then                            'Koordinatenachsen vertauscht!
    h = x: x = y: y = h                     '"Dreieckstausch"
  End If
  If rel = False Then                       'Parameter = abolute Koordinaten!!
    .dx = .x0 + x * .mx * .sx               'aktuelle Pos. merken
    .dy = .y0 + y * .my * .sy               'Zeichenfunktionen
  Else
    .dx = .dx + x * .mx * .sx               'aktuelle Pos. merken für relative
    .dy = .dy + y * .my * .sy               'Zeichenfunktionen
  End If
  x2p.x = .dx                               'Rückgabestruktur
  x2p.y = .dy
  
  'Debug.Print " x2p: dx= " & .dx, "dy= " & .dy
End With
End Function

'****************************************************************************************
'*  dwp: DrawPoint zeichnet einen Punkt im aktuellen View ev. Farbe ev. relativ *

Private Sub dwp(ByVal x!, ByVal y!, Optional farbe As Long, Optional rel As Boolean)

  If farbe = 0 Then farbe = obj(akto).defcol
  aktp = x2p(x, y, rel)                     'xy Koordinaten -->ScaleEinheiten

  View(akti).pic.PSet (aktp.x, aktp.y), farbe
End Sub

'****************************************************************************************
'*  dwc: DrawCircle zeichnet einen Kreis im aktuellen View ev. Farbe ev. relativ *

Sub dwc(ByVal x!, ByVal y!, ByVal r!, Optional farbe As Long, Optional rel As Boolean)
  
  If farbe = 0 Then farbe = obj(akto).defcol
  aktp = x2p(x, y, rel)                     'xy Koordinaten -->ScaleEinheiten
   
  View(akti).pic.Circle (aktp.x, aktp.y), Abs(r) * View(akti).mx, farbe
End Sub

'****************************************************************************************
'*  dwl: DrawLine zeichnet eine Linie im aktuellen View ev. Farbe ev. relativ *

Sub dwl(Optional ByVal x1!, Optional ByVal y1!, Optional ByVal x2!, Optional ByVal y2!, _
Optional farbe As Long, Optional rel As Boolean)

Dim aktp2 As R2_Point
If farbe = 0 Then farbe = obj(akto).defcol

  If rel = False Then
    aktp = x2p(x1, y1)                      'Anfangspunkt (Koord. -> Scaleeinheiten)
    aktp2 = x2p(x2, y2)                     'Endpunkt
  
    View(akti).pic.Line (aktp.x, aktp.y)-(aktp2.x, aktp2.y), farbe
  Else
    aktp2 = x2p(x2, y2, rel = True)         'relative Bewegung!!
    With View(akti)                         'von letzter Position
      .pic.Line -(aktp2.x, aktp2.y), farbe  'zum Endpunkt
    End With
  End If
End Sub

'****************************************************************************************
'                     2D O b j e k t e    d a r s t e l l e n
'****************************************************************************************
'Kernfunktion: draw2D
'zeichnet die Projektionen der Körperkanten in den jeweiligen Riss (xy,xz,yz)
'aus Performanze- und Übersichtlichkeitsgründen werden einige Vordefinierte Körper
'(z.B. Kugel) mit eigenen Anzeigeroutinen dargestellt.
'****************************************************************************************

Sub draw2D()                    '2D-Ausgabe der sichtbaren Kanten des aktuellen Körpers
Dim ak%                         'außer Gitterraster, Kugel,.. (Sonderbehandlung)

If akto > 0 Then
  
    For ak = 1 To UBound(D3obj(akto).e) - 1 'Alle Kanten des Körpers werden auf die
    With D3obj(akto)                        'jeweilige Ebene projiziert
    
   'Debug.Print "d2line "; akto; ak
   akti = ixy                               'xy-Ebene
     Form1.dwl .V(.e(ak).AI).x, .V(.e(ak).AI).y, .V(.e(ak).ei).x, .V(.e(ak).ei).y
   akti = ixz                               'xz-Ebene
     Form1.dwl .V(.e(ak).AI).x, .V(.e(ak).AI).z, .V(.e(ak).ei).x, .V(.e(ak).ei).z
   akti = iyz                               'yz-Ebene
     Form1.dwl .V(.e(ak).AI).y, .V(.e(ak).AI).z, .V(.e(ak).ei).y, .V(.e(ak).ei).z
  End With
  Next ak
End If
End Sub

'****************************************************************************************

Sub drawKugel()                             'Kugel in allen Projektionen ein Kreis!
  akti = ixy                                'Zeichnet die 3 Ansichten in die Views
  With obj(akto)                            '3 Kreise
    akti = ixy                              'Grundriss:
    dwc .trans.x, .trans.y, .scale.x        'Kreis pos ...x, ...y, radius r(1)
    akti = iyz                              'Aufriss:
    dwc .trans.y, .trans.z, .scale.x
    akti = ixz                              'Kreuzriss:
    dwc .trans.x, .trans.z, .scale.x
  End With
End Sub

'****************************************************************************************

'****************************************************************************************

Private Sub grid(Optional ByVal farbe As Long) 'Zeichnet Hintergrundraster
 Dim i, j, M As Integer                        'in 2D-Ausgabefeldern (View 1-3)
 Dim save_akti As Integer
 
 'save_akti = akti
 For akti = 1 To 3                          'alle Views durchgehen
 With View(akti)
    M = .pic.ScaleWidth / .mx               '1/20 ScaleWidth (je mach zoomf)
    M = Int(M / 2)                          'ca. 30
    
 If farbe = 0 Then farbe = grid_color
 .pic.AutoRedraw = True                     'Hintergrundgitter permanent!!
 .pic.Cls                                   'View löschen
 
   For i = -M To M
    For j = -M To M
      .pic.PSet (i * .mx + .x0, j * .my + .y0), farbe
    Next j
  Next i
  
  dwl -2, 0, 10, 0, farbe                   'Achsenkreuz = Koordinatenursprung
  dwl 9, -0.1, 10, 0, farbe
  dwl 9, 0.1, 10, 0, farbe
  
  dwl 0, -2, 0, 10, farbe                   '2.Pfeil
  dwl -0.1, 9, 0, 10, farbe
  dwl 0.1, 9, 0, 10, farbe

  If akti = ixz Then
    dwl 1, 9, 2, 9, farbe                   ' "z"
    dwl 1, 10, 2, 10, farbe
    dwl 2, 9, 1, 10, farbe
    dwl 9, 1, 10, 2, farbe                  ' "x"
    dwl 9, 2, 10, 1, farbe
    
    For j = -M To M
      .pic.PSet (j * .mx + .mx / 2 + .x0, .y0), farbe
    Next j
  End If
  If akti = iyz Then
    dwl 1, 9, 2, 9, farbe                   ' "z"
    dwl 1, 10, 2, 10, farbe
    dwl 2, 10, 1, 9, farbe
    dwl 9, 1, 10, 2, farbe                  ' "y"
    dwl 9, 2, 9.5, 1.5, farbe
    
    For j = -M To M
      .pic.PSet (j * .mx + .mx / 2 + .x0, .y0), farbe
    Next j
  End If
   If akti = ixy Then
    dwl 9, 1, 10, 2, farbe                  ' "x"
    dwl 9, 2, 10, 1, farbe
    dwl 1, 9, 1.5, 9.5, farbe               ' "y"
    dwl 2, 9, 1, 10, farbe
  End If
    .pic.AutoRedraw = False
  End With
  Next akti
  'akti = save_akti
End Sub

'****************************************************************************************
'                              M o u s e - E i n g a b e n
'****************************************************************************************
'leider für jedes Picture (View) die gleiche Funktion explizit notwendig

Private Function snap(ByVal x As Single) As Single        'Snap to Grid
 Dim xn%
 If Bsnap Then                                      'auf nächstliegende ganzz. Koordinate
   xn = Fix(x)
   If Abs(x - xn) >= 0.5 Then snap = Sgn(x) * (Abs(xn) + 1) Else:  snap = xn
   Else: snap = x
 End If                                             'Bsnap
End Function

'****************************************************************************************

Private Function p2x(x As Single) As Single         'Picture to x-Koordinaten umrechnen
Dim h As Single                                     'Hilfsvariable für Dreieckstausch

  With View(akti)
    p2x = snap(.sx * (x - .x0) / .mx)               'x = PicKoordinaten, x0 = Nullkoord
    .xneu = p2x
  End With                                          'sx = Spiegelungsfaktor, mx ..Zoomf.
End Function

'****************************************************************************************
Private Function p2y(y As Single) As Single         'Picture to y-Koordinaten umrechnen

  With View(akti)                                   'aktueller View
    p2y = snap(.sy * (y - .y0) / .my)               'y = PicKoordinaten, y0 = Nullkoord
    .yneu = p2y
  End With                                          'sx = Spiegelungsfaktor, my ..Zoomf.
End Function
'****************************************************************************************
Sub Start_Mark()                                    'Standardposition beim Einfügen

    akta = 0                                        'akta View zurücksetzen
    F4.T1(1).ForeColor = vbYellow                   'alle Koordinatenbewegungen freigeben
    F4.T1(2).ForeColor = vbYellow
    F4.T1(3).ForeColor = vbYellow
End Sub
'****************************************************************************************

Private Sub mark(ByVal vi%, farbe As Long)          'Markierung im angegebenen View
                                                    'mit angegebener Farbe
  With View(vi)
    dwl .xneu, .yneu - 0.5, .xneu, .yneu + 0.5, farbe, False  'neues Markierungskreuz
    dwl .xneu - 0.5, .yneu, .xneu + 0.5, .yneu, farbe, False  'setzen
  End With

End Sub
'****************************************************************************************

Sub mark3(x!, y!, z!, farbe As Long)                'setzt in allen 2D-Views ein Markierungs-
Dim i%, save_akti                                   'Kreuz in der Farbe
 
 save_akti = akti
 ViewRefresh
  akti = ixy
    dwl x, y - 0.5, x, y + 0.5, farbe, False        'neues Markierungskreuz
    dwl x - 0.5, y, x + 0.5, y, farbe, False        'setzen
  akti = ixz
    dwl x, z - 0.5, x, z + 0.5, farbe, False        'neues Markierungskreuz
    dwl x - 0.5, z, x + 0.5, z, farbe, False        'setzen akti = ixy
  akti = iyz
    dwl y, z - 0.5, y, z + 0.5, farbe, False        'neues Markierungskreuz
    dwl y - 0.5, z, y + 0.5, z, farbe, False        'setzen
    
 akti = save_akti
End Sub
'****************************************************************************************

Private Sub mark_point(ByVal xp!, ByVal yp!)        'Parameter in Punktkoordinaten
Dim save_akti%                                      'Index auf aktuellen View sichern
Dim x!, y!
Dim Start As Boolean                                'Markierungslogik starten

Debug.Print "mark _point:"; pcount


Start = False
save_akti = akti
x = p2x(xp): y = p2y(yp)                            'in Koordinatensystem umrechnen
With View(akti)                                     'akti : aktueller View
                                                    'akta : letzter aktueler View
  If (akta <> 0) And (akti <> 0) Then               'bereits Markierungen
    Call .pic.Cls                                   'löschen
    VRefresh                                        'neu zeichnen der Objekte
  End If
    mark akti, vbGreen
  .xalt = .xneu                                     'als Position des letzten Tastendrucks
  .yalt = .yneu                                     'merken
End With

Select Case pcount
Case 1:
If akta = 0 Or akta = akti Then                     'erster View oder mehrmals gleicher
  Select Case akti                                  'welcher View?
    Case ixy:
        F4.T1(1).ForeColor = vbGreen                'vbGreen = grün = gesperrt
        F4.T1(2).ForeColor = vbGreen
        F4.T1(1).Text = x                           'Koordinaten waehrend Tastendruck
        F4.T1(2).Text = y                           'twist = TRUE x und y vertauscht!!!!
        F5.TStatus.Text = "z-Koordinate markieren"        '2 Koordinaten bekannt

    Case iyz:
        F4.T1(2).ForeColor = vbGreen
        F4.T1(3).ForeColor = vbGreen
        F4.T1(2).Text = x                           'Koordinaten waehrend Tastendruck
        F4.T1(3).Text = y
        F5.TStatus.Text = "x-Koordinate markieren"        '2 Koordinaten bekannt
    
    Case ixz:
        F4.T1(1).ForeColor = vbGreen
        F4.T1(3).ForeColor = vbGreen
        F4.T1(1).Text = x                           'Koordinaten waehrend Tastendruck
        F4.T1(3).Text = y
        F5.TStatus.Text = "y-Koordinate markieren"        '2 Koordinaten bekannt
  
  End Select
End If

If akta <> akti And akta <> 0 Then                  'anderer View
  Select Case akti                                  'welcher View?
    Case ixy:
        If F4.T1(1).ForeColor <> vbGreen Then F4.T1(1).Text = x  'nicht gesperrte Zelle
        If F4.T1(2).ForeColor <> vbGreen Then F4.T1(2).Text = y
        
    Case iyz:
        If F4.T1(2).ForeColor <> vbGreen Then F4.T1(2).Text = x
        If F4.T1(3).ForeColor <> vbGreen Then F4.T1(3).Text = y
    Case ixz:
        If F4.T1(1).ForeColor <> vbGreen Then F4.T1(1).Text = x
        If F4.T1(3).ForeColor <> vbGreen Then F4.T1(3).Text = y
  End Select
  pcount = 2                   'erst nach 2.Markierung
  F5.TStatus.Text = "Grösse angeben oder markieren"     'alle 3 Koordinaten bekannt
  Start = True
  mark3 F4.T1(1).Text, F4.T1(2).Text, F4.T1(3).Text, vbYellow
End If


Case 2:                                             'Kantellänge (Scalierung)
If akta = 0 Or akta = akti Then                     'erster View oder mehrmals gleicher
F4.T1(4).ForeColor = vbYellow                       'freigegeben
F4.T1(5).ForeColor = vbYellow
F4.T1(6).ForeColor = vbYellow
  Select Case akti                                  'welcher View?
    Case ixy:
        F4.T1(4).ForeColor = vbGreen                'vbGreen = grün = gesperrt
        F4.T1(5).ForeColor = vbGreen
        F4.T1(4).Text = (x - F4.T1(1).Text)           'Koordinaten waehrend Tastendruck
        F4.T1(5).Text = (y - F4.T1(2).Text)           'twist = TRUE x und y vertauscht!!!!
        F5.TStatus.Text = "z-Koordinate markieren"  '2 Koordinaten bekannt

    Case iyz:
        F4.T1(5).ForeColor = vbGreen
        F4.T1(6).ForeColor = vbGreen
        F4.T1(5).Text = (x - F4.T1(2).Text)           'Koordinaten waehrend Tastendruck
        F4.T1(6).Text = (y - F4.T1(3).Text)
        F5.TStatus.Text = "x-Koordinate markieren"  '2 Koordinaten bekannt
    
    Case ixz:
        F4.T1(4).ForeColor = vbGreen
        F4.T1(5).ForeColor = vbGreen
        F4.T1(4).Text = (x - F4.T1(1).Text)           'Koordinaten waehrend Tastendruck
        F4.T1(5).Text = (y - F4.T1(2).Text)
        F5.TStatus.Text = "y-Koordinate markieren"  '2 Koordinaten bekannt
  
  End Select
End If

If akta <> akti And akta <> 0 Then                  'anderer View
  Select Case akti                                  'welcher View?
    Case ixy:
        If F4.T1(4).ForeColor <> vbGreen Then F4.T1(4).Text = (x - F4.T1(1).Text)
        If F4.T1(5).ForeColor <> vbGreen Then F4.T1(5).Text = (y - F4.T1(2).Text)
        
    Case iyz:
        If F4.T1(5).ForeColor <> vbGreen Then F4.T1(5).Text = (x - F4.T1(2).Text)
        If F4.T1(6).ForeColor <> vbGreen Then F4.T1(6).Text = (y - F4.T1(3).Text)
    Case ixz:
        If F4.T1(4).ForeColor <> vbGreen Then F4.T1(4).Text = (x - F4.T1(1).Text)
        If F4.T1(6).ForeColor <> vbGreen Then F4.T1(6).Text = (y - F4.T1(3).Text)
  End Select
  pcount = 1            'erst nach 2.Markierung
  
  F5.TStatus.Text = ""                              'alle 3 Koordinaten bekannt

  Start = True
  mark3 Val(F4.T1(4).Text) + Val(F4.T1(1).Text), Val(F4.T1(5).Text) + Val(F4.T1(2).Text), _
  Val(F4.T1(6).Text) + Val(F4.T1(3).Text), vbYellow
End If

Case Else: Debug.Print "mark_point-Fehler :"; pcount
End Select

akti = save_akti                                    'letzter verwendeter View
akta = akti
If Start Then Start_Mark

End Sub
                                         
'****************************************************************************************

Private Sub xy_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixy)
    akti = ixy                                      'aktuellen View bekanntgeben
    F5.Tx.Text = p2x(y)                             'Koordinatenumrechnung u. Anzeige
    F5.Ty.Text = p2y(x)                             'twist =TRUE x und y vertauscht!!!!
    F5.Tz.Text = ""                                 'aktuelle z-position nicht anzeigen
  End With
End Sub

'****************************************************************************************
Private Sub xy_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixy)
    akti = ixy                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli: mark_point y, x                   'Markierungspunkt KOORDINATENTAUSCH!
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

'****************************************************************************************
Private Sub yz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    F5.Ty.Text = p2x(x)                             'aktuelle Koordinatenposition der Mouse
    F5.Tz.Text = p2y(y)
    F5.Tx.Text = ""                                 'x-Koordinate nicht anzeigen
  End With
End Sub

'****************************************************************************************
Private Sub yz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        mark_point x, y                             'Markierungspunkt setzen
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

'****************************************************************************************
Private Sub xz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    F5.Tx.Text = p2x(x)                             'Koordinatenanzeige
    F5.Tz.Text = p2y(y)
    F5.Ty.Text = ""                                 'y-Koordinate nicht anzeigen
  End With
End Sub

'****************************************************************************************
Private Sub xz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        mark_point x, y                             'Markierungspunkt setzen
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub
'****************************************************************************************
Private Sub d3_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(id3)
    akti = id3                                       'aktuellen View bekanntgeben

  End With
End Sub

'****************************************************************************************
Private Sub d3_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(id3)
    akti = id3                                      'aktuellen View bekanntgeben
      Select Case Button
      Case Bmsli:  D3_ZoomIn                        'linker MouseButton
                   ZoomIn_Click
      Case Bmsre:  D3_ZoomOut                       'rechter MouseButton
                   ZoomOut_Click
      Case Bmsmi:  Zoomed_d3                        'mittlerer MouseButton
     End Select
    .dx = p2x(x)                                    'Position merken
    .dy = p2y(y)
  End With
End Sub

'****************************************************************************************
'                                   3 D - R o u t i n e n
'****************************************************************************************

Private Sub Def_3D()                                'Standardeinstellungen 3d-View
  Debug.Print "Def_3D"
  akti = id3
  Call D3_Refresh(0)
  Call D3_Resize
End Sub

'****************************************************************************************
Sub D3_ZoomOut()
Dim i%
  If d3zoomf > 5 Then
     d3zoomf = d3zoomf / 1.2
     d3.Cls: scal = 1 / 1.2                         'Faktor 1/1,2 verkleinern
      For i = 0 To objmax
        scalierung CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), scal
      Next i
     D3_Resize
  End If
End Sub

'****************************************************************************************

Sub D3_ZoomIn()
  Call F5.D3_ZoomIn_Click
End Sub

'****************************************************************************************
Sub D3_Resize()
    d3.ScaleTop = -d3.ScaleHeight \ 2           'Mitte des Pictures
    d3.ScaleLeft = -d3.ScaleWidth \ 2           '= Koordinatenursprung
    d3.Cls                                      'Picture "d3" löschen
    
    
    For i = 0 To UBound(D3obj)
     d3.ForeColor = obj(i).defcol               'Farbe des Objekts
     show_3D d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(d3.ScaleWidth \ 2), _
     CInt(d3.ScaleHeight * 0.7)
    Next i
End Sub

'****************************************************************************************

Private Sub D3_Rotate(ByVal alpha%, ByVal beta%, ByVal gamma%)

Dim i%, a%

  Form1.d3.Cls                      'kann aus Performancegründen aus der Schleife sein
  For a = 0 To Abs(alpha)
  objmax = UBound(obj)
     For i = 0 To UBound(obj)
      Form1.d3.ForeColor = obj(i).defcol
      rotation CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), alpha, beta, gamma
      show_3D Form1.d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), _
      CInt(Form1.d3.ScaleWidth \ 2), CInt(Form1.d3.ScaleHeight * 0.7)
     Next i
  Next a
End Sub
'****************************************************************************************

Sub Zoomed_d3()                                 'D3 View auf vier Felder vergrößern
                                                'bzw verkleinern (Toggelfunktion)
  If zoomed_View = 0 Then
      d3.Top = 1: d3.Left = 0                   'fertig machen zum Zoomen !
      d3.Height = Form1.Height / Screen.TwipsPerPixelY  'max.vergrössern
      d3.Width = Form1.Width / Screen.TwipsPerPixelX
      
      xz.Visible = False                        'Kreuzriss ausblenden
      zoomed_View = 4
  ElseIf zoomed_View = 4 Then                   'verkleinern
      zoomed_View = 0
      xz.Visible = True                         'Kreuzriss einblenden
      ViewControl
      ViewRefresh
  End If
    D3_Resize
End Sub

'****************************************************************************************
'                          R e f r e s h - F u n k t i o n e n
'****************************************************************************************
'Kernfunktion: ViewRefresh(), V_Refresh
'nach Zoomen, Überdecken,... werden die 2D-Projektionen (xy,xz,yz) neu gezeichnet.
'****************************************************************************************

Sub ViewRefresh()                               'Neuzeichnen der Views
 Call grid                                      'Raster neu zeichnen
 If objmax > 0 Then Call VRefresh               'Objekte neu zeichnen, falls vorhanden
End Sub

'****************************************************************************************
Sub VRefresh()                                  'Auffrischen  der 2D Objekt-Darstellung
Dim save_akto, save_akti As Integer

save_akti = akti
save_akto = akto                                'Sicherungskopie
If objmax < akto Then objmax = UBound(obj)      'objmax aktualisieren
If objmax > 0 Then                              'nur Körper (Raster nicht)
  D3_Refresh (akto)                             'd3obj hinkt nach !
  For akto = 1 To UBound(obj)                   'von Anfang bis Ende
  
    With obj(akto)
     'Debug.Print "VR:objekt"; akto; d3akto; UBound(D3obj); .bez; .POV '; .defcol
  
     Select Case .typ                           'Spezielle Körper (Rotationskörper)
       Case 0:                                  'Hintergrundraster + Achsenkreuz
                                                'wird nicht! immer erneuert (Auto-redraw)
       Case 1: Call drawKugel                   'Kugel als Kreise neu zeichnen
       Case 2: Call draw2D 'drawKegel
       Case 3: Call draw2D 'Zylinder
       
       Case Else: draw2D                        'alle anderen Körper als Projektion der
     End Select                                 'Kanten
                                                'Testausgabe der Datenstruktur
    End With
  Next akto
End If
akti = save_akti
akto = save_akto                                'akto aus Sicherungskopie
End Sub

'****************************************************************************************
'****************************************** EOF *****************************************


