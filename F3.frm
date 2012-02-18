VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form F3 
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   ClientHeight    =   7515
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   645
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7500
   ScaleMode       =   0  'Benutzer
   ScaleWidth      =   584.151
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin ComctlLib.Toolbar TB1 
      Height          =   630
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   855
      _ExtentX        =   1508
      _ExtentY        =   1111
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      ImageList       =   "IL1"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   13
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Position"
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Körper einfügen"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Bearbeiten"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Farbe ändern"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Raytrace"
            Object.Tag             =   ""
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "3D-Zoom"
            Object.Tag             =   ""
            ImageIndex      =   6
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Ausgabe"
            Object.Tag             =   ""
            ImageIndex      =   7
         EndProperty
         BeginProperty Button8 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Beenden"
            Object.Tag             =   ""
            ImageIndex      =   8
         EndProperty
         BeginProperty Button9 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.ToolTipText     =   "Dia-Show"
            Object.Tag             =   ""
            ImageIndex      =   9
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button11 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button12 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button13 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
      EndProperty
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
            Picture         =   "F3.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":031A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":0634
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":094E
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":0C68
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":0F82
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":129C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":15B6
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "F3.frx":18D0
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "F3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************************
'  Modul: F3.Frm                 3 D - B A U K A S T E N                Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung: Modul F3                                       Datum:  30.1.2002
'
'****************************************************************************************
'           Programm: Form F3 bewegliche Toolbar2 zu 3D_Baukasten     Version 1.2
'           F3: ToolBar zum Auswählen der verschiedenen Körper(Kugel,Kegel,...)
'           Besonderheit: Das F3 bleibt immer an der Oberfläche sichtbar.
'****************************************************************************************

Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd&, ByVal WndInsertAfter&, ByVal x&, _
                                                     ByVal y&, ByVal cx&, ByVal cy&, ByVal wFlags&)

Private Const SWP_SHOWWINDOW = &H40
Private Const HWND_TOPMOST = -1


'****************************************************************************************

Private Sub Form_Resize()
  SetWindowPos F3.hwnd, HWND_TOPMOST, Left / Screen.TwipsPerPixelX, Top / Screen.TwipsPerPixelY, _
  Width / Screen.TwipsPerPixelX, Height / Screen.TwipsPerPixelY, SWP_SHOWWINDOW
End Sub

'**********************************************************************************************
'                             T o o l b a r - O p e r a t i o n e n
'**********************************************************************************************

Private Sub TB1_ButtonClick(ByVal Button As ComctlLib.Button) 'Toolbar1

Dim i As Integer                            'Hilfsvariable

 TB1.Buttons(Itool).Value = tbrUnpressed    'MS-Bug1 alte Taste heben geht nicht!!
                               '
 Itool = Button.Index                       'Index der gedrückten Taste
   Select Case Itool
     Case 1:    F2.Hide                     'Körperauswahl ausblenden
                View(1).cur = 1: View(2).cur = 1: View(3).cur = 1:
     Case 2:    F2.Show                     'Körperauswahl einblenden
                F4.SSTab1.Tab = 0
                'View(1).cur = 2: View(2).cur = 2: View(3).cur = 1:
                                            'Cursorform ändern
     Case 3:
     Case 4:    Call F6.BColor_Click
     Case 5:    Call F4.RayTrace

     Case 6:    Call Form1.Zoomed_d3
     
     Case 7:    Call F4.BPOV_Comp_Click     'Exportdatei erstellen
                Call F4.BPov_Save_Click     'in Ausgabedatei schreiben

     Case 8:   Form1.mnuFileExit_Click
     Case 9:   F4.SSTab1.Tab = 3            'BilderRegister
               F4.Def_Bilder
   End Select
 Debug.Print "TB1 Taste: ", Itool
 Button.Value = IDDOWN                      'Taste gedrückt einrasten

End Sub

