VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form F4 
   BorderStyle     =   5  'Änderbares Werkzeugfenster
   Caption         =   "Eingaben"
   ClientHeight    =   8340
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   3660
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8340
   ScaleWidth      =   3660
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows-Standard
   Begin TabDlg.SSTab SSTab1 
      Height          =   8295
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3675
      _ExtentX        =   6482
      _ExtentY        =   14631
      _Version        =   393216
      Tabs            =   6
      TabHeight       =   529
      BackColor       =   12632256
      TabCaption(0)   =   "Körper"
      TabPicture(0)   =   "F4.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame8"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7(0)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Oberfläche"
      TabPicture(1)   =   "F4.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Ausgabe"
      TabPicture(2)   =   "F4.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "TfName"
      Tab(2).Control(1)=   "T_incl"
      Tab(2).Control(2)=   "Frame9(0)"
      Tab(2).Control(3)=   "Frame5"
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Bilder"
      TabPicture(3)   =   "F4.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame9(1)"
      Tab(3).Control(1)=   "File1"
      Tab(3).Control(2)=   "TDatei"
      Tab(3).Control(3)=   "Cmdia"
      Tab(3).ControlCount=   4
      TabCaption(4)   =   "Kamera"
      TabPicture(4)   =   "F4.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label1"
      Tab(4).Control(1)=   "Start"
      Tab(4).Control(2)=   "Command2"
      Tab(4).Control(3)=   "Frame7(1)"
      Tab(4).Control(4)=   "Frame6"
      Tab(4).Control(5)=   "Timer2"
      Tab(4).ControlCount=   6
      TabCaption(5)   =   "Einstellung"
      TabPicture(5)   =   "F4.frx":008C
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Lpasswd"
      Tab(5).Control(1)=   "Tpasswd"
      Tab(5).Control(2)=   "Frame10"
      Tab(5).Control(3)=   "Frame2"
      Tab(5).ControlCount=   4
      Begin VB.Timer Timer2 
         Interval        =   100
         Left            =   -72720
         Top             =   2640
      End
      Begin VB.Frame Frame6 
         Caption         =   "Frame6"
         Height          =   2295
         Left            =   -74880
         TabIndex        =   59
         Top             =   3120
         Width           =   3255
         Begin VB.TextBox HST 
            Height          =   285
            Index           =   4
            Left            =   1440
            TabIndex        =   67
            Top             =   480
            Width           =   495
         End
         Begin VB.HScrollBar HS 
            Height          =   255
            Index           =   4
            Left            =   360
            Max             =   500
            Min             =   50
            TabIndex        =   66
            Top             =   480
            Value           =   100
            Width           =   975
         End
         Begin VB.TextBox HST 
            Height          =   285
            Index           =   1
            Left            =   1440
            TabIndex        =   65
            Top             =   1080
            Width           =   495
         End
         Begin VB.HScrollBar HS 
            Height          =   255
            Index           =   2
            Left            =   360
            Max             =   360
            Min             =   -360
            TabIndex        =   64
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox HST 
            Height          =   285
            Index           =   2
            Left            =   1440
            TabIndex        =   63
            Top             =   1440
            Width           =   495
         End
         Begin VB.HScrollBar HS 
            Height          =   255
            Index           =   3
            Left            =   360
            Max             =   360
            Min             =   -360
            TabIndex        =   62
            Top             =   1800
            Width           =   975
         End
         Begin VB.HScrollBar HS 
            Height          =   255
            Index           =   1
            Left            =   360
            Max             =   360
            Min             =   -360
            TabIndex        =   61
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox HST 
            Height          =   285
            Index           =   3
            Left            =   1440
            TabIndex        =   60
            Top             =   1800
            Width           =   495
         End
      End
      Begin VB.Frame Frame7 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Index           =   1
         Left            =   -74880
         TabIndex        =   56
         Top             =   6120
         Width           =   3255
         Begin VB.CommandButton Btn2 
            Caption         =   "Löschen"
            Height          =   495
            Index           =   1
            Left            =   1800
            TabIndex        =   58
            Top             =   240
            Width           =   1335
         End
         Begin VB.CommandButton Btn1 
            BackColor       =   &H00808080&
            Caption         =   "Einfügen"
            Height          =   495
            Index           =   1
            Left            =   180
            MaskColor       =   &H80000004&
            TabIndex        =   57
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.Frame Frame2 
         Height          =   1935
         Left            =   -74880
         TabIndex        =   50
         Top             =   5040
         Width           =   3255
         Begin VB.CommandButton BDatei_Def 
            Caption         =   "Standard"
            Enabled         =   0   'False
            Height          =   495
            Left            =   1800
            TabIndex        =   53
            Top             =   1320
            Width           =   1215
         End
         Begin VB.CommandButton BDatei_Change 
            Caption         =   "Übernehmen"
            Enabled         =   0   'False
            Height          =   495
            Left            =   240
            TabIndex        =   52
            Top             =   1320
            Width           =   1335
         End
         Begin VB.CommandButton BScreen 
            Caption         =   "Bildschirmeinstellungen"
            Enabled         =   0   'False
            Height          =   555
            Left            =   240
            TabIndex        =   51
            Top             =   600
            Width           =   2775
         End
      End
      Begin VB.Frame Frame9 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Index           =   1
         Left            =   -74880
         TabIndex        =   47
         Top             =   6120
         Width           =   3255
         Begin VB.CommandButton BBildBeenden 
            Caption         =   "Beenden"
            Height          =   495
            Left            =   1800
            TabIndex        =   49
            Top             =   240
            Width           =   1335
         End
         Begin VB.CommandButton BBildAnz 
            Caption         =   "Anzeigen"
            Height          =   495
            Left            =   120
            TabIndex        =   48
            Top             =   240
            Width           =   1335
         End
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Command2"
         Height          =   375
         Left            =   -72840
         TabIndex        =   39
         Top             =   5640
         Width           =   975
      End
      Begin VB.CommandButton Start 
         Caption         =   "Command1"
         Height          =   375
         Left            =   -74640
         TabIndex        =   38
         Top             =   5640
         Width           =   975
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00C0C000&
         Caption         =   "GEOMETRIEDATEN:"
         Height          =   4875
         Left            =   120
         TabIndex        =   27
         Top             =   2640
         Width           =   3255
         Begin VB.ComboBox CB1 
            Height          =   315
            Left            =   120
            TabIndex        =   89
            Text            =   "Kugel"
            Top             =   240
            Width           =   3015
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   18
            Left            =   2400
            TabIndex        =   77
            Text            =   "0"
            Top             =   4080
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   17
            Left            =   1440
            TabIndex        =   76
            Text            =   "0"
            Top             =   4080
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   16
            Left            =   360
            TabIndex        =   75
            Text            =   "0"
            Top             =   4080
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   15
            Left            =   2400
            TabIndex        =   74
            Text            =   "0"
            Top             =   3480
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   14
            Left            =   1440
            TabIndex        =   73
            Text            =   "0"
            Top             =   3480
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   13
            Left            =   360
            TabIndex        =   72
            Text            =   "0"
            Top             =   3480
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   12
            Left            =   2400
            TabIndex        =   71
            Text            =   "0"
            Top             =   2880
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   11
            Left            =   1440
            TabIndex        =   70
            Text            =   "0"
            Top             =   2880
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   10
            Left            =   360
            TabIndex        =   69
            Text            =   "0"
            Top             =   2880
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Index           =   9
            Left            =   2400
            TabIndex        =   45
            Text            =   "0"
            Top             =   2040
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Index           =   8
            Left            =   1440
            TabIndex        =   44
            Text            =   "0"
            Top             =   2040
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Index           =   7
            Left            =   360
            TabIndex        =   43
            Text            =   "0"
            Top             =   2040
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   6
            Left            =   2400
            TabIndex        =   42
            Text            =   "1"
            Top             =   1440
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   5
            Left            =   1440
            TabIndex        =   41
            Text            =   "1"
            Top             =   1440
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   4
            Left            =   360
            TabIndex        =   40
            Text            =   "1"
            Top             =   1440
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   1
            Left            =   360
            TabIndex        =   30
            Text            =   "0"
            Top             =   840
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   2
            Left            =   1440
            TabIndex        =   29
            Text            =   "0"
            Top             =   840
            Width           =   675
         End
         Begin VB.TextBox T1 
            BackColor       =   &H00000000&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H0000FFFF&
            Height          =   285
            Index           =   3
            Left            =   2400
            TabIndex        =   28
            Text            =   "0"
            Top             =   840
            Width           =   675
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(9)"
            Height          =   255
            Index           =   9
            Left            =   2880
            TabIndex        =   88
            Top             =   1800
            Width           =   195
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(8)"
            Height          =   255
            Index           =   8
            Left            =   2760
            TabIndex        =   87
            Top             =   1800
            Width           =   135
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(17)"
            Height          =   255
            Index           =   17
            Left            =   1440
            TabIndex        =   86
            Top             =   3840
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(16)"
            Height          =   255
            Index           =   16
            Left            =   360
            TabIndex        =   85
            Top             =   3840
            Width           =   1035
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(18)"
            Height          =   255
            Index           =   18
            Left            =   2400
            TabIndex        =   84
            Top             =   3840
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(14)"
            Height          =   255
            Index           =   14
            Left            =   1440
            TabIndex        =   83
            Top             =   3240
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(13)"
            Height          =   255
            Index           =   13
            Left            =   360
            TabIndex        =   82
            Top             =   3240
            Width           =   1035
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(15)"
            Height          =   255
            Index           =   15
            Left            =   2400
            TabIndex        =   81
            Top             =   3240
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(11)"
            Height          =   255
            Index           =   11
            Left            =   1440
            TabIndex        =   80
            Top             =   2640
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(10)"
            Height          =   255
            Index           =   10
            Left            =   360
            TabIndex        =   79
            Top             =   2640
            Width           =   1035
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(12)"
            Height          =   255
            Index           =   12
            Left            =   2400
            TabIndex        =   78
            Top             =   2640
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(7)"
            Height          =   255
            Index           =   7
            Left            =   360
            TabIndex        =   46
            Top             =   1800
            Width           =   2715
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(6)"
            Height          =   255
            Index           =   6
            Left            =   2400
            TabIndex        =   37
            Top             =   1200
            Width           =   795
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(2)"
            Height          =   255
            Index           =   2
            Left            =   1200
            TabIndex        =   36
            Top             =   600
            Visible         =   0   'False
            Width           =   975
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(1)"
            Height          =   255
            Index           =   1
            Left            =   360
            TabIndex        =   34
            Top             =   600
            Width           =   2775
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(3)"
            Height          =   255
            Index           =   3
            Left            =   2160
            TabIndex        =   33
            Top             =   600
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(4)"
            Height          =   255
            Index           =   4
            Left            =   360
            TabIndex        =   32
            Top             =   1200
            Width           =   1035
         End
         Begin VB.Label L1 
            BackColor       =   &H00C0C000&
            Caption         =   "L1(5)"
            Height          =   255
            Index           =   5
            Left            =   1440
            TabIndex        =   31
            Top             =   1200
            Width           =   795
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Frame3"
         Height          =   2775
         Left            =   -74820
         TabIndex        =   26
         Top             =   1380
         Width           =   2595
      End
      Begin VB.Frame Frame4 
         Caption         =   "Frame4"
         Height          =   2175
         Left            =   -74880
         TabIndex        =   25
         Top             =   4440
         Width           =   3075
      End
      Begin VB.Frame Frame5 
         BackColor       =   &H00E0E0E0&
         Height          =   4815
         Left            =   -74880
         TabIndex        =   23
         Top             =   720
         Width           =   3255
         Begin VB.TextBox Text1 
            Height          =   4455
            Left            =   120
            MultiLine       =   -1  'True
            ScrollBars      =   3  'Beides
            TabIndex        =   24
            Top             =   240
            Width           =   3075
         End
      End
      Begin VB.Frame Frame7 
         BackColor       =   &H00E0E0E0&
         Height          =   735
         Index           =   0
         Left            =   120
         TabIndex        =   20
         Top             =   7440
         Width           =   3255
         Begin VB.CommandButton BtnChange 
            Caption         =   "Ändern"
            Height          =   375
            Left            =   1200
            TabIndex        =   68
            Top             =   240
            Width           =   975
         End
         Begin VB.CommandButton BtnEinf 
            BackColor       =   &H00808080&
            Caption         =   "Einfügen"
            Height          =   375
            Left            =   120
            MaskColor       =   &H80000004&
            TabIndex        =   22
            Top             =   240
            Width           =   975
         End
         Begin VB.CommandButton BtnClear 
            Caption         =   "Löschen"
            Height          =   375
            Left            =   2280
            TabIndex        =   21
            Top             =   240
            Width           =   855
         End
      End
      Begin VB.Frame Frame8 
         BackColor       =   &H00E0E0E0&
         Caption         =   "OBJEKTE:"
         Height          =   1935
         Left            =   120
         TabIndex        =   18
         Top             =   720
         Width           =   3255
         Begin VB.ListBox CB2 
            Height          =   1230
            ItemData        =   "F4.frx":00A8
            Left            =   60
            List            =   "F4.frx":00AA
            TabIndex        =   19
            Top             =   240
            Width           =   3075
         End
      End
      Begin VB.Frame Frame9 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Index           =   0
         Left            =   -74880
         TabIndex        =   15
         Top             =   6120
         Width           =   3255
         Begin VB.CommandButton BPOV_Comp 
            Caption         =   "Übersetzen"
            Height          =   495
            Left            =   180
            TabIndex        =   17
            Top             =   240
            Width           =   1335
         End
         Begin VB.CommandButton BPov_Save 
            Caption         =   "Ausgeben"
            Height          =   495
            Left            =   1800
            TabIndex        =   16
            Top             =   240
            Width           =   1275
         End
      End
      Begin VB.TextBox T_incl 
         Height          =   285
         Left            =   -73920
         MultiLine       =   -1  'True
         TabIndex        =   14
         Text            =   "F4.frx":00AC
         Top             =   2400
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox TfName 
         Height          =   285
         Left            =   -74880
         TabIndex        =   13
         Top             =   5640
         Width           =   3255
      End
      Begin VB.Frame Frame10 
         Caption         =   "Dateiverwaltung:"
         Height          =   3135
         Left            =   -74880
         TabIndex        =   4
         Top             =   1260
         Width           =   3255
         Begin VB.TextBox TBau_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   8
            Top             =   480
            Width           =   3015
         End
         Begin VB.TextBox Tpov_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   7
            Top             =   1080
            Width           =   3015
         End
         Begin VB.TextBox TBsp_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   6
            Top             =   1800
            Width           =   3015
         End
         Begin VB.TextBox TBsp_Def 
            Height          =   285
            Left            =   120
            TabIndex        =   5
            Top             =   2520
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis 3D-Baukasten:"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   12
            Top             =   240
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV:"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   11
            Top             =   840
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV-Bsp:"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   10
            Top             =   1500
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "StandardName POV-Ausgabe:"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   9
            Top             =   2220
            Width           =   3015
         End
      End
      Begin VB.TextBox Tpasswd 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   -74820
         PasswordChar    =   "#"
         TabIndex        =   3
         Top             =   840
         Width           =   1635
      End
      Begin VB.FileListBox File1 
         Height          =   4575
         Left            =   -74880
         TabIndex        =   2
         Top             =   840
         Width           =   3255
      End
      Begin VB.TextBox TDatei 
         Height          =   285
         Left            =   -74880
         TabIndex        =   1
         Top             =   5640
         Width           =   3255
      End
      Begin VB.PictureBox Cmdia 
         Height          =   240
         Left            =   -74040
         ScaleHeight     =   180
         ScaleWidth      =   300
         TabIndex        =   54
         Top             =   6120
         Width           =   360
      End
      Begin VB.Label Label1 
         Caption         =   "noch in der Testphase!!"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   -74640
         TabIndex        =   55
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label Lpasswd 
         Caption         =   "Passwort"
         Height          =   195
         Left            =   -72960
         TabIndex        =   35
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
'****************************************************************************************
'  Programm: F4.Code              3 D - B A U K A S T E N               Version: 1.2 Beta
'========================================================================================
'  Programmbeschreibung:                                                Datum:  30.1.2002
'  Programmcode zum Form F4 - Registerblätter
'  Interaktion mit dem Benutzer (Körper eingeben, löschen, auswählen...), Farbe ändern,..
'  Koordinateneingabe, Koordinatenänderung, Transformationsdaten einlesen,...
'  Dateioperationen (POV-Text), Einstellungen mit Passwortschutz
'****************************************************************************************
'  Änderungen: Neu: Objektkoordinatenursprung in POV_Obj                        29.1.2002
'
'****************************************************************************************
'            D a t e n s t r u k t u r e n  u n d   S t r u k t u r v a r i a b l e n
'****************************************************************************************

Dim started As Boolean
Dim aktcsg%, csgd%, decd%                       'Zähler für CSG-Funktionen und #declare
Dim csgstr  'As String * 10                     'csg-Anzeigestring



Private Sub Form_Load()                         'Form F4-Registerfenster laden
  started = False
  SSTab1.Tab = 0                                '1. Registerblatt Körper nach vorne
  BPov_Save.Enabled = False                     'Leere POV.Datei nicht speichern
  Call Fill_CB1_Objekt                          'CB1 mit Objektnamen füllen
  Call POV.Fill_CB3_Texi                        'CB3 combobox mit Texturnamen füllen
  Call OGrid                                    'Hintergrundraster = Objekt obj(0)
  Call Def_Objekte                              'Standardobjekte Auswahl
  Call Def_Datei
  Call Def_Bilder
  aktcsg = 0: csgd = 0: decd = 0                'CSG-Zähler
  csgstr = ""                                   'csgstr = leer
  

Debug.Print "pov-id ", POV_ID
End Sub

'****************************************************************************************
'                               D a t e i o p e r a t i o n e n
'****************************************************************************************

Private Sub Def_Datei()                         'Standardeinstellungen für Dateidialoge

TBau_Home.Text = "C:\3DBAU\"                    'Homedir von 3D-Baukasten
Tpov_Home.Text = "C:\3DBAU\POV31\"              'Homedir von POV-Raytracer
TBsp_Home.Text = "C:\3DBAU\"                    'Homedir der Pov-Beispieldateien
TBsp_Def.Text = "ausgabe"                       'StandardausgabeName der Pov-Exportdatei
TfName.Text = TBsp_Home & TBsp_Def              'StandardDateiname für Karteikarte Ausgabe
Call Lock_Datei_Def
End Sub



Private Sub Tpasswd_Change()
  If Tpasswd.Text = "2002" Then
    TBau_Home.Enabled = True                    'Homedir von 3D-Baukasten
    Tpov_Home.Enabled = True                    'Homedir von POV-Raytracer
    TBsp_Home.Enabled = True                    'Homedir der Pov-Beispieldateien
    TBsp_Def.Enabled = True                     'StandardausgabeName der Pov-Exportdatei
    BDatei_Change.Enabled = True                'Commandbutton für Änderungen freigeben
    BDatei_Def.Enabled = True                   'Commandbutton für Standardeinstell. freig
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
  Call End_Check                                'obj-Datenstruktur auf Korrektheit prüfen
  Call POV.Def_Pov                              'Standardeinstellungen übernehmen
  Call POV.PovGen                               'eingefügte Körper übersetzen
  BPov_Save.Enabled = True                      'jetzt erst speichern ermöglichen
End Sub

'****************************************************************************************

Sub End_Check()                                 'obj-Datenstruktur vor dem Aufruf
Dim i%                                          'des PovGenerators auf offensichtliche
                                                'Fehler überprüfen
  If csgd > 0 Then
    MsgBox "CSG_Ende fehlt - wird angefügt ", 64, ""
    CB1.Text = "CSG-Ende"
    For i = csgd - 1 To 0 Step -1
      BtnEinf_Click                             'notwendige Anzahl an CSG-Ends einfügen
    Next i
  End If
End Sub

'****************************************************************************************

Sub BPov_Save_Click()

On Error GoTo Fehler                            'Fehler bei Dateioperation

fName = TfName.Text                             'Standardname für Pov-Datei
  Open fName & ".pov" For Output As #1          'Ausgabekanal öffnen
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

'****************************************************************************************

Sub RayTrace()

  Call BPOV_Comp_Click                          'Exportdatei erstellen
  Call BPov_Save_Click                          'in Ausgabedatei schreiben
                                                'Abfrage
  'Aufruf des RayTracers "Pvengine.exe" mit Parametern -i Inputdatei, -o Outputdatei,
  '-i Include +W Breite +H Höhe +A Anti Aliasing +X Abbruch mit Taste -v ohne Textausg.
  'weitere Einstellungen oder Änderungen im Windows-Raytracer Pov3.1-Fenster möglich.
                                                
 Debug.Print Tpov_Home & "bin\pvengine.exe +W400 +H300 +A +P +X +D -V -I" & TfName.Text & _
".pov -o" & TfName.Text & ".bmp -L" & Tpov_Home & "\include\", vbNormalFocus
 
 POV_ID = Shell(Tpov_Home & "bin\pvengine.exe +W400 +H300 +A +P +X +D -V -I" & TfName.Text & _
".pov -o" & TfName.Text & ".bmp -L" & Tpov_Home & "\include\", 6) 'vbNormalFocus


End Sub

'****************************************************************************************

Private Sub BScreen_Click()                     'temporäre Bildschirmeinstellungen
                                                'vornehmen
  Call Lock_Datei_Def                           'Sperren der Einstellungskarte
    Shell TBau_Home.Text & "screen.exe", vbNormalFocus
    form_loaded = 0                             'Standardbildaufteilung
End Sub

'****************************************************************************************

Sub BBildAnz_Click()                            'Anzeigen-Button

 TDatei.Text = File1.Path & "\" & File1.filename
  If File1.filename <> "" Then
    F9.Picture = LoadPicture(TDatei)            'Bild laden
  Else
    File1.ListIndex = 0
    File1_Click
    F9.Picture = LoadPicture(TDatei)            'erstes Bild in der Liste
  End If
  'F9.Top = (Screen.Height - F9.Picture.Height) / 2
  'F9.Left = (Screen.Width - F9.Picture.Width) / 2
  F9.Show                                       'Bild anzeigen
End Sub

'****************************************************************************************

Private Sub BBildBeenden_Click()
  SSTab1.Tab = 0
  F2.Show
End Sub

Sub Def_Bilder()                                'Bild auswählen

  On Error Resume Next
  File1.ListIndex = 0
  File1.Pattern = "*.*"                         'zulässige Dateitypen
  File1.Path = Tpov_Home.Text & "images"        'Verzeichnis der Bilder
  TDatei.Text = File1.Path & "\" & File1.filename
End Sub

Private Sub File1_Click()                       'Listenauswahl gedrückt
    TDatei.Text = File1.Path & "\" & File1.filename
End Sub

'****************************************************************************************
'                               K a m e r a f u n k t i o n e n
'****************************************************************************************

Private Sub start_Click()
  started = True
  
End Sub


Private Sub HS_Change(ind As Integer)
  HST(ind).Text = HS(ind).Value
End Sub


'****************************************************************************************
Private Sub Timer2_Timer()
Dim i%, ind%, w(1 To 3) As Integer, x%

If started Then

 For ind = 1 To 3
   x = Int(Val(HST(ind).Text))
   
  If x > 0 Then
   'w(1) = 0: w(2) = 0: w(3) = 0
   If x > 0 Then w(ind) = 1
   Form1.d3.Cls                      'kann aus Performancegründen aus der Schleife sein
   objmax = UBound(obj)
     For i = 0 To UBound(obj)
       Form1.d3.ForeColor = obj(i).defcol
       rotation CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), w(2), w(3), w(1)
       show_3D Form1.d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), _
       CInt(Form1.d3.ScaleWidth \ 2), CInt(Form1.d3.ScaleHeight * 0.7)
     Next i
   HST(ind).Text = Val(HST(ind).Text - 2)
   HS(ind).Value = HST(ind).Text
  End If
 'If (w(1) = 0) And (w(2) = 0) And (w(3) = 0) Then started = False

  
 Next ind
End If 'start
End Sub

'****************************************************************************************
'                    O b j e k t e i n g a b e / M a n i p u l a t i o n
'****************************************************************************************

Private Sub Def_Objekte()
 CB1.Text = "Quader"                            'Default Körper"Würfel"
 Call CB1_Click
End Sub


Private Sub G_Label_clear()                     'Karteikartentexte löschen
Dim i%
  For i = 1 To L1.UBound
    L1(i).Caption = ""                          'alle Labels löschen
    T1(i).Visible = True                        'alle Eingabefelder sichtbar
    L1(7).Caption = "Drehung um X,Y,Z - Achse"
    If i > 9 Then T1(i).Visible = False         'Zusatzwerte nur bei best. Körpern
  Next i
End Sub

Private Sub Obj_Def_Werte()                     'Objekt-Transformations-Default-Werte
                                                'können später geändert werden
  T1(1).Text = 0
  T1(2).Text = 0                                '1..3 Standardposition (0,0,0)
  T1(3).Text = 0
  T1(4).Text = 1                                '4..6 Standardabmessungen
  T1(5).Text = 1                                '(Scalierungsfaktor)
  T1(6).Text = 1
  T1(7).Text = 0                                '7..9 Drehwinkel um die x,y,z - Achse
  T1(8).Text = 0
  T1(9).Text = 0
End Sub

'****************************************************************************************
Private Sub random_defcolor()               'Farben zufällig erzeugen
 Randomize
 obj(akto).defcol = RGB(Int(255 * Rnd), Int(255 * Rnd), Int(255 * Rnd))
End Sub

Private Sub CB1_DblClick()
  If Left$(CB1.Text, 4) = "CSG-" Then BtnEinf_Click      'sofort einfügen ohne Maske etc.
End Sub
'****************************************************************************************

Public Sub CB1_Click()  '***** Auswahl des Objektes in CB1 (händisch) möglich  *****
                        'oder nach entsprechender Auswahl in ToolButton TB2 (Form2)
                        
  G_Label_clear         'Kartei-Eingabemaske löschen
  Obj_Def_Werte         'mit Defaultwerten belegen
  pcount = 1            'Markierungspunkte-Zähler
  
  
  Select Case CB1.Text  'Eingabemaske für entsprechenden Körper setzen
                        'sinnvolle Standardwerte für Standardkörper setzen
   Case "Raster":
   Case "Kugel":
        L1(1).Caption = "Kugelmittelpunkt (x,y,z)"          'Ein/Ausgabemaske
        L1(4).Caption = "Radius"                            'für vordefinierte Körper
        T1(5).Visible = False: T1(6).Visible = False
        
   Case "Kegel":
        L1(1).Caption = "Mittelpunkt der Grundfläche (x,y,z)"
        L1(4).Caption = "Radius"
        L1(6).Caption = "Höhe"
        T1(5).Visible = False
        
   Case "Zylinder":
        L1(1).Caption = "Mittelpunkt der Grundfläche (x,y,z)"
        L1(4).Caption = "Radius"
        L1(6).Caption = "Höhe"
        T1(5).Visible = False
  
   Case "Würfel":
        L1(1).Caption = "Eckpunkt (hinten,unten,links) (x,y,z)"
        L1(4).Caption = "Kantenlänge"
        T1(5).Visible = False: T1(6).Visible = False
 
   Case "Quader":
        L1(1).Caption = "Eckpunkt (hinten,unten,links)(x,y,z)"
        L1(4).Caption = "Kantenlängen x y z"
        
   Case "Pyramide":
        L1(1).Caption = "Eckpunkt (hinten,unten,links)(x,y,z) "
        L1(4).Caption = "Kantenlängen x y        "
        L1(6).Caption = "Höhe"

   Case "Prisma":
        L1(1).Caption = "Eckpunkt (hinten,unten,links)(x,y,z) "
        L1(6).Caption = "Höhe"
   
   Case "Disc":
        L1(1).Caption = "Mittelpunkt (x,y,z)"
        L1(4).Caption = "Radius"
        T1(5).Visible = False
        T1(6).Visible = False
        L1(10).Caption = "innerer Radius"
        T1(10).Visible = True
   
   Case Else:
  End Select
End Sub

'****************************************************************************************

Private Sub CB2_Click()                     'Objektbrowser-Combobox
  akto = CB2.ListIndex                      'aktuelles Objekt auswählen
  With obj(akto)
    CB1.Text = Trim$(.bez)                  'Objekttyp setzen
    F6.Frame11.BackColor = .defcol
    F6.CB3.Text = F6.CB3.List(.texi)        'aktuelle Textur
    Form1.mark3 .trans.x, .trans.y, .trans.z, vbRed
  End With
  Call CB1_Click                            'Augabemaske
  Call ViewTrans                            'dessen Geometriedaten
End Sub

'****************************************************************************************

Private Sub CB2_ADD(ByVal i%)               'Listeneintrag in Combobox einfügen
Dim x As String * 1, t%
 
t = obj(i).typ
If (t > -105) And (t < -100) Then           'CSG-Objekte
 Select Case obj(i).typ
 
   Case -101: x = "°"                       'Vereinigung
   Case -102: x = "-"                       'Differenz
   Case -103: x = "^"                       'Durchschnitt
   Case -104: x = "+"                       'Summe
   'Case -105: x = "#"                       'Declaration
 End Select                                 'noch nicht eingerückt ausgeben
CB2.AddItem (i & Space$(csgd * 2) & " " & csgstr & obj(i).bez)

csgd = csgd + 1                             'CSG - Tiefe erhöhen
csgstr = csgstr & x                         'Markierung anhängen

ElseIf t = -100 And Len(csgstr) > 0 Then    'CSG_end
         csgstr = Left$(csgstr, Len(csgstr) - 1) 'letzte Markierung löschen
         If csgd > 0 Then csgd = csgd - 1   'csg - Tiefe verringern
End If

If t >= 0 Or t = -100 Or t < -104 Then CB2.AddItem (i & Space$(csgd * 2) _
& " " & csgstr & obj(i).bez)

  'Debug.Print "CB2_ADD"; i; csgd & csgstr & obj(i).bez; aktcsg 'normale Körper
End Sub


'****************************************************************************************

Private Sub CB2_Refresh()                   'Combobox neu füllen
Dim i As Integer
  aktcsg = 0: csgd = 0                      'CSG-Zähler
  csgstr = ""                               'csgstr = leer
  CB2.Clear                                 'löschen
  For i = 0 To objmax
    CB2_ADD (i)
  Next i
End Sub

'****************************************************************************************

Private Sub BtnClear_Click()                'aktuelles Objekt entfernen "Löschen"
                          'Schleifenzähler

If akto > objmax Then akto = objmax
If objmax > 0 And akto > 0 Then             'leere Liste löschen ?

    Shift_Objects_Down                      'vorhandene objekte um 1 Stelle verschieben
    objmax = objmax - 1                     'Objektarray dynamisch verkleinern
    akto = objmax
    d3akto = objmax
    ReDim Preserve obj(objmax)              'Dyn Array-Feld anlegen, WICHTIG: Preserve !!
    ReDim Preserve D3obj(objmax)            'sonst werden vorhandene Elemente gelöscht!
    Call CB2_Refresh                        'Combobox löschen
    Call Form1.ViewRefresh                  'Anzeige aktualisieren
  End If
  If objmax = 0 Then CB1.Text = "Würfel"    'Default-Körper
  CB2.Selected(CB2.ListCount - 1) = True    'letztes Objekt anzeigen
  Form1.D3_Resize
End Sub
'****************************************************************************************

Sub Shift_Objects_Down()                    'vorhandene Objekte um 1 Stelle verschieben
Dim i As Integer                            'nach unten

    If akto < objmax Then                   'nicht das letzte Objekt
      For i = akto To (objmax - 1)          'alle nachfolgenden Objekte im Array
        obj(i) = obj(i + 1)                 'verschieben
        D3obj(i) = D3obj(i + 1)
      Next i
    End If
    Select Case obj(akto).typ
      Case -101 To -100: CB2_Refresh        'CSG-Objekt gelöscht CB2 neu füllen
    End Select
End Sub

'****************************************************************************************
Sub Shift_Objects_Up()                      'vorhandene Objekte um 1 Stelle verschieben
Dim i As Integer                            'nach oben

    If akto < objmax Then                   'nicht das letzte Objekt
      For i = objmax To akto + 1 Step -1    'alle nachfolgenden Objekte im Array
        obj(i) = obj(i - 1)                 'verschieben
        D3obj(i) = D3obj(i - 1)             'VORSICHT - von oben beginnen !
        Debug.Print "SOU-akto "; i & "<" & i - 1, obj(i).bez
      Next i
    End If
    CB2_Refresh                             'CSG-Objekt gelöscht CB2 neu füllen
End Sub
'****************************************************************************************

Sub Clear_All_Objects()                     'Objektarray leeren

  If MsgBox("Wollen Sie wirklich alle Objekte entfernen?", 32 + 4, "FRAGE") = 6 Then
    
    objmax = 0                              'Objektarray dynamisch verkleinern
    akto = objmax
    ReDim obj(objmax)                       'Dyn Array-Feld (POV-)Objekte
    ReDim D3obj(objmax)                     'Dyn Array 3DPunkte,Kanten,etc.
    Call Form1.ViewRefresh                  'Anzeige aktualisieren
    Call Form1.D3_Resize
  End If
End Sub

'****************************************************************************************
'                       (P O V) - O b j e k t e   e i n f ü g e n
'****************************************************************************************

Sub FillTrans()         'Füllen der Objektstruktur mit den Daten für Transformationen
                        'werden sowohl für die Darstellung (Transformationsmatrix)
                        'als auch für die Ausgabe in POV-Datei benötigt.
 With obj(akto)
 .scale.x = Val(T1(4).Text)
 .scale.y = Val(T1(5).Text)                 'Skalierungsfaktoren in x,y,z - Richtung
 .scale.z = Val(T1(6).Text)
 .rot.x = Val(T1(7).Text)                   'Rotationswinkel um x,y,z - Achse
 .rot.y = Val(T1(8).Text)
 .rot.z = Val(T1(9).Text)
 .trans.x = Val(T1(1).Text)                 'Translationsvektor
 .trans.y = Val(T1(2).Text)
 .trans.z = Val(T1(3).Text)
 End With
End Sub                 'Matrizenberechnungen im Modul M2

'****************************************************************************************

Sub ViewTrans()         'Anzeigen der Transformationsdaten des aktuellen Körpers
                        
 With obj(akto)
  T1(4).Text = .scale.x
  T1(5).Text = .scale.y                'Skalierungsfaktoren in x,y,z - Richtung
  T1(6).Text = .scale.z
  T1(7).Text = .rot.x                  'Rotationswinkel um x,y,z - Achse
  T1(8).Text = .rot.y
  T1(9).Text = .rot.z
  T1(1).Text = .trans.x                'Translationsvektor
  T1(2).Text = .trans.y
  T1(3).Text = .trans.z
 End With
End Sub
'****************************************************************************************

Sub OGrid()             'Neuerung erst seit Version 1.1 !! Raster = obj(0)
                        'Einfügen eines Grid-objektes vorbereiten
                        'Objektarray um Geometriedaten erweitern und mit Werten füllen
                        
ReDim Preserve obj(0)                       'Grid bzw Achsenkreuze = Objekt 0
With obj(0)
 ReDim .P(1)                                '(Ursprung)Punkt
 ReDim .r(1)                                'Abstand
 .typ = 0                                   'Objekt-Struktur füllen
 .bez = "Raster"
 .POV = "plane"                             'POV-Schluesselwort für Ebene
 .defcol = vbWhite                          'Standardfarbe weiß
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With

End Sub

'****************************************************************************************

Sub Kugel()             'Einfügen eines Kugel-objektes vorbereiten (POV-Object sphere)
                        'Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(1)                                '(Mittel)Punkt + Radius definieren die Kugel
 ReDim .r(1)
 .typ = 1                                   'Objekt-Struktur füllen
 .bez = "Kugel"
 .POV = "sphere"                            'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0      'Position der
 .r(1) = 1                                  'Radius-Einheitskugel
  T1(5).Text = T1(4).Text                   'alle Radien gleich lang machen
  T1(6).Text = T1(4).Text
End With
End Sub

'****************************************************************************************

Sub Kegel()             'Einfügen eines Kegel-objektes vorbereiten (POV-Object sphere)
                        'Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 2                                   'Objekt-Struktur füllen
 .bez = "Kegel"
 .POV = "cone"                              'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0      '"Einheitskegel"
 .P(2).x = 0: .P(2).y = 0: .P(2).z = 1
 .r(1) = 1                                  'Radius
  T1(5).Text = T1(4).Text
 .r(2) = T1(6).Text                         'Höhe
End With
End Sub

'****************************************************************************************

Sub Zylinder()          'Einfügen eines Zylinder-objektes vorbereiten (POV-Object cylinder)
                        'Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 3                                   'Objekt-Struktur füllen
 .bez = "Zylinder"
 .POV = "cylinder"                          'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0      '"Einheitszylinder"
 .P(2).x = 0: .P(2).y = 0: .P(2).z = 1
 .r(1) = 1                                  'Radius
  T1(5).Text = T1(4).Text                   'x,y Scalierung gleich
End With
End Sub

'****************************************************************************************

Sub Wuerfel() 'Einfügen eines Würfel-Objektes vorbereiten (POV-Object box)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(2)                                'Grundflächen Punkt hinten links unten
 ReDim .r(1)                                'Kantenlänge
 .typ = 4                                   'Objekt-Struktur füllen
 .bez = "Würfel"
 .POV = "box"                               'POV-Schluesselwort
 .r(1) = Abs(T1(4).Text)                    'Kantenlänge
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0      'Einheitswürfel
 .P(2).x = 1: .P(2).y = 1: .P(2).z = 1
  T1(5).Text = T1(4).Text                   'alle Kanten gleich lang machen
  T1(6).Text = T1(4).Text
End With
End Sub

'****************************************************************************************

Sub Quader()        'Einfügen eines Quader-Objektes vorbereiten (POV-Object box)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(2)                                'Grundflächen Punkt hinten links unten
 .typ = 5                                   'Objekt-Struktur füllen
 .bez = "Quader"
 .POV = "box"                               'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0      'Einheitswürfel * Scalierung = Quader
 .P(2).x = 1: .P(2).y = 1: .P(2).z = 1
End With
End Sub

'****************************************************************************************

Sub Pyramide()        'Einfügen eines Pyramiden-Objektes vorbereiten (POV-Object prism!!)
Dim i%                                      'Trick 17! Prisma als Pyramide getarnt
                                            
With obj(akto)
  ReDim .P(4)                               '4 Grundflächen Punkte
 'ReDim .r(1)                               'Höhe?
 .typ = 6                                   'Objekt-Struktur füllen
 .bez = "Pyramide"
 .POV = "prism { conic_sweep "              'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0                   'Grundflächenpunkte nur x,y Koordinate nötig
 .P(2).x = 1: .P(2).y = 0
 .P(3).x = 1: .P(3).y = 1
 .P(4).x = 0: .P(4).y = 1
End With
End Sub
'****************************************************************************************

Sub Prisma()        'Einfügen eines Prisma-Objektes vorbereiten (POV-Object prism!!)
Dim i%                                      'Prisma
                                            
With obj(akto)
  ReDim .P(3)                               '3 Grundflächen Punkte
 .typ = 7                                   'Objekt-Struktur füllen
 .bez = "Prisma"
 .POV = "prism { linear_sweep "             'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0                   'Grundflächenpunkte nur x,y Koordinate nötig
 .P(2).x = 1: .P(2).y = 0
 .P(3).x = 0.5: .P(3).y = 0.866
End With
End Sub

'****************************************************************************************

Sub Disc()              'Einfügen eines Disc-objektes vorbereiten (POV-Object Disc)
                        'Objektarray um Geometriedaten erweitern und mit Werten füllen
With obj(akto)
 ReDim .P(1)                                '(Mittel)Punkt + Radius definieren die Kugel
 ReDim .r(2)
 .typ = 8                                   'Objekt-Struktur füllen
 .bez = "Disc"
 .POV = "disc"                              'POV-Schluesselwort
 .P(1).x = 0: .P(1).y = 0: .P(1).z = 0
 .r(1) = 1                                  'Radius
  T1(5).Text = T1(4).Text                   'in alle Richtungen gleich
 If Val(T1(10).Text) < Val(T1(4).Text) Then 'inner Radius < äusserer
 .r(2) = T1(10).Text / T1(4).Text           'normieren
 Else: .r(2) = 0                            'sonst 0
 End If
End With
End Sub

'****************************************************************************************

Sub CSG(typ%)                   'Einfügen eines CSG-objektes vorbereiten (POV-CSG-Objecte)
                                'Objektarray um Geometriedaten erweitern und füllen
aktcsg = aktcsg + 1             'CSG-Zähler erhöhen
With obj(akto)
  ReDim .r(1)
 .r(1) = aktcsg                             'akt. Nr der Csg speichern
 .typ = typ                                 'Objekt-Struktur füllen
 .bez = CB1.Text
 .defcol = vbWhite
 Select Case typ
   Case -100: .POV = "csg-end": .r(1) = LastCSG(akto)   'schliesst letzte CSG
   Case -101: .POV = "union"                            'Vereinigung
   Case -102: .POV = "difference"                       'Subtraktion
   Case -103: .POV = "intersection"                     'Durchschnitt
   Case -104: .POV = "merge"                            'Addition
 End Select
End With                                                'vor dem CSG ein Neu_Declare ?
'NeuE: If obj(akto).typ = -100 And decd > 0 And obj(obj(akto).r(1) - 1).typ = 105 Then
' CB1.Text = "Neu_Ende": Call BtnEinf_Click              'Declare-Anweisung
'End If                                                  'automatisch schliesssen
End Sub

'****************************************************************************************

Function LastCSG(ByVal akt%) As Integer         'Welche CSG schliesst csg-end eigentlich?
Dim i%
i = akt
Do                                              'Array vom aktuellen Obj. abwärts durchsuchen
  i = i - 1
Loop Until i < 1 Or ((obj(i).typ < -100) And (obj(i).typ > -105))
Debug.Print "Lastcsg "; i
LastCSG = i
End Function
'****************************************************************************************

Function LastDecl(ByVal akt%) As Integer        'Welche Declare Anweisungschliesst -end
Dim i%                                          'eigentlich?
i = akt
Do                                              'Array vom aktuellen Obj. abwärts durchsuchen
  i = i - 1
Loop Until i < 1 Or (obj(i).typ = -105)
Debug.Print "LastDECL "; i
LastDecl = i
End Function
'****************************************************************************************

Sub Neu_Declare()                   'Einfügen eines CSG-objektes vorbereiten (POV-CSG-Objecte)
                                    'Objektarray um Geometriedaten erweitern und füllen
decd = decd + 1
With obj(akto)
  ReDim .r(1)
 .r(1) = aktcsg                                     'akt. Nr der Csg speichern
 .typ = -105                                        'Objekt-Struktur füllen
 .bez = CB1.Text & " XY"
 .defcol = vbWhite
 .POV = "#declare"                                  'Deklaration neuer Körper
End With
 CB1.Text = "CSG-Summe"                             'automatisch ein CSG dannach
 BtnEinf_Click
End Sub
 
'****************************************************************************************

Sub Neu_Ende()                   'Einfügen eines CSG-objektes vorbereiten (POV-CSG-Objecte)
Dim str                           'Objektarray um Geometriedaten erweitern und füllen
                                 
decd = decd - 1
With obj(akto)
  ReDim .r(2)
 .r(1) = LastDecl(akto)                             'Nr d. #deklare Anweisung speichern
 .r(2) = akto                                       'Nr der #declare End Anweisung
 .typ = -106                                        'Objekt-Struktur füllen
  str = obj(.r(1)).bez                              'Bezeichnung der #Neu "XY" Anweisung
 .bez = Trim$(Mid$(str, 5, Len(str)))               'Bezeichnung ohne #Neu
 .defcol = vbWhite
 .POV = .bez                                        'Deklaration neuer Körper
 CB1.AddItem .bez                                   'neuen Körper in Auswahlliste anhängen
End With
End Sub
'****************************************************************************************

Function in_cb1(str) As Boolean
Dim i%, b1 As Boolean
 
 b1 = False: in_cb1 = False
 For i = 0 To CB1.ListCount
   If Trim$(CB1.List(i)) = Trim$(str) Then b1 = True
   in_cb1 = in_cb1 Or b1
   Debug.Print "in_cb1 ", CB1.List(i), str, in_cb1
 Next i
End Function


'****************************************************************************************

Sub new_object()                   'Einfügen eines CSG-objektes vorbereiten (POV-CSG-Objecte)

With obj(akto)
 .typ = 200                                         'Objekt-Struktur füllen
 .bez = Trim$(CB1.Text)                             'Bezeichnung
 .defcol = vbWhite
 .POV = .bez                                        'Deklaration neuer Körper
End With
End Sub
    
'****************************************************************************************
'                    O b j e k t e   e i n f ü g e n / l ö s c h e n
'****************************************************************************************
Sub Fill_CB1_Objekt()                       'Combobox1 mit Objektnamen füllen
  CB1.AddItem "Kugel"
  CB1.AddItem "Kegel"
  CB1.AddItem "Zylinder"
  CB1.AddItem "Würfel"
  CB1.AddItem "Quader"
  CB1.AddItem "Pyramide"
  CB1.AddItem "Prisma"
  CB1.AddItem "Disc"
  CB1.AddItem "CSG-Vereinigung"
  CB1.AddItem "CSG-Differenz"
  CB1.AddItem "CSG-Durchschnitt"
  CB1.AddItem "CSG-Summe"
  CB1.AddItem "CSG-Ende"
  CB1.AddItem "#Neu"
  CB1.AddItem "Neu_Ende"

End Sub

'****************************************************************************************

Private Sub BtnChange_Click()               'Objekte Ändern Taste gedrückt

If akto > objmax Then akto = objmax
 Select Case CB1.Text
   Case "Kugel": Call Kugel
   Case "Kegel": Call Kegel
   Case "Zylinder": Call Zylinder
   Case "Würfel": Call Wuerfel
   Case "Quader": Call Quader
   Case "Pyramide": Call Pyramide
   Case "Prisma": Call Prisma
   Case "Disc": Call Disc
   
   Case Else: Debug.Print "BtnEinf unbekannter Körper "; akto
 End Select
 FillTrans                                  'Transformationswerte in Objektarray
 D3_Refresh (akto)                          'Transformationsmatrix
 CB2.Selected(CB2.ListCount - 1) = True     'letztes Objekt anzeigen
 Call Form1.D3_Resize                       '3D Ansicht neu zeichnen
 Call Form1.ViewRefresh                     '2D Views neu zeichnen
End Sub

'****************************************************************************************

Sub BtnEinf_Click()                         'Objekte Einfügen Taste gedrückt
Dim ok As Boolean, ListI%
  
 ok = True                                  'Neues Objekt am Ende der Liste einfügen
 objmax = objmax + 1                        'Objektarray dynamisch erweitern
 akto = objmax                              'am Ende der liste anfügen

 d3zoomf = 10
 ReDim Preserve obj(objmax)                 'Dyn Array-Feld anlegen, WICHTIG: Preserve !!
 D3_Refresh (objmax)                        'Punkt und Kantenkoordinaten einlesen
 ListI = CB2.ListIndex + 1                  'falls nicht am Ende einfügen
 
 If (ListI > 0) And (ListI < objmax) Then
  akto = ListI                              'nach dem akt. ausgewählten Objekt einfügen
  Shift_Objects_Up
 End If
 
 obj(akto).texi = 0                         'Default keine Textur
 
  Select Case Trim(CB1.Text)
   Case "Kugel": Call Kugel
   Case "Kegel": Call Kegel
   Case "Zylinder": Call Zylinder
   Case "Würfel": Call Wuerfel
   Case "Quader": Call Quader
   Case "Pyramide": Call Pyramide
   Case "Prisma": Call Prisma
   Case "Disc": Call Disc
   Case "CSG-Ende": CSG -100
   Case "CSG-Vereinigung": CSG -101         'CSG-Objekte
   Case "CSG-Differenz": CSG -102
   Case "CSG-Durchschnitt": CSG -103
   Case "CSG-Summe": CSG -104
   Case "#Neu": Neu_Declare
   Case "Neu_Ende": Neu_Ende
  
   Case Else:
              If in_cb1(Trim(CB1.Text)) Then
                new_object
              Else
                Debug.Print "BtnEinf unbekannter Körper "; akto; CB1.Text
              ok = False
              End If
 End Select

                                            'falls ein Fehler beim Einfügen...
 If ok = False Then objmax = objmax - 1: akto = objmax: ReDim Preserve obj(objmax)
 
 If ok = True Then                          'Eifügen OK

   FillTrans                                'Transformationswerte in Objektarray
   If obj(akto).typ > 0 Then random_defcolor 'zufällige Farbe
  Debug.Print "BtnEinf: "; akto; CB2.ListIndex + 1
   CB2_Refresh                              'CB2-Liste erneuern
   CB2.Selected(CB2.ListCount - 1) = True   'letztes Objekt anzeigen
   Call D3_Refresh(objmax)
   Call Form1.D3_Resize                     '3D Ansicht neu zeichnen
   Call Form1.VRefresh                      '2D Views neu zeichnen
 End If
End Sub


'****************************************************************************************
'*******************************************  EOF  **************************************

