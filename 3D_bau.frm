VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   Caption         =   "3D-Baukasten"
   ClientHeight    =   7605
   ClientLeft      =   0
   ClientTop       =   1725
   ClientWidth     =   11985
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
   ScaleHeight     =   507
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   799
   Begin ComctlLib.Toolbar TB1 
      Height          =   6900
      Left            =   0
      TabIndex        =   61
      Top             =   0
      Width           =   615
      _ExtentX        =   1085
      _ExtentY        =   13176
      ButtonWidth     =   1032
      ButtonHeight    =   1005
      Appearance      =   1
      ImageList       =   "IL1"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   14
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
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
            Object.ToolTipText     =   "Farbe"
            Object.Tag             =   ""
            ImageIndex      =   4
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Ausgabe"
            Object.Tag             =   ""
            ImageIndex      =   5
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "3D-Bild zoomen"
            Object.Tag             =   ""
            ImageIndex      =   6
         EndProperty
         BeginProperty Button7 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.ToolTipText     =   "Speichern"
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
            Object.ToolTipText     =   "Bilder anzeigen"
            Object.Tag             =   ""
            ImageIndex      =   9
         EndProperty
         BeginProperty Button10 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Button11 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
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
         BeginProperty Button14 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame6 
      Height          =   555
      Left            =   4440
      TabIndex        =   25
      Top             =   -60
      Width           =   3735
      Begin VB.CommandButton ZoomOut 
         Caption         =   ">"
         Height          =   315
         Left            =   3300
         TabIndex        =   31
         Top             =   180
         Width           =   255
      End
      Begin VB.CommandButton ZoomIn 
         Caption         =   "<"
         Height          =   315
         Left            =   2940
         TabIndex        =   30
         Top             =   180
         Width           =   255
      End
      Begin VB.TextBox Tzoom 
         BackColor       =   &H00C00000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   2340
         TabIndex        =   29
         Top             =   180
         Width           =   495
      End
      Begin VB.TextBox Tview 
         BackColor       =   &H00C00000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   840
         TabIndex        =   27
         Top             =   180
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "Zoom"
         Height          =   195
         Left            =   1740
         TabIndex        =   28
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Ebene"
         Height          =   195
         Left            =   180
         TabIndex        =   26
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame Frame2 
      Height          =   555
      Left            =   840
      TabIndex        =   18
      Top             =   -60
      Width           =   3435
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
         TabIndex        =   21
         Text            =   "0"
         Top             =   165
         Width           =   735
      End
      Begin VB.TextBox Ty 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FFFF&
         Height          =   285
         Left            =   1440
         TabIndex        =   20
         Text            =   "0"
         Top             =   180
         Width           =   735
      End
      Begin VB.TextBox Tz 
         BackColor       =   &H00000000&
         ForeColor       =   &H0000FF00&
         Height          =   285
         Left            =   2520
         TabIndex        =   19
         Text            =   "0"
         Top             =   180
         Width           =   735
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
         TabIndex        =   24
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
         TabIndex        =   23
         Top             =   180
         Width           =   255
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
         TabIndex        =   22
         Top             =   180
         Width           =   255
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8055
      Left            =   8280
      TabIndex        =   4
      Top             =   0
      Width           =   3675
      _ExtentX        =   6482
      _ExtentY        =   14208
      _Version        =   393216
      Tabs            =   6
      TabHeight       =   529
      BackColor       =   12632256
      TabCaption(0)   =   "Körper"
      TabPicture(0)   =   "3D_bau.frx":030A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame8"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Oberfläche"
      TabPicture(1)   =   "3D_bau.frx":0326
      Tab(1).ControlEnabled=   0   'False
      Tab(1).ControlCount=   0
      TabCaption(2)   =   "Ausgabe"
      TabPicture(2)   =   "3D_bau.frx":0342
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "TfName"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "T_incl"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Frame9"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "Frame5"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).ControlCount=   4
      TabCaption(3)   =   "Bilder"
      TabPicture(3)   =   "3D_bau.frx":035E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "File1"
      Tab(3).Control(1)=   "BBildAnz"
      Tab(3).Control(2)=   "BBildBeenden"
      Tab(3).Control(3)=   "TDatei"
      Tab(3).ControlCount=   4
      TabCaption(4)   =   "Tab 4"
      TabPicture(4)   =   "3D_bau.frx":037A
      Tab(4).ControlEnabled=   0   'False
      Tab(4).ControlCount=   0
      TabCaption(5)   =   "Einstellung"
      TabPicture(5)   =   "3D_bau.frx":0396
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Lpasswd"
      Tab(5).Control(1)=   "Frame10"
      Tab(5).Control(2)=   "Tpasswd"
      Tab(5).Control(3)=   "BDatei_Change"
      Tab(5).Control(4)=   "BDatei_Def"
      Tab(5).Control(5)=   "BScreen"
      Tab(5).ControlCount=   6
      Begin VB.TextBox TDatei 
         Height          =   285
         Left            =   -74880
         TabIndex        =   65
         Top             =   6480
         Width           =   3255
      End
      Begin VB.CommandButton BBildBeenden 
         Caption         =   "Beenden"
         Height          =   615
         Left            =   -73080
         TabIndex        =   64
         Top             =   7200
         Width           =   1335
      End
      Begin VB.CommandButton BBildAnz 
         Caption         =   "Anzeigen"
         Height          =   615
         Left            =   -74760
         TabIndex        =   63
         Top             =   7200
         Width           =   1455
      End
      Begin VB.FileListBox File1 
         Height          =   5355
         Left            =   -74880
         TabIndex        =   62
         Top             =   840
         Width           =   3255
      End
      Begin VB.CommandButton BScreen 
         Caption         =   "Bildschirmeinstellungen"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -74700
         TabIndex        =   60
         Top             =   6660
         Width           =   2955
      End
      Begin VB.CommandButton BDatei_Def 
         Caption         =   "Standard"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -73080
         TabIndex        =   55
         Top             =   7380
         Width           =   1335
      End
      Begin VB.CommandButton BDatei_Change 
         Caption         =   "Übernehmen"
         Enabled         =   0   'False
         Height          =   555
         Left            =   -74700
         TabIndex        =   54
         Top             =   7380
         Width           =   1335
      End
      Begin VB.TextBox Tpasswd 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   -74820
         PasswordChar    =   "#"
         TabIndex        =   44
         Top             =   840
         Width           =   1635
      End
      Begin VB.Frame Frame10 
         Caption         =   "Dateiverwaltung:"
         Height          =   3135
         Left            =   -74880
         TabIndex        =   43
         Top             =   1260
         Width           =   3255
         Begin VB.TextBox TBsp_Def 
            Height          =   285
            Left            =   120
            TabIndex        =   53
            Top             =   2520
            Width           =   3015
         End
         Begin VB.TextBox TBsp_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   50
            Top             =   1800
            Width           =   3015
         End
         Begin VB.TextBox Tpov_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   47
            Top             =   1080
            Width           =   3015
         End
         Begin VB.TextBox TBau_Home 
            Enabled         =   0   'False
            Height          =   285
            Left            =   120
            TabIndex        =   46
            Top             =   480
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "StandardName POV-Ausgabe:"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   52
            Top             =   2220
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV-Bsp:"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   51
            Top             =   1500
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis POV:"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   49
            Top             =   840
            Width           =   3015
         End
         Begin VB.Label LHome 
            Caption         =   "Stammverzeichnis 3D-Baukasten:"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   48
            Top             =   240
            Width           =   3015
         End
      End
      Begin VB.TextBox TfName 
         Height          =   285
         Left            =   -74880
         TabIndex        =   42
         Top             =   6720
         Width           =   3255
      End
      Begin VB.TextBox T_incl 
         Height          =   285
         Left            =   -72420
         MultiLine       =   -1  'True
         TabIndex        =   41
         Text            =   "3D_bau.frx":03B2
         Top             =   600
         Visible         =   0   'False
         Width           =   180
      End
      Begin VB.Frame Frame9 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Left            =   -74880
         TabIndex        =   38
         Top             =   7080
         Width           =   3255
         Begin VB.CommandButton BPov_Save 
            Caption         =   "Ausgeben"
            Height          =   555
            Left            =   1740
            TabIndex        =   40
            Top             =   180
            Width           =   1335
         End
         Begin VB.CommandButton BPOV_Comp 
            Caption         =   "Übersetzen"
            Height          =   555
            Left            =   180
            TabIndex        =   39
            Top             =   180
            Width           =   1335
         End
      End
      Begin VB.Frame Frame8 
         BackColor       =   &H00E0E0E0&
         Caption         =   "OBJEKTE:"
         Height          =   2775
         Left            =   180
         TabIndex        =   37
         Top             =   720
         Width           =   3195
         Begin VB.Frame Frame11 
            BackColor       =   &H00E0E0E0&
            Height          =   855
            Left            =   60
            TabIndex        =   58
            Top             =   1860
            Width           =   3075
            Begin VB.CommandButton Test 
               Caption         =   "Test"
               Height          =   495
               Left            =   240
               TabIndex        =   66
               Top             =   240
               Width           =   1095
            End
            Begin VB.CommandButton BColor 
               Caption         =   "Farbe"
               Height          =   555
               Left            =   1620
               TabIndex        =   59
               Top             =   180
               Width           =   1335
            End
            Begin VB.Image Image1 
               Height          =   555
               Left            =   120
               Top             =   180
               Width           =   1395
            End
         End
         Begin VB.ListBox CB2 
            Height          =   1620
            Left            =   180
            TabIndex        =   57
            Top             =   240
            Width           =   2835
         End
      End
      Begin VB.Frame Frame7 
         BackColor       =   &H00E0E0E0&
         Height          =   855
         Left            =   180
         TabIndex        =   34
         Top             =   7080
         Width           =   3195
         Begin VB.CommandButton BtnClear 
            Caption         =   "Löschen"
            Height          =   555
            Left            =   1680
            TabIndex        =   36
            Top             =   180
            Width           =   1335
         End
         Begin VB.CommandButton BtnEinf 
            Caption         =   "Einfügen"
            Height          =   555
            Left            =   180
            TabIndex        =   35
            Top             =   180
            Width           =   1335
         End
      End
      Begin VB.Frame Frame5 
         BackColor       =   &H00E0E0E0&
         Height          =   5895
         Left            =   -74880
         TabIndex        =   16
         Top             =   720
         Width           =   3255
         Begin VB.TextBox Text1 
            Height          =   5535
            Left            =   120
            MultiLine       =   -1  'True
            ScrollBars      =   3  'Beides
            TabIndex        =   17
            Top             =   240
            Width           =   3075
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Frame4"
         Height          =   2175
         Left            =   -74880
         TabIndex        =   8
         Top             =   4440
         Width           =   3075
      End
      Begin VB.Frame Frame3 
         Caption         =   "Frame3"
         Height          =   2775
         Left            =   -74820
         TabIndex        =   7
         Top             =   1380
         Width           =   2595
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00808000&
         Caption         =   "GEOMETRIEDATEN:"
         Height          =   3555
         Left            =   180
         TabIndex        =   5
         Top             =   3540
         Width           =   3195
         Begin VB.TextBox cb1 
            Height          =   315
            Left            =   180
            TabIndex        =   56
            Top             =   300
            Width           =   2835
         End
         Begin VB.TextBox T5 
            Height          =   285
            Left            =   1740
            TabIndex        =   33
            Text            =   "3"
            Top             =   2760
            Width           =   735
         End
         Begin VB.TextBox T4 
            Height          =   285
            Left            =   180
            TabIndex        =   13
            Text            =   "1"
            Top             =   2760
            Width           =   675
         End
         Begin VB.TextBox T3 
            Height          =   285
            Left            =   2160
            TabIndex        =   12
            Text            =   "1"
            Top             =   1020
            Width           =   675
         End
         Begin VB.TextBox T2 
            Height          =   285
            Left            =   1200
            TabIndex        =   11
            Text            =   "1"
            Top             =   1020
            Width           =   675
         End
         Begin VB.TextBox T1 
            Height          =   285
            Left            =   180
            TabIndex        =   6
            Text            =   "1"
            Top             =   1020
            Width           =   675
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(4)"
            Height          =   255
            Index           =   4
            Left            =   1740
            TabIndex        =   32
            Top             =   2460
            Width           =   1395
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(3)"
            Height          =   255
            Index           =   3
            Left            =   180
            TabIndex        =   15
            Top             =   2460
            Width           =   1515
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(2)"
            Height          =   255
            Index           =   2
            Left            =   180
            TabIndex        =   14
            Top             =   1980
            Visible         =   0   'False
            Width           =   2535
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(0)"
            Height          =   255
            Index           =   0
            Left            =   180
            TabIndex        =   10
            Top             =   780
            Width           =   2835
         End
         Begin VB.Label L1 
            BackColor       =   &H00808000&
            Caption         =   "L1(1)"
            Height          =   255
            Index           =   1
            Left            =   180
            TabIndex        =   9
            Top             =   1440
            Visible         =   0   'False
            Width           =   2895
         End
      End
      Begin VB.Label Lpasswd 
         Caption         =   "Passwort"
         Height          =   195
         Left            =   -72960
         TabIndex        =   45
         Top             =   900
         Width           =   915
      End
   End
   Begin VB.PictureBox xz 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   660
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   3
      Top             =   540
      Width           =   3750
      Begin MSComDlg.CommonDialog CmDialog1 
         Left            =   2880
         Top             =   960
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin ComctlLib.ImageList IL1 
         Left            =   2160
         Top             =   960
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
               Picture         =   "3D_bau.frx":03FA
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":0714
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":0A2E
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":0D48
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":1062
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":137C
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":1696
               Key             =   ""
            EndProperty
            BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":19B0
               Key             =   ""
            EndProperty
            BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "3D_bau.frx":1CCA
               Key             =   ""
            EndProperty
         EndProperty
      End
   End
   Begin VB.PictureBox d3 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   660
      MousePointer    =   2  'Kreuz
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   2
      Top             =   4320
      Width           =   3750
   End
   Begin VB.PictureBox yz 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   4440
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   1
      Top             =   540
      Width           =   3750
   End
   Begin VB.PictureBox xy 
      BackColor       =   &H00000000&
      Height          =   3750
      Left            =   4440
      ScaleHeight     =   207.595
      ScaleMode       =   0  'Benutzer
      ScaleWidth      =   207.595
      TabIndex        =   0
      Top             =   4320
      Width           =   3750
   End
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   11640
      Top             =   0
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
'            D a t e n s t r u k t u r e n  u n d   S t r u k t u r v a r i a b l e n
'**********************************************************************************************

Option Explicit

'**********************************************************************************************
'                               V a r i a b l e n
'**********************************************************************************************

Dim aktv As PictureBox              'aktueller View
Dim akti%                           'Index des akt. Views im view-Array

Dim akto%                           'Index des akt. Objekts im obj-Array
Dim objmax                          'groesse des obj-Arrays

Dim Bsnap As Boolean                'auf näheste Gitterposition (Ganzzahl)
Dim grid_color As Long              'Farbe des Hintergrundgitters
Dim zoomed_View%                    'auf vier Felder gezoomter View
Dim i%                              'Hilfsvariable

Dim datMode$, fileNum               ' für Dateioperationen
Dim fName$                          ' Dateiname
Dim msg, answer, title, dgDef       ' für MsgBoxen
Dim txt                             ' Textvariable
Dim Itool, Itool2                   ' Toolbar Indizes

'Const pi = 3.1415                   ' Konstante Pi
Const Bmsli% = 1                    'linker Mousebutton
Const Bmsre% = 2                    'rechter Mousebutton
Const Bmsmi% = 4                    'mittlerer Mousebutton
Const DefWidth% = 200               'Einstellung der View-Fenster
Const DefHight% = 200               'Einstellung der View-Fenster
Const Defmx! = 10                   'Standard-Vergrößerungsfaktor x
Const Defmy! = 10                   'Standard-Vergrößerungsfaktor y
Const ixy = 1, iyz = 2, ixz = 3, id3 = 4    'Index der Views als Konst.


'**********************************************************************************************
'                     S t a n d a r d - E i n s t e l l u n g e n
'**********************************************************************************************

Private Sub Form_Load()             'Hauptfenster laden
 Form1.Top = 0: Form1.Left = 0      'Form in linke obere Bildschirmecke
 Form1.Height = 8800: Form1.Width = 12000
 Timer1.Interval = 500              'Timer alle 500 ms Statusanzeige
 SSTab1.Tab = 0                     '1. Registerblatt Körper
 Bsnap = True                       'auf näheste Gitterposition (Ganzzahl)
 objmax = 0                         'anz der POV-Objekte
 zoomed_View = 0                    'kein View gezoomed
 Itool = 1                          '1 1. Tool in der Werkzeugbuttonleiste als Default
 Itool2 = 1                         'ToolBar TB2 bewegliche "Körperauswahl" im Form2
 grid_color = vbWhite               'RGB(255, 255, 255)
 
 BPov_Save.Enabled = False          'Leere POV.Datei nicht speichern
 d3akto = 0
 ReDim D3obj(0)                     '1. Körper im Körperarray = Achsenkreuz
 
 Form2.Top = 1200: Form2.Left = 800: Form2.Show  'ToolBar TB2 "Körperauswahl"
 
 For i = 1 To UBound(View)          'Views xy,yz,xz,3d
 akti = i                           'Index des aktuellen Views im Array View
   With View(i)
    .x0 = DefWidth / 2: .y0 = DefHight / 2      'x0,y0 = Ursprung Mitte des Pictures
    '.x0 = 0: .y0 = DefHight         'x0,y0 = Ursprung Mitte des Pictures
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
 
 Call OGrid                         'Hintergrundraster = Objekt obj(0)
 Call Def_Objekte                   'Standardobjekte Auswahl
 Call Def_Pov                       'Standardwerte für Raytracer
 Call Def_Datei
 Call Def_3D
 Call Def_Bilder
 'xz.Height = 0                      'Kreuzriss ausblenden
 'xz.Width = 0                       'nur in Version für GZ 3.Klasse
 
End Sub ' ****************** End Form Load ***********************



Private Sub Form_Unload(Cancel As Integer)
  Unload Form2                      'ToolBar TB2 bewegliche "Körperauswahl"
  Unload Form3                      'Diashow
  End
  Unload Me                         'Form1 Hauptfenster
End Sub


'**********************************************************************************************
'                  D a r s t e l l u n g s - / A b l a u f v e r w a l t u n g
'**********************************************************************************************

'**********************************************************************************************
'                             T o o l b a r - O p e r a t i o n e n
'**********************************************************************************************

Private Sub TB1_ButtonClick(ByVal Button As ComctlLib.Button) 'Toolbar1

Dim i As Integer                            'Hilfsvariable

 TB1.Buttons(Itool).Value = tbrUnpressed    'MS-Bug1 alte Taste heben geht nicht!!
                               '
 Itool = Button.Index                       'Index der gedrueckten Taste
 
 
   Select Case Itool
     Case 1:    Form2.Hide                  'Körperauswahl ausblenden
                View(1).cur = 1: View(2).cur = 1: View(3).cur = 1:
     Case 2:    Form2.Show                  'Körperauswahl einblenden
                SSTab1.Tab = 0
                View(1).cur = 2: View(2).cur = 2: View(3).cur = 1:
                                            'Cursorform ändern
     Case 3:
     Case 4:    Call BColor_Click
     Case 5:    Call RayTrace
     Case 6:    Call Zoomed_d3
     
     Case 7:    Call BPOV_Comp_Click        'Exportdatei erstellen
                Call BPov_Save_Click        'in Ausgabedatei schreiben

     Case 8:   Call mnuFileExit_Click
     Case 9:   SSTab1.Tab = 3               'BilderRegister
               Call Def_Bilder
   End Select
 Debug.Print "TB1 Taste: ", Itool
 'Button.Value = IDDOWN                     'Taste gedrückt einrasten

End Sub
'**********************************************************************************************
'                               M e n ü - O p e r a t i o n e n
'**********************************************************************************************

 
Private Sub mnuFileExit_Click()             'Datei schließen
  Unload Form2                              'ToolBar TB2 bewegliche "Körperauswahl"
  Unload Form3
  End
  Unload Me
End Sub


Private Sub mnuFileNew_Click()                      'Neue Szene erstellen
  If objmax > 0 Then Call Clear_All_Objects         'Objectarray leeren
End Sub


Private Sub mnuFileSave_Click()
  Call BPOV_Comp_Click                              'Exportdatei erstellen
  Call BPov_Save_Click                              'in Ausgabedatei schreiben
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
    Debug.Print "objekt"; i; .typ; .bez; .pov; .defcol
      For j = 1 To UBound(.p): Debug.Print "p"; j; "<"; .p(j).x; .p(j).y; .p(j).z; ">": Next j
      For j = 1 To UBound(.r): Debug.Print "r"; j; .r(j): Next j
   End With
  Next akto
End If
akto = i

End Sub

Private Sub ViewRefresch()                  'Neuzeichnen der Views (Tippfehler im Namen!)
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
  Tview.Text = .name                'Name des akt. Views anzeigen
  Tzoom.Text = .mx / 10             'Zoomfaktor anzeigen
  .pic.MousePointer = .cur          'akt. Cursorfor des Views
End With
End Sub

'**********************************************************************************************
'                      w e i t e r e   B e d i e n u n g s e l e m e n t e
'**********************************************************************************************

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
        L1(0).Caption = "Kugelmittelpunkt"
        L1(3).Caption = "Radius"
        T5.Visible = False
        T1.Text = 2
        T2.Text = 2
        T3.Text = 2
        T4.Text = 2
   Case "Kegel":
        L1(0).Caption = "Mittelpunkt der Grundfläche "
        L1(3).Caption = "Radius"
        L1(4).Caption = "Höhe"
        T5.Visible = True
        T3.Text = 0
        T5.Text = 5
   Case "Zylinder":
        L1(0).Caption = "Mittelpunkt der Grundfläche "
        L1(3).Caption = "Radius"
        L1(4).Caption = "Höhe"
        T5.Visible = True
        T3.Text = 0
        T5.Text = 5
   Case "Würfel":
        L1(0).Caption = "Eckpunkt der Grundfläche"
        L1(1).Caption = "(Ecke hinten links unten)"
        L1(3).Caption = "Kantenlänge"
        T5.Visible = False
        T3.Text = 0
        T4.Text = 2
   'Case "Quader":
   
   'Case Else: Beep: MsgBox "ungültige Auswahl"
  End Select
End Sub

'**********************************************************************************************
'                    O b j e k t e   e i n f ü g e n / l ö s c h e n
'**********************************************************************************************

Private Sub BtnEinf_Click()                 'Einfügen Taste gedrückt
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
 Call D3_Resize
End Sub

Private Sub CB2_Click()                     'Objektbrowser-Combobox
  akto = CB2.ListIndex + 1                  'aktuelles Objekt auswählen
  Call Color_Refresh                        'dessen Farbe
  Call Geo_Refresh                          'dessen Geometriedaten
End Sub

Private Sub BColor_Click()                  'Farbänderung
  CmDialog1.Flags = cdlCCPreventFullOpen + cdlCCRGBInit    'initialisierung des Dialoges
  CmDialog1.ShowColor                               'Standarddialog für Farbauswahl
  If akto > 0 And akto <= objmax Then obj(akto).defcol = CmDialog1.Color 'Frame11 = Anzeigefeld
  Call Color_Refresh
  Call D3_Resize
End Sub

Private Sub Color_Refresh()
If akto > 0 And akto <= objmax Then Frame11.BackColor = obj(akto).defcol      'Farbanzeige
  Call VRefresh                             'Anzeige in den Views aktualisieren
End Sub

Private Sub Geo_Refresh()                   'Geometriedaten des aktuellen Objektes anzeigen
If akto > 0 Then
  With obj(akto)
    cb1.Text = Trim$(obj(akto).bez)
    Call CB1_Click                          'Textmaske ausgeben
  
    Select Case cb1.Text                    'gespeicherte Geometriedaten anzeigen
      Case "Kugel":
        T1.Text = .p(1).x: T2.Text = .p(1).y: T3.Text = .p(1).z
        T4.Text = .r(1)
      Case "Kegel":
        T1.Text = .p(1).x: T2.Text = .p(1).y: T3.Text = .p(1).z
        T4.Text = .r(1)
        T5.Text = .r(2)
      Case "Zylinder":
        T1.Text = .p(1).x: T2.Text = .p(1).y: T3.Text = .p(1).z
        T4.Text = .r(1)
        T5.Text = .r(2)
      Case "Würfel":
        T1.Text = .p(1).x: T2.Text = .p(1).y: T3.Text = .p(1).z
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
    Call ViewRefresch                       'Anzeige aktualisieren
  End If
  If objmax = 0 Then cb1.Text = "Kugel"     'Default-Körper
  D3_Resize
End Sub

Private Sub Clear_All_Objects()             'Objektarray leeren

  If MsgBox("Wollen Sie wirklich alle Objekte entfernen?", 32 + 4, "FRAGE") = 6 Then
    
    objmax = 0                              'Objektarray dynamisch verkleinern
    akto = objmax
    ReDim Preserve obj(objmax)              'Dyn Array-Feld anlegen, WICHTIG: mit Preserve !!
                                            'sonst werden vorhandene Elemente gelöscht!
    Call ViewRefresch                       'Anzeige aktualisieren
    Call D3_Resize
  End If
End Sub

'**********************************************************************************************
'                    O b j e k t e   e i n f ü g e n / d a r s t e l l e n
'**********************************************************************************************
Private Sub OGrid() 'Neuerung erst seit Version 1.1 !! Raster = obj(0)
                    'Einfügen eines Grid-objektes vorbereiten
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen
ReDim Preserve obj(0)                       'Grid bzw Achsenkreuze = Objekt 0
With obj(0)
 ReDim .p(1)                                '(Ursprung)Punkt
 ReDim .r(1)                                'Abstand
 .typ = 0                                   'Objekt-Struktur füllen
 .bez = "Raster"
 .pov = "plane"                             'POV-Schluesselwort für Ebene
 '.p(1).x = Val(T1.Text): .p(1).y = Val(T2.Text): .p(1).z = Val(T3.Text)
 '.r(1) = Abs(T4.Text)                       'Rasterabstand
 .defcol = vbWhite                          'Standardfarbe weiß
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With

End Sub


Private Sub Kugel() 'Einfügen eines Kugel-objektes vorbereiten (POV-Object sphere)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen

With obj(akto)
 ReDim .p(1)                                '(Mittel)Punkt + Radius definieren die Kugel
 ReDim .r(1)
 .typ = 1                                   'Objekt-Struktur füllen
 .bez = "Kugel"
 .pov = "sphere"                            'POV-Schluesselwort
 .p(1).x = Val(T1.Text): .p(1).y = Val(T2.Text): .p(1).z = Val(T3.Text)
 .r(1) = Abs(T4.Text)                       'Radius
 .defcol = vbRed                            'Standardfarbe rot
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call drawKugel
End Sub


Private Sub drawKugel()                     'Zeichnet die 3 Ansichten in die Views
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

Private Sub Kegel() 'Einfügen eines Kegel-objektes vorbereiten (POV-Object sphere)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall Kegelspitze in gleicher
                    'x,y -Koordinate wie der Grundflächenmittelpunkt!!
With obj(akto)
 ReDim .p(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 2                                   'Objekt-Struktur füllen
 .bez = "Kegel"
 .pov = "cone"                              'POV-Schluesselwort
 .p(1).x = Val(T1.Text): .p(1).y = Val(T2.Text): .p(1).z = Val(T3.Text)
 .p(2).x = Val(T1.Text): .p(2).y = Val(T2.Text): .p(2).z = Val(T3.Text) + T5.Text
 .r(1) = Abs(T4.Text)                       'Radius
 .r(2) = T5.Text                            'Höhe
 .defcol = vbYellow                         'Standardfarbe gelb
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call drawKegel
End Sub

Private Sub drawKegel()                     'Zeichnet die 3 Ansichten in die Views
  
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

Private Sub Zylinder() 'Einfügen eines Zylinder-objektes vorbereiten (POV-Object cylinder)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall Zylinderspitze in gleicher
                    'x,y -Koordinate wie der Grundflächenmittelpunkt!!
With obj(akto)
 ReDim .p(2)                                'Grundflächen MittelPunkt
 ReDim .r(2)                                'Radius und Höhe
 .typ = 3                                   'Objekt-Struktur füllen
 .bez = "Zylinder"
 .pov = "cylinder"                          'POV-Schluesselwort
 .p(1).x = Val(T1.Text): .p(1).y = Val(T2.Text): .p(1).z = Val(T3.Text)
 .p(2).x = Val(T1.Text): .p(2).y = Val(T2.Text): .p(2).z = Val(T3.Text) + T5.Text
 .r(1) = Abs(T4.Text)                       'Radius
 .r(2) = T5.Text                            'Höhe
 .defcol = vbGreen                          'Standardfarbe grün
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call drawZylinder
End Sub

Private Sub drawZylinder()                     'Zeichnet die 3 Ansichten in die Views
  
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

Private Sub Wuerfel() 'Einfügen eines Würfel-Objektes vorbereiten (POV-Object box)
                    '1. Objektarray um Geometriedaten erweitern und mit Werten füllen
                    '2. am Bildschirm anzeigen (nur Sonderfall parall. Koordinatensystem)
With obj(akto)
 ReDim .p(2)                                'Grundflächen Punkt hinten links unten
 ReDim .r(1)                                'Kantenlänge
 .typ = 4                                   'Objekt-Struktur füllen
 .bez = "Würfel"
 .pov = "box"                               'POV-Schluesselwort
 .r(1) = Abs(T4.Text)                       'Kantenlänge
 .p(1).x = Val(T1.Text): .p(1).y = Val(T2.Text): .p(1).z = Val(T3.Text)
 .p(2).x = .p(1).x + .r(1): .p(2).y = .p(1).y + .r(1): .p(2).z = .p(1).z + .r(1)
 .defcol = vbBlue                           'Standardfarbe blau
 .texi = 0                                  'Index auf Texturarray (0=keine Textur)
End With
Call drawWuerfel
End Sub

Private Sub drawWuerfel()                     'Zeichnet die 3 Ansichten in die Views
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
Dim h As Single                             'Umrechnung Koordinaten -> ScaleKoordinaten
  
  With View(akti)                           'Aktueller View
  If .twist Then                            'Koordinatenachsen vertauscht!
    h = x: x = y: y = h                     '"Dreieckstausch"
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
  dwl -1, 0, 1, 0, Farbe                    'Achsenkreuz = Koordinatenursprung
  dwl 0, -1, 0, 1, Farbe
  
  If akti = ixz Or akti = iyz Then
    For j = -m To m
      .pic.PSet (j * .mx + .mx / 2 + .x0, .y0), Farbe
    Next j
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
Dim h As Single                                     'Hilfsvariable für Dreieckstausch

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
    Tx.Text = p2x(y)                                'Koordinatenumrechnung u. Anzeige
    Ty.Text = p2y(x)                                'twist =TRUE x und y vertauscht!!!!
    Tz.Text = ""                                    'aktuelle z-position nicht anzeigen
  End With
End Sub

Private Sub xy_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixy)
    akti = ixy                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        T1.Text = p2x(y)                            'Koordinaten waehrend Tastendruck
        T2.Text = p2y(x)                            'twist = TRUE x und y vertauscht!!!!
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

Private Sub yz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    Ty.Text = p2x(x)                                'aktuelle Koordinatenposition der Mouse
    Tz.Text = p2y(y)
    Tx.Text = ""                                    'x-Koordinate nicht anzeigen
  End With
End Sub

Private Sub yz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(iyz)
    akti = iyz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        T2.Text = p2x(x)                            'Koordinaten waehrend Tastendruck
        T3.Text = p2y(y)
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub

Private Sub xz_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    Tx.Text = p2x(x)                                'Koordinatenanzeige
    Tz.Text = p2y(y)
    Ty.Text = ""                                    'y-Koordinate nicht anzeigen
  End With
End Sub

Private Sub xz_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
  With View(ixz)
    akti = ixz                                      'aktuellen View bekanntgeben
    Select Case Button
      Case Bmsli:                                   'linker MouseButton
        T1.Text = p2x(x)                            'Koordinaten waehrend Tastendruck
        T3.Text = p2y(y)
      Case Bmsre:                                   'rechter MouseButton
      Case Bmsmi:                                   'mittlerer MouseButton
    End Select
  End With
End Sub



'**********************************************************************************************
'                                  P O V - E x p o r t
'**********************************************************************************************
'Die Szenendatei für den Raytracer POV (persistence of vision) besteht aus einer Textdatei mit
'Anweisungen für die Erstellung von Objekten, deren Position und deren Lage im Raum, sowie deren
'Oberflächenaussehen und Beleuchtung.

Private Sub Def_Pov()                       'Standardausgaben in die POV-Datei

With Text1
 .Text = ""                                 'Textfeld löschen
 appCr "//=========================================================="
 appCr "// 3D-Baukasten Version 1.2 (c) 2002 H.Kleber "
 appCr "// POV 2 Datei Datum: " & Date & " Zeit: " & Time
 appCr "//=========================================================="
 .Text = .Text & T_incl.Text '#inlude Befehle aus dem unsichtb. Textfeld T_incl kopieren
 appCr ""
 appCr "// Standardeinstellungen: "
 appCr "background {color White}"
 appCr "camera {location <15,8,-15> look_at <0,0,0>}"
 appCr "light_source {<5,10,-20> color White}" & vbCrLf
 appCr "plane {<0,1,0> 0 pigment {checker color White color Black} finish {ambient 0.3}}"
 appCr "plane {<1,0,0> 0 pigment {color White} finish {ambient 0.3}}"
 appCr "plane {<0,0,1> 0 pigment {color White} finish {ambient 0.3}}"
 
End With
End Sub

Private Sub BPOV_Comp_Click()
  Call Def_Pov                              'Standardeinstellungen übernehmen
  Call PovGen                               'eingefügte Körper übersetzen
  BPov_Save.Enabled = True                   'jetzt erst speichern ermöglichen
End Sub

Private Sub app(ptxt As String)             'Ausgabe auf Textfeld bzw. Datei
 Text1.Text = Text1.Text & ptxt             'String jeweils anhängen
End Sub

Private Sub appCr(ptxt As String)           'Ausgabe auf Textfeld bzw. Datei
 Text1.Text = Text1.Text & ptxt & vbCrLf & vbCrLf   'String jeweils anhängen + CR LF
End Sub

'*****************************  Pov-Objekte generieren  ********************************

Private Sub PovGen()                        'POV-Skript generieren
Dim i, j As Integer

If objmax > 0 Then                          'Objektarray nicht leer
  For akto = 1 To UBound(obj)               'von Anfang bis Ende
   With obj(akto)
     Select Case .typ
       Case 1: Call povKugel                'Sphere-Objekt ausgeben
       Case 2: Call povKegel
       Case 3: Call povZylinder
       Case 4: Call povWuerfel
       
       Case Else: Debug.Print "POV-Objekt unzulässig Typ:" & .typ, .bez
     End Select
   End With
  Next akto
End If
End Sub

Private Sub pov_p(ByVal ind%)               'Punktkoordinaten ausgeben <x,y,z>

If akto > 0 And akto <= UBound(obj) And ind > 0 Then
  With obj(akto)                            'Aktuelles Objekt Punktkoordinaten ausgeben
    
    app " <" & .p(ind).y & "," & .p(ind).z & "," & -.p(ind).x & "> "
                                            'Koordinatentransformation!!!!  GZ -> POV
  End With                                  '=============================
 End If                                     'x -> -z , y -> x , z -> y
End Sub

Private Function modulo(ByVal x As Long, n As Long) As Long
Dim h As Single
   h = x / n
   modulo = Int((h - Int(h)) * n)
   'Debug.Print "modulo "; x; n; modulo
End Function

Private Sub povRGB(ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
                                            'pov RGB-Werte jeweils 0..1
  app " color red " & Int(r / 255) & " green " & Int(g / 255) & " blue " & Int(b / 255)
End Sub

Private Sub L2RGB(ByVal col As Long)        'LongInteger => GRB Werten
  Dim r, g, b As Integer                    'einzelne Bytes aus long-Variable dividieren
  Debug.Print "RGB "; col                   'Testausdruck
    r = modulo(col, 256)                    'niederwertigstes Byte = Rot
    b = Int(col / 65536)                    'höchstwertigstes Byte = Blau
    g = (modulo(col, 65536) - r) / 256      'mittleres Byte = Grün
    Call povRGB(r, g, b)
  'Debug.Print r; G; b
End Sub

Private Sub povKugel()                          'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kugel
    app .pov & "{": pov_p (1)                   'Mittelpunkt
    app "," & .r(1)                             'Radius
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
End Sub

Private Sub povKegel()                          'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .pov & "{": pov_p (1)                   'Mittelpunkt der Grundfläche
    app "," & .r(1) & ",": pov_p (2): app ",0"  'Spitze
    app " pigment {"                            'Farbe
    L2RGB .defcol
    'povRGB 0, 255,255
    appCr " }}"
  End With
End Sub

Private Sub povZylinder()                       'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Kegel
    app .pov & "{": pov_p (1): app ","          'Mittelpunkte der Grundfläche
    pov_p (2)                                   'Mittelpunkte der Deckfläche
    app "," & .r(1)                             'Radius
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
End Sub

Private Sub povWuerfel()                        'Ausgabe der Struktur für pov-Szenendatei

  With obj(akto)                                'Aktuelles Objekt
    appCr "// Objekt: " & akto & " " & .bez     'Würfel
    app .pov & "{": pov_p (1): app ","          'Eckpunkte der Grundfläche
    pov_p (2)                                   'Eckpunkte der Deckfläche
    app " pigment {"                            'Farbe
    L2RGB .defcol
    appCr " }}"
  End With
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
Private Sub BPov_Save_Click()

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
Private Sub RayTrace()

  Call BPOV_Comp_Click                          'Exportdatei erstellen
  Call BPov_Save_Click                          'in Ausgabedatei schreiben
                                                'Abfrage
  If MsgBox("3D-Ansicht anzeigen? ", vbOKCancel + 64, "Ausgabe") = vbOK Then
     'Debug.Print "RayTrace ", Tpov_Home & "start.bat"
     Shell Tpov_Home & "start.bat", vbNormalFocus
  End If                                        'Batchdatei im PovHome_Directory
End Sub


Private Sub BScreen_Click()                     'temporäre Bildschirmeinstellungen
                                                'vornehmen
  Call Lock_Datei_Def                           'Sperren der Einstellungskarte
    Shell "screen.exe", vbNormalFocus
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

Private Sub D3_Resize()
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
      d3.ForeColor = obj(i).defcol
      rotation CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), alpha, 0, 0
      show_3D d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(d3.ScaleWidth \ 2), CInt(d3.ScaleHeight \ 2)
     Next i
End Sub
Private Sub Zoomed_d3()                         'D3 View auf vier Felder vergrößern bzw verkleinern
  If zoomed_View = 0 Then
      Form2.Hide                                'Werkzeugleiste verstecken
      d3.Top = 38: d3.Left = 44                 'fertig machen zum Zoomen !
      d3.Height = 500: d3.Width = 500           'vergrössern
      zoomed_View = 4
  ElseIf zoomed_View = 4 Then                   'verkleinern
      Form2.Show
      d3.Top = 288: d3.Left = 44
      d3.Height = 250: d3.Width = 250
      zoomed_View = 0
  End If
   For i = 0 To objmax
    show_3D d3.hDC, CInt(UBound(D3obj(i).KO)), D3obj(i).KO(0), CInt(d3.ScaleWidth \ 2), CInt(d3.ScaleHeight \ 2)
   Next i
End Sub


Private Sub File1_Click()                       'Listenauswahl gedrückt
    TDatei.Text = File1.Path & "\" & File1.filename
End Sub

Private Sub Def_Bilder()                       'Bild auswählen

  On Error Resume Next
  File1.ListIndex = 0
  File1.Pattern = "*.JPG"                      'zulässige Dateitypen
  File1.Path = Tpov_Home.Text & "Bilder"       'Verzeichnis der Bilder
  TDatei.Text = File1.Path & "\" & File1.filename
End Sub

Sub BBildAnz_Click()                            'Anzeigen-Button

 TDatei.Text = File1.Path & "\" & File1.filename
 Form2.Hide                                     'Werkzeugleiste verstecken
  If File1.filename <> "" Then
    Form3.Picture = LoadPicture(TDatei)         'Bild laden
  Else
    File1.ListIndex = 0
    File1_Click
    Form3.Picture = LoadPicture(TDatei)         'erstes Bild in der Liste
  End If
  Form3.Show                                    'Bild anzeigen
End Sub

Private Sub BBildBeenden_Click()
  SSTab1.Tab = 0
  Form2.Show
End Sub
'******************************************** EOF *********************************************


