VERSION 5.00
Begin VB.Form F5 
   AutoRedraw      =   -1  'True
   BorderStyle     =   0  'Kein
   Caption         =   "Koordinaten"
   ClientHeight    =   525
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   16050
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   525
   ScaleMode       =   0  'Benutzer
   ScaleWidth      =   16089.05
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin VB.Frame Frame1 
      Height          =   495
      Left            =   3000
      TabIndex        =   14
      Top             =   0
      Width           =   855
      Begin VB.CommandButton D3_ZoomOut 
         Caption         =   ">"
         Height          =   250
         Left            =   480
         TabIndex        =   16
         Top             =   150
         Width           =   255
      End
      Begin VB.CommandButton D3_ZoomIn 
         Caption         =   "<"
         Height          =   250
         Left            =   240
         TabIndex        =   15
         Top             =   150
         Width           =   255
      End
      Begin VB.Label Label3 
         Caption         =   "3D"
         Height          =   255
         Index           =   1
         Left            =   20
         TabIndex        =   17
         Top             =   150
         Width           =   255
      End
   End
   Begin VB.Frame Frame6 
      Height          =   495
      Left            =   3840
      TabIndex        =   7
      Top             =   0
      Width           =   10815
      Begin VB.TextBox TStatus 
         BackColor       =   &H00C00000&
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   1320
         TabIndex        =   11
         Top             =   120
         Width           =   9360
      End
      Begin VB.TextBox Tzoom 
         BackColor       =   &H00C00000&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   315
         Left            =   360
         TabIndex        =   10
         Top             =   120
         Width           =   495
      End
      Begin VB.CommandButton D2_ZoomIn 
         Caption         =   "<"
         Height          =   250
         Left            =   840
         TabIndex        =   9
         Top             =   150
         Width           =   255
      End
      Begin VB.CommandButton D2_ZoomOut 
         Caption         =   ">"
         Height          =   250
         Left            =   1080
         TabIndex        =   8
         Top             =   150
         Width           =   255
      End
      Begin VB.Label Label1 
         Height          =   195
         Left            =   4200
         TabIndex        =   13
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label2 
         Caption         =   "2D"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   100
         TabIndex        =   12
         Top             =   120
         Width           =   255
      End
   End
   Begin VB.Frame Frame2 
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3015
      Begin VB.TextBox Tz 
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
         ForeColor       =   &H0000FF00&
         Height          =   315
         Left            =   2160
         TabIndex        =   3
         Text            =   "0"
         Top             =   120
         Width           =   735
      End
      Begin VB.TextBox Ty 
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
         ForeColor       =   &H0000FFFF&
         Height          =   330
         Left            =   1200
         TabIndex        =   2
         Text            =   "0"
         Top             =   120
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
         Height          =   330
         Left            =   240
         TabIndex        =   1
         Text            =   "0"
         Top             =   120
         Width           =   735
      End
      Begin VB.Label Lz 
         Caption         =   "z"
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
         Left            =   2040
         TabIndex        =   6
         Top             =   120
         Width           =   135
      End
      Begin VB.Label Ly 
         Caption         =   "y"
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
         Left            =   1080
         TabIndex        =   5
         Top             =   120
         Width           =   135
      End
      Begin VB.Label Lx 
         Caption         =   "x"
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
         Top             =   120
         Width           =   255
      End
   End
End
Attribute VB_Name = "F5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'****************************************************************************************
'  Modul: F5.Code                3 D - B A U K A S T E N                Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung: Modul F5                                       Datum:  30.1.2002
'
'****************************************************************************************
'         Programm: F5 bewegliche Toolbar1 zu 3D_Baukasten     Version 1.0     29.12.2001
'         Form2: ToolBar zum Auswählen der verschiedenen Werkzeuge(,...)
'         Besonderheit: Das Form bleibt immer an der Oberfläche sichtbar.
'****************************************************************************************

Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd&, ByVal WndInsertAfter&, _
                                ByVal x&, ByVal y&, ByVal cx&, ByVal cy&, ByVal wFlags&)

Private Const SWP_SHOWWINDOW = &H40
Private Const HWND_TOPMOST = -1

'****************************************************************************************
Private Sub D2_ZoomIn_Click()

   Debug.Print "d2-zoom "; zoomf
   Call Form1.ZoomIn_Click
End Sub

'****************************************************************************************

Private Sub D2_ZoomOut_Click()
   Form1.ZoomOut_Click
End Sub

'****************************************************************************************

'Private Sub Form_Resize()
'  SetWindowPos F5.hwnd, HWND_TOPMOST, Left / Screen.TwipsPerPixelX, Top / Screen.TwipsPerPixelY, _
'  Width / Screen.TwipsPerPixelX, Height / Screen.TwipsPerPixelY, SWP_SHOWWINDOW
'End Sub

'****************************************************************************************

Sub D3_ZoomIn_Click()
Dim i%
 
 If d3zoomf < 50 Then               'kleiner 500 %
   d3zoomf = d3zoomf * 1.2          'auf 120 % vergrößern
    For i = 0 To UBound(D3obj)      'alle Körper
      scalierung CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), 1.2
    Next i
   Form1.D3_Resize                  'neu zeichnen
   '
 End If
End Sub

'****************************************************************************************

Sub D3_ZoomOut_Click()
Dim i%
 
 If d3zoomf > 5 Then                'noch nicht zu klein 50 %
   d3zoomf = d3zoomf / 1.2          'auf ca. 83 % verkleinern
    For i = 0 To UBound(D3obj)      'alle Körper
      scalierung CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), 1 / 1.2
    Next i
   Form1.D3_Resize                  'neu zeichnen
 End If
End Sub

'****************************************************************************************
'**************************************** EOF *******************************************
