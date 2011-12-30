VERSION 5.00
Begin VB.Form F3 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Dia-Show"
   ClientHeight    =   8775
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   11985
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   600
   ScaleMode       =   0  'Benutzer
   ScaleWidth      =   800
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
Attribute VB_Name = "F3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'********************************************************************************************
' Form3     Anzeigeform für Bilder voon 3DBau ab Version 1.1
'********************************************************************************************

Private Sub BBildWeiter_Click()

   If F4.File1.ListIndex < (F4.File1.ListCount - 1) Then
      F4.File1.ListIndex = F4.File1.ListIndex + 1
      Call F4.BBildAnz_Click
   Else
      BBildEnde_Click
   End If
End Sub

Private Sub Form_Load()
    F3.Top = 0: F3.Left = 0
End Sub


Private Sub BBildEnde_Click()                   'Darstellung Beenden
    F3.Picture = LoadPicture("")             'leeres Bild
    F3.Hide
End Sub

