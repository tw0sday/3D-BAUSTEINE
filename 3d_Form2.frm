VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form F2 
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "3D"
   ClientHeight    =   14280
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   585
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   14280
   ScaleWidth      =   585
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin ComctlLib.Toolbar TB2 
      Align           =   1  'Oben ausrichten
      Height          =   660
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   585
      _ExtentX        =   1032
      _ExtentY        =   1164
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      ImageList       =   "IL2"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   8
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "Kugel"
            Object.Tag             =   ""
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "Kegel"
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "Zylinder"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   "Würfel"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button8 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ImageList IL2 
      Left            =   3840
      Top             =   360
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   4
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3d_Form2.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3d_Form2.frx":0C52
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3d_Form2.frx":18A4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "3d_Form2.frx":24F6
            Key             =   ""
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "F2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'************************************************************************************************
'           Programm: Form F2 bewegliche Toolbar2 zu 3D_Baukasten     Version 1.0     6.1.2001
'           F2: ToolBar zum Auswählen der verschiedenen Körper(Kugel,Kegel,...)
'           Besonderheit: Das F2 bleibt immer an der Oberfläche sichtbar.
'************************************************************************************************

Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd&, ByVal WndInsertAfter&, ByVal x&, ByVal y&, ByVal cx&, ByVal cy&, ByVal wFlags&)

Private Const SWP_SHOWWINDOW = &H40
Private Const HWND_TOPMOST = -1

Private Sub Form_Resize()
  SetWindowPos F2.hwnd, HWND_TOPMOST, Left / Screen.TwipsPerPixelX, Top / Screen.TwipsPerPixelY, Width / Screen.TwipsPerPixelX, Height / Screen.TwipsPerPixelY, SWP_SHOWWINDOW
End Sub

'***         Auswahl der Körper und Rückgabe an das Form1           ***/
'****************************************   E O F   **********************************************

Private Sub TB2_ButtonClick(ByVal Button As ComctlLib.Button)
   Itool2 = Button.Index           'Index global bekanntgeben
   F4.cb1.Text = Button.Key        'Namen im Toolbar TB2 und ComboBox CB1 müssen übereinstimmen!!
 Call F4.CB1_Click                 'Aufruf der Combobox CB1 simulieren
End Sub
