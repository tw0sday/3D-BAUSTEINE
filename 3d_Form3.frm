VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   0  'Kein
   Caption         =   "Form3"
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
   Begin VB.CommandButton BBildWeiter 
      Caption         =   "Weiter"
      Height          =   315
      Left            =   10560
      TabIndex        =   1
      Top             =   8280
      Width           =   675
   End
   Begin VB.CommandButton BBildEnde 
      Caption         =   "Ende"
      Height          =   315
      Left            =   11280
      TabIndex        =   0
      Top             =   8280
      Width           =   615
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'********************************************************************************************
' Form3     Anzeigeform für Bilder voon 3DBau ab Version 1.1
'********************************************************************************************

Private Sub BBildWeiter_Click()

   If Form1.File1.ListIndex < (Form1.File1.ListCount - 1) Then
      Form1.File1.ListIndex = Form1.File1.ListIndex + 1
      Call Form1.BBildAnz_Click
   Else
      BBildEnde_Click
   End If
End Sub

Private Sub Form_Load()
    Form3.Top = 0: Form3.Left = 0
End Sub


Private Sub BBildEnde_Click()                   'Darstellung Beenden
    Form3.Picture = LoadPicture("")             'leeres Bild
    Form3.Hide
End Sub

