VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   Caption         =   "3D-Baukasten"
   ClientHeight    =   8535
   ClientLeft      =   0
   ClientTop       =   1725
   ClientWidth     =   8310
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
   ScaleHeight     =   569
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   554
   Begin ComctlLib.Toolbar TB1 
      Height          =   630
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   1111
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      ImageList       =   "IL1"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   13
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Position"
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Körper einfügen"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Bearbeiten"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Farbe ändern"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Raytrace"
            Object.Tag             =   ""
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "3D-Zoom"
            Object.Tag             =   ""
            ImageIndex      =   6
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Ausgabe"
            Object.Tag             =   ""
            ImageIndex      =   7
         EndProperty
         BeginProperty Button8 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Beenden"
            Object.Tag             =   ""
            ImageIndex      =   8
         EndProperty
         BeginProperty Button9 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Dia-Show"
            Object.Tag             =   ""
            ImageIndex      =   9
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Beenden"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button11 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Bilder anzeigen"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button12 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button13 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox xz 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   0
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   3
      Top             =   720
      Width           =   3750
   End
   Begin VB.PictureBox d3 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   0
      MousePointer    =   1  'Pfeil
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   2
      Top             =   4560
      Width           =   3750
   End
   Begin VB.PictureBox yz 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   3840
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   1
      Top             =   720
      Width           =   3750
   End
   Begin VB.PictureBox xy 
      BackColor       =   &H00000000&
      Height          =   3735
      Left            =   3840
      ScaleHeight     =   206.751
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   206.751
      TabIndex        =   0
      Top             =   4560
      Width           =   3735
   End
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   120
      Top             =   7080
   End
   Begin ComctlLib.ImageList IL1 
      Left            =   0
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   9
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":030A
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":0624
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":093E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":0C58
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":0F72
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":128C
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":15A6
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":18C0
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3D_bau.frx":1BDA
            Key             =   ""
         EndProperty
      EndProperty
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
'**********************************************************************************************
'  Programm:                        3 D - B A U K A S T E N                   Version: 1.1 Beta
'==============================================================================================
'  Programmbeschreibung:                                                      Datum:  10.1.2001
'  Interaktives Programm zum Gestalten von dreidimensionalen Szenen für POV-Raytracer.
'  Darstellung der verwendeten Körper im Grund-, Auf- und Kreuzriss wie im GZ-Unterricht.
'
'**********************************************************************************************

'**********************************************************************************************
'                     S t a n d a r d - E i n s t e l l u n g e n
'**********************************************************************************************
'**********************************************************************************************
'                               V a r i a b l e n
'**********************************************************************************************

Dim aktv As PictureBox           'aktueller View
Dim Bsnap As Boolean             'auf näheste Gitterposition (Ganzzahl)
Dim grid_color As Long           'Farbe des Hintergrundgitters
Dim zoomed_View%                 'auf vier Felder gezoomter View
Dim i%                           'Hilfsvariable

Dim datMode$, fileNum            ' für Dateioperationen
Dim fName$                       ' Dateiname
Dim msg, answer, title, dgDef    ' für MsgBoxen
Dim txt                          ' Textvariable
'Dim Itool, Itool2                ' Toolbar Indizes

'Const pi = 3.1415                  ' Konstante Pi
Const Bmsli% = 1                    'linker Mousebutton
Const Bmsre% = 2                    'rechter Mousebutton
Const Bmsmi% = 4                    'mittlerer Mousebutton
Const DefWidth% = 200               'Einstellung der View-Fenster
Const DefHight% = 200               'Einstellung der View-Fenster
Const Defmx! = 10                   'Standard-Vergrößerungsfaktor x
Const Defmy! = 10                   'Standard-Vergrößerungsfaktor y
Const ixy = 1, iyz = 2, ixz = 3, id3 = 4    'Index der Views als Konst.
Const F2H = 5190, F2W = 705         'Standardabmessungen des Körperforms
Const F4H = 9030, F4W = 3780        'Standardabmessungen des Registerforms
Const F5H = 1530, F5W = 3780         'Standardabmessungen des Werkzeugforms


Private Sub Form_Load()             'Hauptfenster laden
 Debug.Print Screen.Height          'Bildschirmgrösse in Twips
 Debug.Print Screen.Height          'Bildschirmgrösse in Twips

 Form1.Top = 0: Form1.Left = F2W    'Form in linke obere Bildschirmecke
 Form1.Height = Screen.Height       'volle Bildschirmhöhe
 Form1.Width = Screen.Width - (F2W + F4W) 'volle Bildschirmbreite-Tools
 
 Timer1.Interval = 500              'Timer alle 500 ms Statusanzeige
 
 Bsnap = True                       'auf näheste Gitterposition (Ganzzahl)
 objmax = 0                         'anz der POV-Objekte
 zoomed_View = 0                    'kein View gezoomed
 Itool = 1                          '1 1. Tool in der Werkzeugbuttonleiste als Default
 Itool2 = 1                         'ToolBar TB2 bewegliche "Körperauswahl" im  Form F2
 grid_color = vbWhite               'RGB(255, 255, 255)
 
  d3akto = 0
 ReDim D3obj(0)                     '1. Körper im Körperarray = Achsenkreuz
 
 F2.Top = 0: F2.Left = 0            'ToolBar TB2 "Körperauswahl" links oben
 F2.Height = Screen.Height
 F2.Show
 F4.Top = 0:                        'F4= Registerblätter
 F4.Left = Screen.Width - F4W       'Recher Rand
 F4.Height = Screen.Height
 F4.Show
 F5.Top = Form1.Top        'ToolBar TB1 "Werkzeugauswahl"
 F5.Left = Form1.Left + Form1.Width - F5W
 F5.Show
 
 
 For i = 1 To UBound(View)          'Views xy,yz,xz,3d
 akti = i                           'Index des aktuellen Views im Array View
   With View(i)
    .x0 = DefWidth / 2              'x0,y0 = Ursprung Mitte des Pictures
    .y0 = DefHight / 2
   
    .mx = Defmx
    .my = Defmy
    .sx = 1                         'H-koordinate nicht spiegeln
    .sy = -1                        'V-Koordinate spiegeln !!
    .twist = False                  'nicht verdreht
    .grid = True                    'Hintergrundraster
    .cur = 1                        'Standard-Cursor
    
    Select Case i
        Case 1: .name = "Grund": Set .pic = xy: .sy = 1: .twist = True ': .y0 = 0
        Case 2: .name = "Auf": Set .pic = yz
        Case 3: .name = "Kreuz": Set .pic = xz: .sx = -1
        Case 4: .name = "3D": Set .pic = d3: .grid = False
        Case Else: .name = "unkno"
    End Select
    Debug.Print i, .name; .x0, .y0, .mx, .my, .sx, .sy, .twist, .grid 'Testausgabe
    If .grid Then Call grid(QBColor(0))               'Hintergrundraster erzeugen
   End With
 Next i
 
 Call ViewControl
 
 Call POV.Def_Pov                    'Standardwerte für Raytracer
 
 Call Def_3D
 
 'xz.Height = 0                      'Kreuzriss ausblenden
 'xz.Width = 0                       'nur in Version für GZ 3.Klasse
 
End Sub ' ****************** End Form Load ***********************



Private Sub Form_Unload(Cancel As Integer)
  Unload F2                      'ToolBar TB2 bewegliche "Körperauswahl"
  Unload F3                      'Diashow
  End
  Unload Me                         'Form1 Hauptfenster
End Sub


'**********************************************************************************************
'                  D a r s t e l l u n g s - / A b l a u f v e r w a l t u n g
'**********************************************************************************************
Sub ViewControl()               'Automatische Grössenänderung
Dim FH, FW, H, W, i As Integer

H = Int(Form1.Height / 4): W = Int(Form1.Width / 4)

For i = 1 To UBound(View)          'Views xy,yz,xz,3d
 akti = i                           'Index des aktuellen Views im Array View
   With View(i)
   Debug.Print "Viewcontrol"; H, W, .x0, .y0, .mx, .my

    .pic.ScaleWidth = W
    .pic.ScaleHeight = H
    
    .x0 = W / 2       'x0,y0 = Ursprung Mitte des Pictures
    .y0 = H / 2
    .mx = H / 20
    .my = W / 20
  
    Select Case i
        Case 1: .name = "Grund": Set .pic = xy: .sy = 1: .twist = True ': .y0 = 0
        Case 2: .name = "Auf": Set .pic = yz
        Case 3: .name = "Kreuz": Set .pic = xz: .sx = -1
        Case 4: .name = "3D": Set .pic = d3: .grid = False
        Case Else: .name = "unkno"
    End Select
    Debug.Print i, .name; .x0, .y0, .mx, .my, .sx, .sy, .twist, .grid 'Testausgabe
    If .grid Then Call grid(QBColor(0))               'Hintergrundraster erzeugen
   End With
 Next i
 

End Sub
'**********************************************************************************************
'                             T o o l b a r - O p e r a t i o n e n
'**********************************************************************************************


'**********************************************************************************************
'                               M e n ü - O p e r a t i o n e n
'**********************************************************************************************

 
Sub mnuFileExit_Click()             'Datei schließen
  Unload F2                              'ToolBar TB2 bewegliche "Körperauswahl"
  Unload F3
  End
  Unload Me
End Sub


Sub mnuFileNew_Click()                      'Neue Szene erstellen
  If objmax > 0 Then Call F4.Clear_All_Objects         'Objectarray leeren
End Sub


Sub mnuFileSave_Click()
  Call F4.BPOV_Comp_Click                              'Exportdatei erstellen
  Call F4.BPov_Save_Click                              'in Ausgabedatei schreiben
End Sub

'**********************************************************************************************
'                        Z o o m / R e f r e s h - F u n k t i o n e n
'**********************************************************************************************

Private Sub VRefresh()              ' Auffrischen  der Objekt-Darstellung zB nach Zoom
Dim i, j As Integer

i = akto
If objmax > 0 Then                          'Objektarray nicht leer
  For akto = 0 To UBound(obj)               'von Anfang bis Ende
   With obj(akto)
     Select Case .typ
       Case 0:                              'Hintergrundraster
       Case 1: Call drawKugel               'neu zeichnen
       Case 2: Call drawKegel
       Case 3: Call drawZylinder
       Case 4: Call drawWuerfel
     End Select
                                            ' Testausgabe der Datenstruktur
    Debug.Print "objekt"; i; .typ; .bez; .POV; .defcol
      For j = 1 To UBound(.p): Debug.Print "p"; j; "<"; .p(j).x; .p(j).y; .p(j).z; ">": Next j
      For j = 1 To UBound(.r): Debug.Print "r"; j; .r(j): Next j
   End With
  Next akto
End If
akto = i

End Sub

Sub ViewRefresch()                  'Neuzeichnen der Views (Tippfehler im Namen!)
Dim i%

For i = 1 To 3                              'xy,yz,xz
  akti = i
  With View(i)                              'aktuellen View
    Set aktv = .pic
    If .grid Then Call grid                 'Hintergrundraster ausgeben
  End With
Next i
 If objmax > 0 Then Call VRefresh           'Objekte neu zeichnen, falls vorhanden
End Sub

Private Sub Form_paint()                    'wenn Form1 verdeckt war
  Call ViewRefresch
  Call D3_Resize
End Sub



Sub Color_Refresh()
If akto > 0 And akto <= objmax Then F4.Frame11.BackColor = obj(akto).defcol      'Farbanzeige
  Call VRefresh                             'Anzeige in den Views aktualisieren
End Sub

Private Sub ZoomIn_Click()                  ' Vergrößern der Ansichten
Dim i%

For i = 1 To 3                              'xy,yz,xz
  akti = i
  With View(i)
    .mx = .mx * 1.5                         ' Multiplikationsfaktor in x-Richtung
    .my = .my * 1.5                         ' Multiplikationsfaktor in y-Richtung
    Set aktv = .pic
    If .grid Then Call grid                 'Hintergrundraster ausgeben
  End With
Next i
If objmax > 0 Then Call VRefresh            'Objekte neu zeichnen, falls vorhanden
Call d3_ZoomIn
End Sub

Private Sub ZoomOut_Click()                 ' Verkleinern der Anzeige
Dim i%
For i = 1 To 3
  akti = i
  With View(i)
    If .mx >= 2 Then .mx = .mx / 1.5        ' Multiplikationsfaktor in x-Richtung
    If .my >= 2 Then .my = .my / 1.5        ' Multiplikationsfaktor in y-Richtung
    Set aktv = .pic
    If .grid Then Call grid
  End With
Next i
If objmax > 0 Then Call VRefresh            'Objekte neu zeichnen, falls vorhanden
Call d3_ZoomOut
End Sub



Private Sub Timer1_Timer()          'ständige Aktualisierungen
With View(akti)                     '5x pro Sekunde (Timer1.Intervall)
  F5.Tview.Text = .name                'Name des akt. Views anzeigen
  F5.Tzoom.Text = .mx / 10             'Zoomfaktor anzeigen
  .pic.MousePointer = .cur          'akt. Cursorfor des Views
End With
End Sub

'**********************************************************************************************
'                      w e i t e r e   B e d i e n u n g s e l e m e n t e
'**********************************************************************************************


'**********************************************************************************************
'                     2D O b j e k t e    d a r s t e l l e n
'**********************************************************************************************



Sub drawKugel()                             'Zeichnet die 3 Ansichten in die Views
  akti = ixy
  With obj(akto)
    akti = ixy                              'Grundriss:
    dwc .p(1).x, .p(1).y, .r(1)             'Kreis pos ...x, ...y, radius r(1)
    akti = iyz                              'Aufriss:
    dwc .p(1).y, .p(1).z, .r(1)
    akti = ixz                              'Kreuzriss:
    dwc .p(1).x, .p(1).z, .r(1)
  End With
End Sub



Sub drawKegel()                             'Zeichnet die 3 Ansichten in die Views
  
  With obj(akto)
    akti = ixy                              'Grundriss:
    dwc .p(1).x, .p(1).y, .r(1)             'Kreis pos ...x, ...y, radius r(1)
    akti = iyz                              'Aufriss:
    dwl .p(1).y - .r(1), .p(1).z, .p(1).y + .r(1), .p(1).z, .defcol 'Grundlinie
    dwl .p(1).y + .r(1), .p(1).z, .p(1).y, .p(1).z + .r(2), .defcol 're.Mantellinie
    dwl .p(1).y, .p(1).z + .r(2), .p(1).y - .r(1), .p(1).z, .defcol 'li.Mantellinie
    akti = ixz                              'Kreuzriss:
    dwl .p(1).x - .r(1), .p(1).z, .p(1).x + .r(1), .p(1).z, .defcol 'Grundlinie
    dwl .p(1).x + .r(1), .p(1).z, .p(1).x, .p(1).z + .r(2), .defcol 're.Mantellinie
    dwl .p(1).x, .p(1).z + .r(2), .p(1).x - .r(1), .p(1).z, .defcol 'li.Mantellinie
  End With
End Sub



Sub drawZylinder()                     'Zeichnet die 3 Ansichten in die Views
  
  With obj(akto)
    akti = ixy                              'Grundriss:
    dwc .p(1).x, .p(1).y, .r(1)             'Kreis pos ...x, ...y, radius r(1)
    akti = iyz                              'Aufriss:
    dwl .p(1).y - .r(1), .p(1).z, .p(1).y + .r(1), .p(1).z, .defcol  'Grundlinie
    dwl .p(1).y + .r(1), .p(1).z, .p(1).y + .r(1), .p(1).z + .r(2), .defcol 're.Mantell.
    dwl .p(1).y + .r(1), .p(1).z + .r(2), .p(1).y - .r(1), .p(1).z + .r(2), .defcol 'Deck.
    dwl .p(1).y - .r(1), .p(1).z + .r(2), .p(1).y - .r(1), .p(1).z, .defcol
    akti = ixz                              'Kreuzriss:
    dwl .p(1).x - .r(1), .p(1).z, .p(1).x + .r(1), .p(1).z, .defcol  'Grundlinie
    dwl .p(1).x + .r(1), .p(1).z, .p(1).x + .r(1), .p(1).z + .r(2), .defcol 're.Mantell.
    dwl .p(1).x + .r(1), .p(1).z + .r(2), .p(1).x - .r(1), .p(1).z + .r(2), .defcol 'Deck.
    dwl .p(1).x - .r(1), .p(1).z + .r(2), .p(1).x - .r(1), .p(1).z, .defcol
  End With
End Sub



Sub drawWuerfel()                     'Zeichnet die 3 Ansichten in die Views
Dim k!
  Debug.Print "Würfel " & akto
  With obj(akto)
   k = .r(1)
   akti = ixy                             'Grundriss:
    dwp .p(1).x, .p(1).y                    'Ausgangspunkt x,y absolut
    dwl , , k, 0, 0, True                   'relative Bewegung um eine Kantenlänge x
    dwl , , 0, k, 0, True                   'relative Bewegung um eine Kantenlänge y
    dwl , , -k, 0, 0, True                  'relative Bewegung um eine Kantenlänge -x
    dwl , , 0, -k, 0, True                  'relative Bewegung um eine Kantenlänge -y
   akti = iyz                             'Aufriss:
    dwp .p(1).y, .p(1).z                    'Ausgangspunkt x,y absolut
    dwl , , k, 0, 0, True                   'relative Bewegung um eine Kantenlänge x
    dwl , , 0, k, 0, True                   'relative Bewegung um eine Kantenlänge y
    dwl , , -k, 0, 0, True                  'relative Bewegung um eine Kantenlänge -x
    dwl , , 0, -k, 0, True                  'relative Bewegung um eine Kantenlänge -y
   akti = ixz                               'Kreuzriss:
    dwp .p(1).x, .p(1).z                    'Ausgangspunkt x,y absolut
    dwl , , k, 0, 0, True                   'relative Bewegung um eine Kantenlänge x
    dwl , , 0, k, 0, True                   'relative Bewegung um eine Kantenlänge y
    dwl , , -k, 0, 0, True                  'relative Bewegung um eine Kantenlänge -x
    dwl , , 0, -k, 0, True                  'relative Bewegung um eine Kantenlänge -y
  End With
End Sub

'**********************************************************************************************
'                2 D - U m r e c h n u n g s - /  Z e i c h e n f u n k t i o n e n
'**********************************************************************************************

Private Function x2p(ByVal x As Single, ByVal y As Single, Optional rel As Boolean) As R2_Point
Dim H As Single                             'Umrechnung Koordinaten -> ScaleKoordinaten
  
  With View(akti)                           'Aktueller View
  If .twist Then                            'Koordinatenachsen vertauscht!
    H = x: x = y: y = H                     '"Dreieckstausch"
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

'*  dwp: DrawPoint zeichnet einen Punkt im aktuellen View ev. Farbe ev. relativ *

Private Sub dwp(ByVal x!, ByVal y!, Optional Farbe As Long, Optional rel As Boolean)

  If Farbe = 0 Then Farbe = obj(akto).defcol
  aktp = x2p(x, y, rel)                     'xy Koordinaten -->ScaleEinheiten

  View(akti).pic.PSet (aktp.x, aktp.y), Farbe
End Sub

'*  dwc: DrawCircle zeichnet einen Kreis im aktuellen View ev. Farbe ev. relativ *

Private Sub dwc(ByVal x!, ByVal y!, ByVal r!, Optional Farbe As Long, Optional rel As Boolean)
  
  If Farbe = 0 Then Farbe = obj(akto).defcol
  aktp = x2p(x, y, rel)                     'xy Koordinaten -->ScaleEinheiten
   
  View(akti).pic.Circle (aktp.x, aktp.y), r * View(akti).mx, Farbe
End Sub

'*  dwl: DrawLine zeichnet eine Linie im aktuellen View ev. Farbe ev. relativ *

Private Sub dwl(Optional ByVal x1!, Optional ByVal y1!, Optional ByVal x2!, Optional ByVal y2!, Optional Farbe As Long, Optional rel As Boolean)
Dim aktp2 As R2_Point
If Farbe = 0 Then Farbe = obj(akto).defcol

  If rel = False Then
    aktp = x2p(x1, y1)                        'Anfangspunkt (Koord. -> Scaleeinheiten)
    aktp2 = x2p(x2, y2)                       'Endpunkt
  
    View(akti).pic.Line (aktp.x, aktp.y)-(aktp2.x, aktp2.y), Farbe
  Else
    aktp2 = x2p(x2, y2, rel = True)           'relative Bewegung!!
    With View(akti)                           'von letzter Position
      .pic.Line -(aktp2.x, aktp2.y), Farbe    'zum Endpunkt
    End With
  End If
End Sub


Private Sub grid(Optional ByVal Farbe As Long)  'Zeichnet Hintergrundraster
 Dim i, j, m  As Integer                        'im aktuellen View
 
 With View(akti)
    m = .pic.ScaleWidth / .mx                   '1/20 ScaleWidth
    'm = m / 2
    
 If Farbe = 0 Then Farbe = grid_color
 .pic.AutoRedraw = True                         'Hintergrundgitter permanent!
 .pic.Cls                                       'View löschen
   
   For i = -m To m
    For j = -m To m
      .pic.PSet (i * .mx + .x0, j * .my + .y0), Farbe
    Next j
  Next i
  'Debug.Print "Raster"
  dwl -2, 0, 10, 0, Farbe                    'Achsenkreuz = Koordinatenursprung
  dwl 9, -0.1, 10, 0, Farbe
  dwl 9, 0.1, 10, 0, Farbe
  
  dwl 0, -2, 0, 10, Farbe                     '2.Pfeil
  dwl -0.1, 9, 0, 10, Farbe
  dwl 0.1, 9, 0, 10, Farbe


  If akti = ixz Then
    dwl 1, 9, 2, 9, Farbe                     ' "z"
    dwl 1, 10, 2, 10, Farbe
    dwl 2, 9, 1, 10, Farbe
    dwl 9, 1, 10, 2, Farbe                     ' "x"
    dwl 9, 2, 10, 1, Farbe
    
    For j = -m To m
      .pic.PSet (j * .mx + .mx / 2 + .x0, .y0), Farbe
    Next j
  End If
  If akti = iyz Then
    dwl 1, 9, 2, 9, Farbe                     ' "z"
    dwl 1, 10, 2, 10, Farbe
    dwl 2, 10, 1, 9, Farbe
    dwl 9, 1, 10, 2, Farbe                    ' "y"
    dwl 9, 2, 9.5, 1.5, Farbe
    
    For j = -m To m
      .pic.PSet (j * .mx + .mx / 2 + .x0, .y0), Farbe
    Next j
  End If
   If akti = ixy Then
    dwl 9, 1, 10, 2, Farbe                     ' "x"
    dwl 9, 2, 10, 1, Farbe
    dwl 1, 9, 1.5, 9.5, Farbe                   ' "y"
    dwl 2, 9, 1, 10, Farbe
       
  End If
  
  .pic.AutoRedraw = False
  End With
End Sub

'**********************************************************************************************
'                              M o u s e - E i n g a b e n
'**********************************************************************************************

Private Function snap(x As Single) As Single        'Snap to Grid
 Dim xn%
 If Bsnap Then                              'auf nächstliegende ganzz. Koordinate runden
   xn = Fix(x)
   If Abs(x - xn) >= 0.5 Then snap = Sgn(x) * (Abs(xn) + 1) Else:  snap = xn
   Else: snap = x
 End If 'Bsnap
End Function

Private Function p2x(x As Single) As Single         'Picture to x-Koordinaten umrechnen
Dim H As Single                                     'Hilfsvariable für Dreieckstausch

  With View(akti)
    p2x = snap(.sx * (x - .x0) / .mx)               'x = PicKoordinaten, x0 = Nullkoord
  End With                                          'sx = Spiegelungsfaktor, mx ..Zoomf.
End Function

Private Function p2y(y As Single) As Single         'Picture to x-Koordinaten umrechnen

  With View(akti)                                   'aktueller View
    p2y = snap(.sy * (y - .y0) / .my)               'x = PicKoordinaten, x0 = Nullkoord
  End With                                          'sx = Spiegelungsfaktor, my ..Zoomf.
End Function

Private Sub xy_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixy)
    akti = ixy                                      'aktuellen View bekanntgeben
    F5.Tx.Text = p2x(y)                                'Koordinatenumrechnung u. Anzeige
    F5.Ty.Text = p2y(x)                                'twist =TRUE x und y vertauscht!!!!
    F5.Tz.Text = ""                                    'aktuelle z-position nicht anzeigen
  End With
End Sub

Private Sub xy_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixy)
    akti = ixy                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        F4.T1(1).Text = p2x(y)                            'Koordinaten waehrend Tastendruck
        F4.T1(2).Text = p2y(x)                            'twist = TRUE x und y vertauscht!!!!
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

Private Sub yz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    F5.Ty.Text = p2x(x)                                'aktuelle Koordinatenposition der Mouse
    F5.Tz.Text = p2y(y)
    F5.Tx.Text = ""                                    'x-Koordinate nicht anzeigen
  End With
End Sub

Private Sub yz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        F4.T1(2).Text = p2x(x)                            'Koordinaten waehrend Tastendruck
        F4.T1(3).Text = p2y(y)
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

Private Sub xz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    F5.Tx.Text = p2x(x)                                'Koordinatenanzeige
    F5.Tz.Text = p2y(y)
    F5.Ty.Text = ""                                    'y-Koordinate nicht anzeigen
  End With
End Sub

Private Sub xz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        F4.T1(1).Text = p2x(x)                            'Koordinaten waehrend Tastendruck
        F4.T1(3).Text = p2y(y)
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

Private Sub Def_3D()                            'Standardeinstellungen 3d-View
  Debug.Print "Def_3D"
  akti = id3
  Call Scala
  Call D3_Resize
End Sub


Private Sub d3_ZoomOut()
Dim i%
  d3.Cls: scal = 1 / 1.5                        'Faktor 1/1,5 verkleinern
    For i = 0 To objmax
      scalierung CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), scal
      D3_Resize
    Next i
End Sub

Private Sub d3_ZoomIn()
Dim i%
  d3.Cls: scal = 1.5                             'Faktor 1/1,5 vergrößern
  For i = 0 To objmax
    scalierung CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), scal
    D3_Resize
  Next i
End Sub

Sub D3_Resize()
    d3.ScaleTop = -d3.ScaleHeight \ 2           'Mitte des Pictures
    d3.ScaleLeft = -d3.ScaleWidth \ 2           '= Koordinatenursprung
    d3.Cls                                      'Picture "d3" löschen
    For i = 0 To objmax
     d3.ForeColor = obj(i).defcol               'Farbe des Objekts
     show_3D d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(d3.ScaleWidth \ 2), CInt(d3.ScaleHeight \ 2)
    Next i
End Sub
Private Sub D3_Paint()
  Call D3_Resize
End Sub

Sub Zoomed_d3()                         'D3 View auf vier Felder vergrößern bzw verkleinern
  If zoomed_View = 0 Then
      F2.Hide                                'Werkzeugleiste verstecken
      d3.Top = 38: d3.Left = 44                 'fertig machen zum Zoomen !
      d3.Height = 500: d3.Width = 500           'vergrössern
      zoomed_View = 4
  ElseIf zoomed_View = 4 Then                   'verkleinern
      F2.Show
      d3.Top = 288: d3.Left = 44
      d3.Height = 250: d3.Width = 250
      zoomed_View = 0
  End If
   For i = 0 To objmax
    show_3D d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(d3.ScaleWidth \ 2), CInt(d3.ScaleHeight \ 2)
   Next i
End Sub

'******************************************** EOF *********************************************


