VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form F4 
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "Eingaben"
   ClientHeight    =   8670
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   3660
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   3660
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin TabDlg.SSTab SSTab1 
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3675
      _ExtentX        =   6482
      _ExtentY        =   15266
      _Version        =   393216
      Tabs            =   6
      TabHeight       =   529
      BackColor       =   12632256
      TabCaption(0)   =   "Körper"
      TabPicture(0)   =   "F4.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame2"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      TabCaption(1)   =   "Oberfläche"
      TabPicture(1)   =   "F4.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Ausgabe"
      TabPicture(2)   =   "F4.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).Control(1)=   "Frame9"
      Tab(2).Control(2)=   "T_incl"
      Tab(2).Control(3)=   "TfName"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Bilder"
      TabPicture(3)   =   "F4.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "File1"
      Tab(3).Control(1)=   "BBildAnz"
      Tab(3).Control(2)=   "BBildBeenden"
      Tab(3).Control(3)=   "TDatei"
      Tab(3).Control(4)=   "CmDialog1"
      Tab(3).ControlCount=   5
      TabCaption(4)   =   "Tab 4"
      TabPicture(4)   =   "F4.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).ControlCount=   0
      TabCaption(5)   =   "Einstellung"
      TabPicture(5)   =   "F4.frx":008C
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "BScreen"
      Tab(5).Control(1)=   "BDatei_Def"
      Tab(5).Control(2)=   "BDatei_Change"
      Tab(5).Control(3)=   "Tpasswd"
      Tab(5).Control(4)=   "Frame10"
      Tab(5).Control(5)=   "Lpasswd"
      Tab(5).ControlCount=   6
      Begin VB.Frame Frame2 
         Caption         =   "Veränderung (Transformation):"
         Height          =   2295
         Left            =   120
         TabIndex        =   47
         Top             =   5400
         Width           =   3255
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   8
            Left            =   2160
            TabIndex        =   54
            Text            =   "1"
            Top             =   1320
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   7
            Left            =   1200
            TabIndex        =   53
            Text            =   "1"
            Top             =   1320
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   0
            Left            =   240
            TabIndex        =   52
            Text            =   "1"
            Top             =   1320
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   6
            Left            =   2160
            TabIndex        =   51
            Text            =   "1"
            Top             =   600
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   5
            Left            =   1200
            TabIndex        =   50
            Text            =   "1"
            Top             =   600
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   4
            Left            =   240
            TabIndex        =   49
            Text            =   "1"
            Top             =   600
            Width           =   675
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(5)"
            Height          =   255
            Index           =   8
            Left            =   240
            TabIndex        =   58
            Top             =   1800
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "Drehung um Achse (x,y,z)"
            Height          =   255
            Index           =   7
            Left            =   240
            TabIndex        =   57
            Top             =   960
            Width           =   2595
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "Vergrößerung (x,y,z)"
            Height          =   255
            Index           =   6
            Left            =   240
            TabIndex        =   56
            Top             =   240
            Width           =   2595
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00808000&
         Caption         =   "GEOMETRIEDATEN:"
         Height          =   1875
         Left            =   120
         TabIndex        =   35
         Top             =   3420
         Width           =   3255
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   1
            Left            =   180
            TabIndex        =   41
            Text            =   "1"
            Top             =   840
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   2
            Left            =   1200
            TabIndex        =   40
            Text            =   "1"
            Top             =   840
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Index           =   3
            Left            =   2160
            TabIndex        =   39
            Text            =   "1"
            Top             =   840
            Width           =   675
         End
         Begin VB.TextBox T4 
            Height          =   285
            Left            =   180
            TabIndex        =   38
            Text            =   "1"
            Top             =   1440
            Width           =   675
         End
         Begin VB.TextBox T5 
            Height          =   285
            Left            =   1200
            TabIndex        =   37
            Text            =   "3"
            Top             =   1440
            Width           =   735
         End
         Begin VB.TextBox cb1 
            Height          =   315
            Left            =   180
            TabIndex        =   36
            Top             =   240
            Width           =   2835
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(5)"
            Height          =   255
            Index           =   5
            Left            =   2160
            TabIndex        =   55
            Top             =   1200
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(1)"
            Height          =   255
            Index           =   1
            Left            =   1200
            TabIndex        =   48
            Top             =   600
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(0)"
            Height          =   255
            Index           =   0
            Left            =   180
            TabIndex        =   45
            Top             =   600
            Width           =   2595
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(2)"
            Height          =   255
            Index           =   2
            Left            =   2160
            TabIndex        =   44
            Top             =   600
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(3)"
            Height          =   255
            Index           =   3
            Left            =   180
            TabIndex        =   43
            Top             =   1200
            Width           =   915
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(4)"
            Height          =   255
            Index           =   4
            Left            =   1200
            TabIndex        =   42
            Top             =   1200
            Width           =   795
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Frame3"
         Height          =   2775
         Left            =   -74820
         TabIndex        =   34
         Top             =   1380
         Width           =   2595
      End
      Begin VB.Frame Frame4 
         Caption         =   "Frame4"
         Height          =   2175
         Left            =   -74880
         TabIndex        =   33
         Top             =   4440
         Width           =   3075
      End
      Begin VB.Frame Frame5 
         BackColor       =   &H00E0E0E0&
         Height          =   5895
         Left            =   -74880
         TabIndex        =   31
         Top             =   720
         Width           =   3255
         Begin VB.TextBox Text1 
            Height          =   5535
            Left            =   120
            MultiLine       =   -1  'True
            ScrollBars      =   3  'Beides
            TabIndex        =   32
            Top             =   240
            Width           =   3075
         End
      End
      Begin VB.Frame Frame7 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Left            =   180
         TabIndex        =   28
         Top             =   7680
         Width           =   3195
         Begin VB.CommandButton BtnEinf 
            Caption         =   "Einfügen"
            Height          =   555
            Left            =   180
            TabIndex        =   30
            Top             =   180
            Width           =   1335
         End
         Begin VB.CommandButton BtnClear 
            Caption         =   "Löschen"
            Height          =   555
            Left            =   1680
            TabIndex        =   29
            Top             =   180
            Width           =   1335
         End
      End
      Begin VB.Frame Frame8 
         BackColor       =   &H00E0E0E0&
         Caption         =   "OBJEKTE:"
         Height          =   2655
         Left            =   120
         TabIndex        =   23
         Top             =   720
         Width           =   3255
         Begin VB.ListBox CB2 
            Height          =   1620
            Left            =   60
            TabIndex        =   27
            Top             =   240
            Width           =   3075
         End
         Begin VB.Frame Frame11 
            BackColor       =   &H00E0E0E0&
            Height          =   795
            Left            =   60
            TabIndex        =   24
            Top             =   1800
            Width           =   3075
            Begin VB.CommandButton BColor 
               Caption         =   "Farbe"
               Height          =   375
               Left            =   1620
               TabIndex        =   26
               Top             =   240
               Width           =   1335
            End
            Begin VB.CommandButton Test 
               Caption         =   "Test"
               Height          =   375
               Left            =   240
               TabIndex        =   25
               Top             =   240
               Width           =   1095
            End
            Begin VB.Image Image1 
               Height          =   555
               Left            =   120
               Top             =   180
               Width           =   1395
            End
         End
      End
      Begin VB.Frame Frame9 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Left            =   -74880
         TabIndex        =   20
         Top             =   7080
         Width           =   3255
         Begin VB.CommandButton BPOV_Comp 
            Caption         =   "Übersetzen"
            Height          =   555
            Left            =   180
            TabIndex        =   22
            Top             =   180
            Width           =   1335
         End
         Begin VB.CommandButton BPov_Save 
            Caption         =   "Ausgeben"
            Height          =   555
            Left            =   1740
            TabIndex        =   21
            Top             =   180
            Width           =   1335
         End
      End
      Begin VB.TextBox T_incl 
         Height          =   285
         Left            =   -72420
         MultiLine       =   -1  'True
         TabIndex        =   19
         Text            =   "F4.frx":00A8
         Top             =   600
         Visible         =   0   'False
         Width           =   180
      End
      Begin VB.TextBox TfName 
         Height          =   285
         Left            =   -74880
         TabIndex        =   18
         Top             =   6720
         Width           =   3255
      End
      Begin VB.Frame Frame10 
         Caption         =   "Dateiverwaltung:"
         Height          =   3135
         Left            =   -74880
         TabIndex        =   9
         Top             =   1260
         Width           =   3255
         Begin VB.TextBox TBau_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   13
            Top             =   480
            Width           =   3015
         End
         Begin VB.TextBox Tpov_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   12
            Top             =   1080
            Width           =   3015
         End
         Begin VB.TextBox TBsp_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   11
            Top             =   1800
            Width           =   3015
         End
         Begin VB.TextBox TBsp_Def 
            Height          =   285
            Left            =   120
            TabIndex        =   10
            Top             =   2520
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis 3D-Baukasten:"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   17
            Top             =   240
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV:"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   16
            Top             =   840
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV-Bsp:"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   15
            Top             =   1500
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "StandardName POV-Ausgabe:"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   14
            Top             =   2220
            Width           =   3015
         End
      End
      Begin VB.TextBox Tpasswd 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   -74820
         PasswordChar    =   "#"
         TabIndex        =   8
         Top             =   840
         Width           =   1635
      End
      Begin VB.CommandButton BDatei_Change 
         Caption         =   "Übernehmen"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -74700
         TabIndex        =   7
         Top             =   7380
         Width           =   1335
      End
      Begin VB.CommandButton BDatei_Def 
         Caption         =   "Standard"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -73080
         TabIndex        =   6
         Top             =   7380
         Width           =   1335
      End
      Begin VB.CommandButton BScreen 
         Caption         =   "Bildschirmeinstellungen"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -74700
         TabIndex        =   5
         Top             =   6660
         Width           =   2955
      End
      Begin VB.FileListBox File1 
         Height          =   5355
         Left            =   -74880
         TabIndex        =   4
         Top             =   840
         Width           =   3255
      End
      Begin VB.CommandButton BBildAnz 
         Caption         =   "Anzeigen"
         Height          =   615
         Left            =   -74760
         TabIndex        =   3
         Top             =   7200
         Width           =   1455
      End
      Begin VB.CommandButton BBildBeenden 
         Caption         =   "Beenden"
         Height          =   615
         Left            =   -73080
         TabIndex        =   2
         Top             =   7200
         Width           =   1335
      End
      Begin VB.TextBox TDatei 
         Height          =   285
         Left            =   -74880
         TabIndex        =   1
         Top             =   6480
         Width           =   3255
      End
      Begin MSComDlg.CommonDialog CmDialog1 
         Left            =   -74880
         Top             =   6840
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label Lpasswd 
         Caption         =   "Passwort"
         Height          =   195
         Left            =   -72960
         TabIndex        =   46
         Top             =   900
         Width           =   915
      End
   End
End
Attribute VB_Name = "F4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Load()                 'Form F4-Registerfenster laden

  F4.SSTab1.Tab = 0                     '1. Registerblatt Körper nach vorne
  F4.BPov_Save.Enabled = False          'Leere POV.Datei nicht speichern
  Call OGrid                            'Hintergrundraster = Objekt obj(0)

  Call Def_Objekte                      'Standardobjekte Auswahl
  Call Def_Datei
  Call Def_Bilder
End Sub

'**********************************************************************************************
'                               D a t e i o p e r a t i o n e n
'**********************************************************************************************
Private Sub Def_Datei()                         'Standardeinstellungen für Dateidialoge

TBau_Home.Text = "C:\3DBAU\"                    'Homedir von 3D-Baukasten
Tpov_Home.Text = "C:\3DBAU\POV\"                'Homedir von POV-Raytracer
TBsp_Home.Text = "a:"                           'Homedir der Pov-Beispieldateien
TBsp_Def.Text = "ausgabe.pov"                   'StandardausgabeName der Pov-Exportdatei
TfName.Text = TBsp_Home & TBsp_Def              'StandardDateiname für Karteikarte Ausgabe
Call Lock_Datei_Def
End Sub


Private Sub Tpasswd_Change()
  If Tpasswd.Text = "2001" Then
    TBau_Home.Enabled = True                    'Homedir von 3D-Baukasten
    Tpov_Home.Enabled = True                    'Homedir von POV-Raytracer
    TBsp_Home.Enabled = True                    'Homedir der Pov-Beispieldateien
    TBsp_Def.Enabled = True                     'StandardausgabeName der Pov-Exportdatei
    BDatei_Change.Enabled = True                'Commandbutton für Änderungen freigeben
    BDatei_Def.Enabled = True                   'Commandbutton für Standardeinstell. freigeben
    BScreen.Enabled = True                      'Bildschirmeinstellungen ermöglichen
  End If
End Sub
Private Sub Lock_Datei_Def()                    'Änderungsmöglichkeiten sperren!
    Tpasswd.Text = ""                           'Passwortanzeige löschen
    TBau_Home.Enabled = False                   'Homedir von 3D-Baukasten
    Tpov_Home.Enabled = False                   'Homedir von POV-Raytracer
    TBsp_Home.Enabled = False                   'Homedir der Pov-Beispieldateien
    TBsp_Def.Enabled = False                    'StandardausgabeName der Pov-Exportdatei
    BDatei_Change.Enabled = False               'Commandbutton für Änderungen sperren
    BDatei_Def.Enabled = False                  'Commandbutton für Standardeinstell. sperren
    BScreen.Enabled = False                     'Bildschirmeinstellungen ermöglichen
End Sub

Private Sub BDatei_Change_Click()
  Call Lock_Datei_Def                           'Zugriff sperren
End Sub

Private Sub BDatei_Def_Click()
  Call Def_Datei                                'Standardeinstellungen
End Sub

Sub BPOV_Comp_Click()
  Call POV.Def_Pov                              'Standardeinstellungen übernehmen
  Call POV.PovGen                               'eingefügte Körper übersetzen
  BPov_Save.Enabled = True                   'jetzt erst speichern ermöglichen
End Sub

Sub BPov_Save_Click()

On Error GoTo Fehler                            'Fehler bei Dateioperation

fName = TfName.Text                             'Standardname für Pov-Datei
  Open fName For Output As #1                   'Ausgabekanal öffnen
    Print #1, Text1.Text                        'Ausgabefenster übertragen
  Close #1                                      'Ausgabekanal schliessen
  'MsgBox "Ausgabe auf Datei " & fName, 64, "Export"
  BPov_Save.Enabled = False                      'Taste sperren
  Exit Sub
  
Fehler:
        MsgBox "Fehler beim Schreiben auf Datei " & fName, 16, "Problem"
        Exit Sub
        Resume Next
End Sub                                         'End Pov_Save_Click
Sub RayTrace()

  Call BPOV_Comp_Click                          'Exportdatei erstellen
  Call BPov_Save_Click                          'in Ausgabedatei schreiben
                                                'Abfrage
  If MsgBox("3D-Ansicht anzeigen? ", vbOKCancel + 64, "Ausgabe") = vbOK Then
     'Debug.Print "RayTrace ", Tpov_Home & "start.bat"
     'Shell Tpov_Home & "start.bat", vbNormalFocus
'     Shell "Tpov_Home & pvengine.exe TBsp_Home.Text & TBsp_Def.Text", vbNormalFocus
     Shell "c:\pov31\bin\pvengine.exe +W800 +H600 +A +P +X +D -V -Ia:ausgabe.pov -oc:\3dbau\ausgabe.bmp -Lc:\pov31\include\ ", vbNormalFocus

  End If                                        'Batchdatei im PovHome_Directory
End Sub


Private Sub BScreen_Click()                     'temporäre Bildschirmeinstellungen
                                                'vornehmen
  Call Lock_Datei_Def                           'Sperren der Einstellungskarte
    Shell "screen.exe", vbNormalFocus
End Sub


Sub BBildAnz_Click()                            'Anzeigen-Button

 TDatei.Text = File1.Path & "\" & File1.filename
 F2.Hide                                     'Werkzeugleiste verstecken
  If File1.filename <> "" Then
    F3.Picture = LoadPicture(TDatei)         'Bild laden
  Else
    File1.ListIndex = 0
    File1_Click
    F3.Picture = LoadPicture(TDatei)         'erstes Bild in der Liste
  End If
  F3.Show                                    'Bild anzeigen
End Sub


Private Sub BBildBeenden_Click()
  SSTab1.Tab = 0
  F2.Show
End Sub

Sub Def_Bilder()                       'Bild auswählen

  On Error Resume Next
  File1.ListIndex = 0
  File1.Pattern = "*.JPG"                      'zulässige Dateitypen
  File1.Path = Tpov_Home.Text & "Bilder"       'Verzeichnis der Bilder
  TDatei.Text = File1.Path & "\" & File1.filename
End Sub

Private Sub File1_Click()                       'Listenauswahl gedrückt
    TDatei.Text = File1.Path & "\" & File1.filename
End Sub



Private Sub Def_Objekte()
 cb1.Text = "Kugel"                 'Default Körper"Kugel"
 Call CB1_Click
End Sub

Private Sub G_Label_clear()         'Karteikartentexte löschen
Dim i%
  For i = 1 To L1.UBound
    L1(i).Caption = ""
  Next i
End Sub
Public Sub CB1_Click()  '***** Auswahl des Objektes in der CombiBox CB1 *****
                        ' oder nach entsprechender Auswahl in ToolButton TB2 (Form2)
  Call G_Label_clear            'Eingabemaske löschen

  Select Case cb1.Text          '1. Eingabemaske für entsprechenden Körper setzen

   Case "Kugel":
        L1(0).Caption = "Kugelmittelpunkt (x,y,z)"
        L1(3).Caption = "Radius"
        T5.Visible = False
        T1(1).Text = 2
        T1(2).Text = 2
        T1(3).Text = 2
        T4.Text = 2
   Case "Kegel":
        L1(0).Caption = "Mittelpunkt der Grundfläche "
        L1(3).Caption = "Radius"
        L1(4).Caption = "Höhe"
        T5.Visible = True
        T1(3).Text = 0
        T5.Text = 5
   Case "Zylinder":
        L1(0).Caption = "Mittelpunkt der Grundfläche "
        L1(3).Caption = "Radius"
        L1(4).Caption = "Höhe"
        T5.Visible = True
        T1(3).Text = 0
        T5.Text = 5
   Case "Würfel":
        L1(0).Caption = "Eckpunkt der Grundfläche"
        L1(1).Caption = "(Ecke hinten links unten)"
        L1(3).Caption = "Kantenlänge"
        T5.Visible = False
        T1(3).Text = 0
        T4.Text = 2
   'Case "Quader":
   
   'Case Else: Beep: MsgBox "ungültige Auswahl"
  End Select
End Sub

'**********************************************************************************************
'                    O b j e k t e   e i n f ü g e n / l ö s c h e n
'**********************************************************************************************
Sub BtnEinf_Click()                 'Einfügen Taste gedrückt
Dim ok As Boolean
 
 ok = True                                  'Neues Objekt am Ende der Liste einfügen
 objmax = objmax + 1                        'Objektarray dynamisch erweitern
 akto = objmax
 ReDim Preserve obj(objmax)                 'Dyn Array-Feld anlegen, WICHTIG: mit Preserve !!
                                            'sonst werden vorhandene Elemente gelöscht!
 Select Case cb1.Text
   Case "Kugel": Call Kugel
   Case "Kegel": Call Kegel
   Case "Zylinder": Call Zylinder
   Case "Würfel": Call Wuerfel
   
   Case Else: MsgBox ("Bitte einen Körpern auswählen!"): ok = False
 End Select
                                            'falls ein Fehler beim Einfügen...
 If ok = False Then objmax = objmax - 1: akto = objmax: ReDim Preserve obj(objmax)
 
 If ok = True Then CB2.AddItem (akto & " " & cb1.Text)      'in Combobox einfügen
 CB2.Text = CB2.List(objmax - 1)            'zuletzt eingefügtes Objekt anzeigen
 Call D3_Refresh(objmax)
 Call Form1.D3_Resize
End Sub

Private Sub CB2_Click()                     'Objektbrowser-Combobox
  akto = CB2.ListIndex + 1                  'aktuelles Objekt auswählen
  Call Form1.Color_Refresh                        'dessen Farbe
  Call Geo_Refresh                          'dessen Geometriedaten
End Sub

Sub BColor_Click()                  'Farbänderung
  CmDialog1.Flags = cdlCCPreventFullOpen + cdlCCRGBInit    'initialisierung des Dialoges
  CmDialog1.ShowColor                               'Standarddialog für Farbauswahl
  If akto > 0 And akto <= objmax Then obj(akto).defcol = CmDialog1.Color 'Frame11 = Anzeigefeld
  Call Form1.Color_Refresh
  Call Form1.D3_Resize
End Sub


Private Sub Geo_Refresh()                   'Geometriedaten des aktuellen Objektes anzeigen
If akto > 0 Then
  With obj(akto)
    cb1.Text = Trim$(obj(akto).bez)
    Call CB1_Click                          'Textmaske ausgeben
  
    Select Case cb1.Text                    'gespeicherte Geometriedaten anzeigen
      Case "Kugel":
        T1(1).Text = .p(1).x: T1(2).Text = .p(1).y: T1(3).Text = .p(1).z
        T4.Text = .r(1)
      Case "Kegel":
        T1(1).Text = .p(1).x: T1(2).Text = .p(1).y: T1(3).Text = .p(1).z
        T4.Text = .r(1)
        T5.Text = .r(2)
      Case "Zylinder":
        T1(1).Text = .p(1).x: T1(2).Text = .p(1).y: T1(3).Text = .p(1).z
        T4.Text = .r(1)
        T5.Text = .r(2)
      Case "Würfel":
        T1(1).Text = .p(1).x: T1(2).Text = .p(1).y: T1(3).Text = .p(1).z
        T4.Text = .r(1)

    End Select
  End With
End If
End Sub

Private Sub CB2_Refresh()                   'Combobox neu füllen
Dim i As Integer
  CB2.Clear                                 'löschen
  For i = 1 To objmax
    CB2.AddItem (i & " " & obj(i).bez)      'neu füllen
  Next
  CB2.Text = CB2.List(objmax - 1)           'neuestes Objekt
End Sub

Private Sub BtnClear_Click()                'aktuelles Objekt entfernen "Löschen"
Dim i As Integer                            'Schleifenzähler

If objmax > 0 And akto > 0 Then             'leere Liste löschen ?
    If akto < objmax Then                   'nicht das letzte Objekt
      For i = akto To objmax - 1            'alle nachfolgenden Objekte im Array verschieben
        obj(i) = obj(i + 1)
      Next i
    End If
    
    objmax = objmax - 1                     'Objektarray dynamisch verkleinern
    akto = objmax
    ReDim Preserve obj(objmax)              'Dyn Array-Feld anlegen, WICHTIG: mit Preserve !!
                                            'sonst werden vorhandene Elemente gelöscht!
    Call CB2_Refresh                        'Combobox löschen
    Call Form1.ViewRefresch                       'Anzeige aktualisieren
  End If
  If objmax = 0 Then cb1.Text = "Kugel"     'Default-Körper
  Form1.D3_Resize
End Sub

Sub Clear_All_Objects()             'Objektarray leeren

  If MsgBox("Wollen Sie wirklich alle Objekte entfernen?", 32 + 4, "FRAGE") = 6 Then
    
    objmax = 0                              'Objektarray dynamisch verkleinern
    akto = objmax
    ReDim Preserve obj(objmax)              'Dyn Array-Feld anlegen, WICHTIG: mit Preserve !!
                                            'sonst werden vorhandene Elemente gelöscht!
    Call Form1.ViewRefresch                       'Anzeige aktualisieren
    Call Form1.D3_Resize
  End If
End Sub
'**********************************************************************************************
'                      O b j e k t e   e i n f ü g e n
'**********************************************************************************************





Sub OGrid() 'Neuerung erst seit Version 1.1 !! Raster = obj(0)
                    'Einfügen eines Grid-objektes vorbereiten
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen
ReDim Preserve obj(0)                       'Grid bzw Achsenkreuze = Objekt 0
With obj(0)
 ReDim .p(1)                                '(Ursprung)Punkt
 ReDim .r(1)                                'Abstand
 .typ = 0                                   'Objekt-Struktur füllen
 .bez = "Raster"
 .POV = "plane"                             'POV-Schluesselwort für Ebene
 '.p(1).x = Val(T1(1).Text): .p(1).y = Val(T1(2).Text): .p(1).z = Val(T1(3).Text)
 '.r(1) = Abs(T4.Text)                       'Rasterabstand
 .defcol = vbWhite                          'Standardfarbe weiß
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With

End Sub


Sub Kugel() 'Einfügen eines Kugel-objektes vorbereiten (POV-Object sphere)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen

With obj(akto)
 ReDim .p(1)                                '(Mittel)Punkt + Radius definieren die Kugel
 ReDim .r(1)
 .typ = 1                                   'Objekt-Struktur füllen
 .bez = "Kugel"
 .POV = "sphere"                            'POV-Schluesselwort
 .p(1).x = Val(T1(1).Text): .p(1).y = Val(T1(2).Text): .p(1).z = Val(T1(3).Text)
 .r(1) = Abs(T4.Text)                       'Radius
 .defcol = vbRed                            'Standardfarbe rot
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call Form1.drawKugel
End Sub

Sub Kegel() 'Einfügen eines Kegel-objektes vorbereiten (POV-Object sphere)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall Kegelspitze in gleicher
                    'x,y -Koordinate wie der Grundflächenmittelpunkt!!
With obj(akto)
 ReDim .p(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 2                                   'Objekt-Struktur füllen
 .bez = "Kegel"
 .POV = "cone"                              'POV-Schluesselwort
 .p(1).x = Val(T1(1).Text): .p(1).y = Val(T1(2).Text): .p(1).z = Val(T1(3).Text)
 .p(2).x = Val(T1(1).Text): .p(2).y = Val(T1(2).Text): .p(2).z = Val(T1(3).Text) + T5.Text
 .r(1) = Abs(T4.Text)                       'Radius
 .r(2) = T5.Text                            'Höhe
 .defcol = vbYellow                         'Standardfarbe gelb
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call Form1.drawKegel
End Sub
Sub Zylinder() 'Einfügen eines Zylinder-objektes vorbereiten (POV-Object cylinder)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall Zylinderspitze in gleicher
                    'x,y -Koordinate wie der Grundflächenmittelpunkt!!
With obj(akto)
 ReDim .p(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 3                                   'Objekt-Struktur füllen
 .bez = "Zylinder"
 .POV = "cylinder"                          'POV-Schluesselwort
 .p(1).x = Val(T1(1).Text): .p(1).y = Val(T1(2).Text): .p(1).z = Val(T1(3).Text)
 .p(2).x = Val(T1(1).Text): .p(2).y = Val(T1(2).Text): .p(2).z = Val(T1(3).Text) + T5.Text
 .r(1) = Abs(T4.Text)                       'Radius
 .r(2) = T5.Text                            'Höhe
 .defcol = vbGreen                          'Standardfarbe grün
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call Form1.drawZylinder
End Sub

Sub Wuerfel() 'Einfügen eines Würfel-Objektes vorbereiten (POV-Object box)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall parall. Koordinatensystem)
With obj(akto)
 ReDim .p(2)                                'Grundflächen Punkt hinten links unten
 ReDim .r(1)                                'Kantenlänge
 .typ = 4                                   'Objekt-Struktur füllen
 .bez = "Würfel"
 .POV = "box"                               'POV-Schluesselwort
 .r(1) = Abs(T4.Text)                       'Kantenlänge
 .p(1).x = Val(T1(1).Text): .p(1).y = Val(T1(2).Text): .p(1).z = Val(T1(3).Text)
 .p(2).x = .p(1).x + .r(1): .p(2).y = .p(1).y + .r(1): .p(2).z = .p(1).z + .r(1)
 .defcol = vbBlue                           'Standardfarbe blau
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call Form1.drawWuerfel
End Sub

Private Sub Test_Click()
  Dim alpha%, beta%, gamma%
    'Select Case KeyCode
     ' Case 88                                   'X-Achse
      '  If Shift Then
       '   alpha = 2
        'Else
         alpha = 1
        'End If End Select
     For i = 0 To objmax
      Form1.d3.ForeColor = obj(i).defcol
      rotation CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), alpha, 0, 0
      show_3D Form1.d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(Form1.d3.ScaleWidth \ 2), CInt(Form1.d3.ScaleHeight \ 2)
     Next i
End Sub
