VERSION 5.00
Begin VB.Form F9 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'Kein
   Caption         =   "   "
   ClientHeight    =   8775
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   11985
   LinkTopic       =   "Form3"
   ScaleHeight     =   600
   ScaleMode       =   0  'Benutzer
   ScaleWidth      =   800
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton BBildRueck 
      Caption         =   "<"
      Height          =   255
      Left            =   10200
      TabIndex        =   2
      Top             =   8280
      Width           =   495
   End
   Begin VB.CommandButton BBildWeiter 
      Caption         =   ">"
      Height          =   255
      Left            =   10800
      TabIndex        =   1
      Top             =   8280
      Width           =   495
   End
   Begin VB.CommandButton BBildEnde 
      Caption         =   "End"
      Height          =   255
      Left            =   11400
      TabIndex        =   0
      Top             =   8280
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   7695
      Left            =   360
      Top             =   360
      Width           =   11295
   End
End
Attribute VB_Name = "F9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************************
'  Modul: F9.Frm                 3 D - B A U K A S T E N                Version: 1.3 Beta
'========================================================================================
'  Programmbeschreibung: Modul F9                                       Datum:  30.1.2002
'  ab Version 1.3 nicht mehr F3 sonder F9 !!
'****************************************************************************************
' Form3     Anzeigeform für Bilder von 3DBau ab Version 1.1 = " D i a s h o w "
'****************************************************************************************

Private Sub BBildWeiter_Click()

   If F4.File1.ListIndex < (F4.File1.ListCount - 1) Then
      F4.File1.ListIndex = F4.File1.ListIndex + 1
      Call F4.BBildAnz_Click
   Else
      BBildEnde_Click
   End If
End Sub

'****************************************************************************************
Private Sub BBildRueck_Click()

   If F4.File1.ListIndex > 0 Then
      F4.File1.ListIndex = F4.File1.ListIndex - 1
      Call F4.BBildAnz_Click
   Else
      BBildEnde_Click
   End If
End Sub

'****************************************************************************************

Private Sub Form_Load()
Dim unten!, rechts!

    Me.Top = 0: Me.Left = 0                                     'gesamten Bildschirm aus
    Me.Height = Screen.Height: Me.Width = Screen.Width          'füllen (schwarz)
    Me.BackColor = vbBlack
    Unload F2: Unload F3                                    'Hide funktioniert nicht!
    unten = Me.Height / Screen.TwipsPerPixelY                   'Buttons nach recht unten
    rechts = Me.Width / Screen.TwipsPerPixelX
    BBildWeiter.Top = unten: BBildWeiter.Left = rechts - 100
    BBildRueck.Top = unten: BBildRueck.Left = rechts - 150
    BBildEnde.Top = unten: BBildEnde.Left = rechts - 50
End Sub

'****************************************************************************************

Private Sub BBildEnde_Click()                                   'Darstellung Beenden
    F9.Picture = LoadPicture("")                                'leeres Bild
    Load F2: Load F3
    Form1.Form_Set                                                            'Arbeitsbereich
    Form1.ViewControl                                           'wieder herstellen
    F9.Hide
End Sub

'****************************************************************************************
'****************************************** EOF *****************************************

