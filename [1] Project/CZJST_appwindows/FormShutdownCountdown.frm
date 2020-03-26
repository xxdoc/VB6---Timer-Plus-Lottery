VERSION 5.00
Begin VB.Form FormShutdownCountdown 
   Appearance      =   0  'Flat
   BackColor       =   &H00D0D0D0&
   BorderStyle     =   0  'None
   Caption         =   "Timer+Lottery"
   ClientHeight    =   2745
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12510
   FillColor       =   &H000000FF&
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H000000FF&
   Icon            =   "FormShutdownCountdown.frx":0000
   LinkTopic       =   "FormShutdownCountdown"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "FormShutdownCountdown.frx":0CB2
   MousePointer    =   99  'Custom
   Moveable        =   0   'False
   ScaleHeight     =   2745
   ScaleWidth      =   12510
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.Timer TimerWindowAnimation 
      Interval        =   1
      Left            =   12180
      Top             =   2415
   End
   Begin VB.CommandButton CmdCancel 
      Cancel          =   -1  'True
      Caption         =   "CANCEL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   1995
      TabIndex        =   3
      Top             =   1890
      Width           =   5055
   End
   Begin VB.CommandButton CmdOK 
      Caption         =   "SHUT DOWN NOW (30)"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   7245
      TabIndex        =   4
      Top             =   1890
      Width           =   5055
   End
   Begin VB.Timer TimerShutdownCountdown 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   7350
      Top             =   2415
   End
   Begin VB.Label LabelHinttextB 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "HintTextB Abg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   540
      Left            =   315
      TabIndex        =   2
      Top             =   1155
      Width           =   11880
   End
   Begin VB.Label LabelAppTitle 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "Timer+Lottery¡¡v8.02¡¡by Sam Toki"
      ForeColor       =   &H00808080&
      Height          =   255
      Left            =   160
      TabIndex        =   0
      Top             =   105
      Width           =   10005
   End
   Begin VB.Label LabelHinttextA 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "HintTextA Abg"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   540
      Left            =   315
      TabIndex        =   1
      Top             =   525
      Width           =   11880
   End
   Begin VB.Shape ShapeEdge 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00808080&
      BorderWidth     =   3
      FillColor       =   &H000000FF&
      Height          =   2745
      Left            =   0
      Top             =   0
      Width           =   12510
   End
End
Attribute VB_Name = "FormShutdownCountdown"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'  ---------------------------------------------------------------------------------------------------------------------

'[] DECLARATIONS []

Public windowanimationtargettop As Integer
Public windowanimationtargetleft As Integer
Public windowanimationtargetwidth As Integer
Public windowanimationtargetheight As Integer

    'ALWAYS FRONT (CODES FROM INTERNET)
        Dim retValue As Long
        Private Declare Function SetWindowPos Lib "user32" ( _
            ByVal hWnd As Long, _
            ByVal hWndInsertAfter As Long, _
            ByVal X As Long, ByVal Y As Long, _
            ByVal cX As Long, ByVal cY As Long, _
            ByVal wFlags As Long _
            ) As Long
            Const HWND_TOPMOST = -1
            Const SWP_SHOWWINDOW = &H40

'  ---------------------------------------------------------------------------------------------------------------------

'[] LOAD []

    Public Sub Form_Load()
        'ALWAYS FRONT (CODES FROM INTERNET)
        retValue = SetWindowPos(Me.hWnd, HWND_TOPMOST, Me.CurrentX, Me.CurrentY, 1, 1, SWP_SHOWWINDOW)
    End Sub

'  ---------------------------------------------------------------------------------------------------------------------

'[] TIMERS []

    Public Sub TimerShutdownCountdown_Timer()
        FormMainWindow.shutdowncountdowntimeout = FormMainWindow.shutdowncountdowntimeout - 1
        Select Case FormMainWindow.shutdowncountdowntype
            Case "Shutdown"
                CmdOK.Caption = "SHUT DOWN NOW (" & FormMainWindow.shutdowncountdowntimeout & ")"
            Case "Restart"
                CmdOK.Caption = "RESTART NOW (" & FormMainWindow.shutdowncountdowntimeout & ")"
        End Select
        If FormMainWindow.shutdowncountdowntimeout <= 0 Then Call CmdOK_Click
    End Sub

'[] COMMANDS []

    Public Sub CmdCancel_Click()
        TimerShutdownCountdown.Enabled = False
        FormMainWindow.Enabled = True: FormMiniMode.Enabled = True

        windowanimationtargettop = 0
        windowanimationtargetleft = (Screen.Width / 2) - (12510 / 2)
        windowanimationtargetwidth = 12510
        windowanimationtargetheight = 0
    End Sub
    Public Sub CmdOK_Click()
        Select Case FormMainWindow.shutdowncountdowntype
            Case "Shutdown"
                LabelHinttextA.Caption = "Shutting down..."
                Shell "cmd.exe /c shutdown -s -t 0", vbHide
            Case "Restart"
                LabelHinttextA.Caption = "Restarting computer..."
                Shell "cmd.exe /c shutdown -r -t 0", vbHide
        End Select

        CmdCancel.Visible = False
        CmdOK.Visible = False
    End Sub

'  ---------------------------------------------------------------------------------------------------------------------

'[] ANIMATIONS []

    Public Sub TimerWindowAnimation_Timer()
        Select Case FormMainWindow.windowanimationswitch
            Case True
                If Me.Top > windowanimationtargettop Then Me.Top = Me.Top - Abs(Me.Top - windowanimationtargettop) / 8  'This case must be slower than others...
                If Me.Top < windowanimationtargettop Then Me.Top = Me.Top + Abs(Me.Top - windowanimationtargettop) / 8
                If Me.Left > windowanimationtargetleft Then Me.Left = Me.Left - Abs(Me.Left - windowanimationtargetleft) / 8
                If Me.Left < windowanimationtargetleft Then Me.Left = Me.Left + Abs(Me.Left - windowanimationtargetleft) / 8
                If Me.Width > windowanimationtargetwidth Then Me.Width = Me.Width - Abs(Me.Width - windowanimationtargetwidth) / 8
                If Me.Width < windowanimationtargetwidth Then Me.Width = Me.Width + Abs(Me.Width - windowanimationtargetwidth) / 8
                If Me.Height > windowanimationtargetheight Then Me.Height = Me.Height - Abs(Me.Height - windowanimationtargetheight) / 8
                If Me.Height < windowanimationtargetheight Then Me.Height = Me.Height + Abs(Me.Height - windowanimationtargetheight) / 8
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

        If windowanimationtargetheight = 0 And Me.Height < 100 Then Me.Hide  'This case must be slower than others...
    End Sub
