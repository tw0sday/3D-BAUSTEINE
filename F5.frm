VERSION 5.00
Begin VB.Form F5 
   AutoRedraw      =   -1  'True
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "Koordinaten"
   ClientHeight    =   1170
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   3390
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1170
   ScaleWidth      =   3390
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Frame Frame6 
      Height          =   555
      Left            =   0
      TabIndex        =   7
      Top             =   600
      Width           =   3375
      Begin VB.TextBox Tview 
         BackColor       =   &H00C00000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   720
         TabIndex        =   11
         Top             =   180
         Width           =   735
      End
      Begin VB.TextBox Tzoom 
         BackColor       =   &H00C00000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   2040
         TabIndex        =   10
         Top             =   180
         Width           =   495
      End
      Begin VB.CommandButton ZoomIn 
         Caption         =   "<"
         Height          =   315
         Left            =   2640
         TabIndex        =   9
         Top             =   180
         Width           =   255
      End
      Begin VB.CommandButton ZoomOut 
         Caption         =   ">"
         Height          =   315
         Left            =   3000
         TabIndex        =   8
         Top             =   180
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "Ebene"
         Height          =   195
         Left            =   180
         TabIndex        =   13
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "Zoom"
         Height          =   195
         Left            =   1560
         TabIndex        =   12
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Frame Frame2 
      Height          =   555
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3375
      Begin VB.TextBox Tz 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   2520
         TabIndex        =   3
         Text            =   "0"
         Top             =   180
         Width           =   735
      End
      Begin VB.TextBox Ty 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FFFF&
         Height          =   285
         Left            =   1440
         TabIndex        =   2
         Text            =   "0"
         Top             =   180
         Width           =   735
      End
      Begin VB.TextBox Tx 
         BackColor       =   &H00000000&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   285
         Left            =   360
         TabIndex        =   1
         Text            =   "0"
         Top             =   165
         Width           =   735
      End
      Begin VB.Label Lz 
         Caption         =   "z="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2280
         TabIndex        =   6
         Top             =   180
         Width           =   255
      End
      Begin VB.Label Ly 
         Caption         =   "y="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1200
         TabIndex        =   5
         Top             =   180
         Width           =   255
      End
      Begin VB.Label Lx 
         Caption         =   "x="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000012&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   180
         Width           =   255
      End
   End
End
Attribute VB_Name = "F5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'************************************************************************************************
'           Programm: F5 bewegliche Toolbar1 zu 3D_Baukasten     Version 1.0     29.12.2001
'           Form2: ToolBar zum Auswählen der verschiedenen Werkzeuge(,...)
'           Besonderheit: Das Form bleibt immer an der Oberfläche sichtbar.
'************************************************************************************************

Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd&, ByVal WndInsertAfter&, ByVal x&, ByVal y&, ByVal cx&, ByVal cy&, ByVal wFlags&)

Private Const SWP_SHOWWINDOW = &H40
Private Const HWND_TOPMOST = -1

Private Sub Form_Resize()
  SetWindowPos F5.hwnd, HWND_TOPMOST, Left / Screen.TwipsPerPixelX, Top / Screen.TwipsPerPixelY, Width / Screen.TwipsPerPixelX, Height / Screen.TwipsPerPixelY, SWP_SHOWWINDOW
End Sub


Sub ZoomIn_Click()
  Call Form1.d3_ZoomIn
End Sub

Sub ZoomOut_Click()
  Call Form1.d3_ZoomOut
End Sub
