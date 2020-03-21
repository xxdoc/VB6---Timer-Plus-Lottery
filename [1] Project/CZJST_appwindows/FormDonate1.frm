VERSION 5.00
Begin VB.Form FormDonate1 
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
   Icon            =   "FormDonate1.frx":0000
   LinkTopic       =   "FormAbout"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "FormDonate1.frx":0CB2
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
   Begin VB.Frame FrameSponsorsFromAlipay 
      Appearance      =   0  'Flat
      BackColor       =   &H00D0D0D0&
      Caption         =   "Sponsors from Alipay"
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
      Height          =   6525
      Left            =   6615
      TabIndex        =   4
      Top             =   945
      Width           =   6105
      Begin VB.TextBox TextboxSponsorsFromAlipay 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
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
         Height          =   5670
         Left            =   315
         Locked          =   -1  'True
         MousePointer    =   3  'I-Beam
         MultiLine       =   -1  'True
         TabIndex        =   5
         Text            =   "FormDonate1.frx":0E04
         Top             =   525
         Width           =   5460
      End
   End
   Begin VB.Frame FrameAlipayQRCode 
      Appearance      =   0  'Flat
      BackColor       =   &H00D0D0D0&
      Caption         =   "Alipay QR Code"
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
      Height          =   6525
      Left            =   210
      TabIndex        =   2
      Top             =   945
      Width           =   6105
      Begin VB.Image ImageAlipayQRCode 
         Appearance      =   0  'Flat
         Height          =   4425
         Left            =   840
         Picture         =   "FormDonate1.frx":0E5C
         Stretch         =   -1  'True
         Top             =   1680
         Width           =   4425
      End
      Begin VB.Label LabelAlipayQRCodeNote 
         Appearance      =   0  'Flat
         BackColor       =   &H000000FF&
         BackStyle       =   0  'Transparent
         Caption         =   "Please open Alipay on your smartphone and scan this QR code. Please feel free for the amount. Thanks very much for your support."
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
         Height          =   1005
         Left            =   315
         TabIndex        =   3
         Top             =   525
         Width           =   5400
      End
   End
   Begin VB.Label LabelDonate1Title 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "DONATE:  Sponsor via Alipay"
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
Attribute VB_Name = "FormDonate1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'[] DIM []

Public windowanimationtargettop As Integer
Public windowanimationtargetleft As Integer
Public windowanimationtargetwidth As Integer
Public windowanimationtargetheight As Integer

'[] COMMANDS []

    Public Sub CmdClose_Click()
        Me.Hide
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

