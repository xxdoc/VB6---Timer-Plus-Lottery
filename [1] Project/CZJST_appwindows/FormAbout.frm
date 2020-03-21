VERSION 5.00
Begin VB.Form FormAbout 
   Appearance      =   0  'Flat
   BackColor       =   &H00D0D0D0&
   BorderStyle     =   0  'None
   Caption         =   "Timer+Lottery"
   ClientHeight    =   7785
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12930
   FillColor       =   &H000000FF&
   ForeColor       =   &H000000FF&
   Icon            =   "FormAbout.frx":0000
   LinkTopic       =   "FormAbout"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "FormAbout.frx":0CB2
   MousePointer    =   99  'Custom
   ScaleHeight     =   7785
   ScaleWidth      =   12930
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '所有者中心
   Begin VB.Timer TimerWindowAnimation 
      Interval        =   1
      Left            =   12600
      Top             =   7455
   End
   Begin VB.CommandButton CmdClose 
      Cancel          =   -1  'True
      Caption         =   "Close"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   11235
      TabIndex        =   1
      Top             =   210
      Width           =   1485
   End
   Begin VB.Frame FrameCopyright 
      Appearance      =   0  'Flat
      BackColor       =   &H00D0D0D0&
      Caption         =   "Copyright"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1170
      Left            =   210
      TabIndex        =   34
      Top             =   6300
      Width           =   12510
      Begin VB.Label LabelCopyright2 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "SAM TOKI STUDIO is a trademark of CZJ Software Technologies (CZJST) Inc. in the P.R.C and other countries."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   36
         Top             =   735
         Width           =   11880
      End
      Begin VB.Label LabelCopyright1 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "TM && (C) 2015-2019 SAM TOKI STUDIO. All rights reserved."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   35
         Top             =   420
         Width           =   11880
      End
   End
   Begin VB.Frame FrameAboutAuthor 
      Appearance      =   0  'Flat
      BackColor       =   &H00D0D0D0&
      Caption         =   "About the author"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   5160
      Left            =   6615
      TabIndex        =   18
      Top             =   945
      Width           =   6105
      Begin VB.CommandButton CmdAboutAuthorDonate1 
         Caption         =   ">"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   5330
         TabIndex        =   33
         Top             =   4000
         Width           =   420
      End
      Begin VB.CommandButton CmdAboutAuthorGitHub 
         Caption         =   ">"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   5330
         TabIndex        =   30
         Top             =   3100
         Width           =   420
      End
      Begin VB.CommandButton CmdAboutAuthorEmail 
         Caption         =   ">"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   5330
         TabIndex        =   27
         Top             =   2600
         Width           =   420
      End
      Begin VB.TextBox TextboxAboutAuthorGitHub 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   29
         Text            =   "https://github.com/SamToki"
         Top             =   3100
         Width           =   3105
      End
      Begin VB.TextBox TextboxAboutAuthorEmail 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   26
         Text            =   "15759438158@139.com"
         Top             =   2600
         Width           =   3105
      End
      Begin VB.TextBox TextboxAboutAuthorStatus 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   840
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   24
         Text            =   "FormAbout.frx":0E04
         Top             =   1530
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAuthorOrganization 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   22
         Text            =   "SAM TOKI STUDIO of CZJST Inc."
         Top             =   1000
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAuthorAuthor 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   20
         Text            =   "Sam Toki"
         Top             =   480
         Width           =   3525
      End
      Begin VB.Label LabelAboutAuthorDonate1 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Sponsor via Alipay..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   2205
         TabIndex        =   32
         Top             =   4095
         Width           =   3090
      End
      Begin VB.Label LabelAboutAuthorDonate 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Donate:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   31
         Top             =   4095
         Width           =   1725
      End
      Begin VB.Label LabelAboutAuhtorStatus 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Status:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   23
         Top             =   1575
         Width           =   1725
      End
      Begin VB.Label LabelAboutAuthorGitHub 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "GitHub:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   28
         Top             =   3150
         Width           =   1725
      End
      Begin VB.Label LabelAboutAuthorEmail 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "E-mail:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   25
         Top             =   2625
         Width           =   1725
      End
      Begin VB.Label LabelAboutAuthorOrganization 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Organization:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   21
         Top             =   1050
         Width           =   1725
      End
      Begin VB.Label LabelAboutAuthorAuthor 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Author:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   19
         Top             =   525
         Width           =   1725
      End
   End
   Begin VB.Frame FrameAboutApp 
      Appearance      =   0  'Flat
      BackColor       =   &H00D0D0D0&
      Caption         =   "About this application"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   5160
      Left            =   210
      TabIndex        =   2
      Top             =   945
      Width           =   6105
      Begin VB.TextBox TextboxAboutAppOpenSourceLicense 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   3360
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   17
         Text            =   "CC BY-NC 4.0"
         Top             =   4480
         Width           =   2370
      End
      Begin VB.TextBox TextboxAboutAppHistory 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   14
         Text            =   "First version built on Fri, Mar 24, 2017"
         Top             =   3100
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAppBuildDate 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   12
         Text            =   "Mon, Mar 9, 2020"
         Top             =   2600
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAppPlatform 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   10
         Text            =   "For Windows 10 Only"
         Top             =   2050
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAppLanguages 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   8
         Text            =   "English (United States) Only"
         Top             =   1530
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAppVersion 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   6
         Text            =   "v8.02 Release Version"
         Top             =   1000
         Width           =   3525
      End
      Begin VB.TextBox TextboxAboutAppName 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   420
         Left            =   2205
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         TabIndex        =   4
         Text            =   "Timer+Lottery"
         Top             =   480
         Width           =   3525
      End
      Begin VB.Label LabelAboutAppPlatform 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Platform:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   9
         Top             =   2100
         Width           =   1725
      End
      Begin VB.Label LabelAboutAppCommercial 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Commercial use of this computer software is strictly prohibited."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   735
         Left            =   315
         TabIndex        =   15
         Top             =   3780
         Width           =   5400
      End
      Begin VB.Label LabelAboutAppOpenSourceLicense 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Open Source License:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   16
         Top             =   4515
         Width           =   2880
      End
      Begin VB.Label LabelAboutAppBuildDate 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Build Date:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   11
         Top             =   2625
         Width           =   1725
      End
      Begin VB.Label LabelAboutAppHistory 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "History:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   13
         Top             =   3150
         Width           =   1725
      End
      Begin VB.Label LabelAboutAppLanguages 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Languages:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   7
         Top             =   1575
         Width           =   1725
      End
      Begin VB.Label LabelAboutAppVersion 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Version:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   5
         Top             =   1050
         Width           =   1725
      End
      Begin VB.Label LabelAboutAppName 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Name:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   315
         TabIndex        =   3
         Top             =   525
         Width           =   1725
      End
   End
   Begin VB.Label LabelAboutTitle 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "ABOUT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   645
      Left            =   315
      TabIndex        =   0
      Top             =   210
      Width           =   10515
   End
   Begin VB.Shape ShapeEdge 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00808080&
      BorderWidth     =   3
      FillColor       =   &H000000FF&
      Height          =   7785
      Left            =   0
      Top             =   0
      Width           =   12930
   End
End
Attribute VB_Name = "FormAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'[] DIM []

Public windowanimationtargettop As Integer
Public windowanimationtargetleft As Integer
Public windowanimationtargetwidth As Integer
Public windowanimationtargetheight As Integer

    Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
        (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, _
         ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
    Private Const SW_SHOW = 5

'[] COMMANDS []

    Public Sub CmdClose_Click()
        Me.Hide
    End Sub

    Public Sub CmdAboutAuthorEmail_Click()
        Call ShellExecute(Me.hWnd, "open", "mailto:15759438158@139.com", "", "", SW_SHOW)
    End Sub
    Public Sub CmdAboutAuthorGitHub_Click()
        Call ShellExecute(Me.hWnd, "open", "https://github.com/SamToki", "", "", SW_SHOW)
    End Sub

    Public Sub CmdAboutAuthorDonate1_Click()
        FormDonate1.Show
        FormDonate1.Top = (Screen.Height / 2)
        FormDonate1.Left = (Screen.Width / 2)
        FormDonate1.Width = 0
        FormDonate1.Height = 0
        FormDonate1.windowanimationtargettop = (Screen.Height / 2) - (7785 / 2)
        FormDonate1.windowanimationtargetleft = (Screen.Width / 2) - (12930 / 2)
        FormDonate1.windowanimationtargetwidth = 12930
        FormDonate1.windowanimationtargetheight = 7785
    End Sub

'[] ANIMATIONS []

    Public Sub TimerWindowAnimation_Timer()
        Select Case FormMainWindow.windowanimationswitch
            Case True
                If Me.Top > windowanimationtargettop Then Me.Top = Me.Top - Abs(Me.Top - windowanimationtargettop) / 4
                If Me.Top < windowanimationtargettop Then Me.Top = Me.Top + Abs(Me.Top - windowanimationtargettop) / 4
                If Me.Left > windowanimationtargetleft Then Me.Left = Me.Left - Abs(Me.Left - windowanimationtargetleft) / 4
                If Me.Left < windowanimationtargetleft Then Me.Left = Me.Left + Abs(Me.Left - windowanimationtargetleft) / 4
                If Me.Width > windowanimationtargetwidth Then Me.Width = Me.Width - Abs(Me.Width - windowanimationtargetwidth) / 4
                If Me.Width < windowanimationtargetwidth Then Me.Width = Me.Width + Abs(Me.Width - windowanimationtargetwidth) / 4
                If Me.Height > windowanimationtargetheight Then Me.Height = Me.Height - Abs(Me.Height - windowanimationtargetheight) / 4
                If Me.Height < windowanimationtargetheight Then Me.Height = Me.Height + Abs(Me.Height - windowanimationtargetheight) / 4
                If Abs(Me.Top - windowanimationtargettop) < 10 Then Me.Top = windowanimationtargettop
                If Abs(Me.Left - windowanimationtargetleft) < 10 Then Me.Left = windowanimationtargetleft
                If Abs(Me.Width - windowanimationtargetwidth) < 10 Then Me.Width = windowanimationtargetwidth
                If Abs(Me.Height - windowanimationtargetheight) < 10 Then Me.Height = windowanimationtargetheight
            Case False
                Me.Top = windowanimationtargettop
                Me.Left = windowanimationtargetleft
                Me.Width = windowanimationtargetwidth
                Me.Height = windowanimationtargetheight
        End Select
    End Sub
