VERSION 5.00
Begin VB.Form FormBigFloatingClock 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Timer+Lottery"
   ClientHeight    =   1275
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2430
   FillColor       =   &H000000FF&
   BeginProperty Font 
      Name            =   "宋体"
      Size            =   11.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   Icon            =   "FormBigFloatingClock.frx":0000
   LinkTopic       =   "FormBigFloatingClock"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MouseIcon       =   "FormBigFloatingClock.frx":0CB2
   MousePointer    =   99  'Custom
   Moveable        =   0   'False
   ScaleHeight     =   1275
   ScaleWidth      =   2430
   ShowInTaskbar   =   0   'False
   Begin VB.Timer TimerBigFloatingClockAutoHide 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   840
      Top             =   0
   End
   Begin VB.Timer TimerBigFloatingClockClock 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.Timer TimerBigFloatingClockOclockBlink 
      Enabled         =   0   'False
      Interval        =   250
      Left            =   420
      Top             =   0
   End
   Begin VB.Label LabelMin 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Bahnschrift"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1480
      TabIndex        =   2
      ToolTipText     =   "Double click to hide the Big Floating Clock"
      Top             =   315
      Width           =   825
   End
   Begin VB.Label LabelHour 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Bahnschrift"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   315
      TabIndex        =   0
      ToolTipText     =   "Double click to open Main Window"
      Top             =   315
      Width           =   825
   End
   Begin VB.Label LabelDot 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   ":"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1050
      TabIndex        =   1
      Top             =   300
      Width           =   540
   End
   Begin VB.Label LabelHourShadow 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Bahnschrift"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   855
      Left            =   345
      TabIndex        =   3
      ToolTipText     =   "双击以打开主窗口"
      Top             =   345
      Width           =   825
   End
   Begin VB.Label LabelMinShadow 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "00"
      BeginProperty Font 
         Name            =   "Bahnschrift"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   855
      Left            =   1510
      TabIndex        =   5
      ToolTipText     =   "双击以隐藏大悬浮时钟（不会停止运行本 App）"
      Top             =   345
      Width           =   825
   End
   Begin VB.Label LabelDotShadow 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   ":"
      BeginProperty Font 
         Name            =   "Arial Rounded MT Bold"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   855
      Left            =   1080
      TabIndex        =   4
      Top             =   330
      Width           =   540
   End
End
Attribute VB_Name = "FormBigFloatingClock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'[] DIM []

Option Explicit

Public bigfloatingclockoclockblinkongoing As Boolean
Public bigfloatingclockoclockblinkrepeatedtimes As Integer
Public bigfloatingclockautohidetimeout As Integer

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

'BACKGROUND TRANSPARENT (CODES FROM INTERNET)
    Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
    Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
    Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
    Private Const LWA_COLORKEY = &H1
    Private Const LWA_ALPHA = &H2
    Private Const GWL_EXSTYLE = (-20)
    Private Const WS_EX_LAYERED = &H80000
    'WARNING: If this code is enabled, FormBigFloatingClock will be uncontrollable.
    'Private Const WS_EX_TRANSPARENT As Long = &H20&

'================================================================================

'================================================================================

'[] LOAD []

    Public Sub Form_Load()
        'ALWAYS FRONT (CODES FROM INTERNET)
            retValue = SetWindowPos(Me.hWnd, HWND_TOPMOST, Me.CurrentX, Me.CurrentY, 160, 80, SWP_SHOWWINDOW)
        'BACKGROUND TRANSPARENT (CODES FROM INTERNET)
            Me.BackColor = &H0
            Dim rtn As Long
            Dim BorderStyler
            BorderStyler = 0
            rtn = GetWindowLong(hWnd, GWL_EXSTYLE)
            rtn = rtn Or WS_EX_LAYERED 'Or WS_EX_TRANSPARENT 'WARNING: If this code is enabled, FormBigFloatingClock will be uncontrollable.
            SetWindowLong hWnd, GWL_EXSTYLE, rtn
            SetLayeredWindowAttributes hWnd, &H0, 0, LWA_COLORKEY
        'LOCATE POSITION
            Me.Width = 2430
            Me.Height = 1275
            Me.Left = 0
            Me.Top = 0

        bigfloatingclockoclockblinkongoing = False
        bigfloatingclockoclockblinkrepeatedtimes = 0
    End Sub

'[] TIMERS []

    Public Sub TimerBigFloatingClockClock_Timer()
        If FormMainWindow.bigfloatingclockswitch = False Then FormBigFloatingClock.Hide: Exit Sub

        '(CORE) DISPLAY CLOCK
            Select Case FormMainWindow.bigfloatingclock24hrformatswitch
                Case True
                    LabelHour.Caption = Hour(Time)
                    LabelHourShadow.Caption = Hour(Time)
                Case False
                    Select Case Hour(Time)
                        Case 0
                            LabelHour.Caption = "12"
                            LabelHourShadow.Caption = "12"
                        Case Is >= 1
                            If Hour(Time) > 12 Then
                                LabelHour.Caption = Hour(Time) - 12
                                LabelHourShadow.Caption = Hour(Time) - 12
                            Else
                                LabelHour.Caption = Hour(Time)
                                LabelHourShadow.Caption = Hour(Time)
                            End If
                    End Select
            End Select
            LabelMin.Caption = Format(Minute(Time), "00")
            LabelMinShadow.Caption = Format(Minute(Time), "00")

        If FormMainWindow.bigfloatingclockoclockblinkswitch = True And Minute(Time) = 0 And Second(Time) = 0 Then
            'CAUTION: TEST ONLY!!
            'If FormMainWindow.bigfloatingclockoclockblinkswitch = True And Second(Time) = 0 Then
            bigfloatingclockoclockblinkrepeatedtimes = 0
            TimerBigFloatingClockOclockBlink.Enabled = True
        End If
    End Sub

    Public Sub TimerBigFloatingClockOclockBlink_Timer()
        bigfloatingclockoclockblinkongoing = True
        Select Case bigfloatingclockoclockblinkrepeatedtimes
            Case 9 'ending of clock blink
                If LabelHour.Visible = False Then
                    LabelHour.Visible = True
                    LabelMin.Visible = True
                    LabelDot.Visible = True
                    If FormMainWindow.bigfloatingclockshadowswitch = True Then
                        LabelHourShadow.Visible = True
                        LabelMinShadow.Visible = True
                        LabelDotShadow.Visible = True
                    Else
                        LabelHourShadow.Visible = False
                        LabelMinShadow.Visible = False
                        LabelDotShadow.Visible = False
                    End If
                End If
                TimerBigFloatingClockOclockBlink.Enabled = False
                bigfloatingclockoclockblinkongoing = False
                bigfloatingclockoclockblinkrepeatedtimes = 0
                Exit Sub
            Case Else
                Select Case LabelHour.Visible
                    Case True
                        LabelHour.Visible = False
                        LabelMin.Visible = False
                        LabelDot.Visible = False
                        LabelHourShadow.Visible = False
                        LabelMinShadow.Visible = False
                        LabelDotShadow.Visible = False
                    Case False
                        LabelHour.Visible = True
                        LabelMin.Visible = True
                        LabelDot.Visible = True
                        If FormMainWindow.bigfloatingclockshadowswitch = True Then
                            LabelHourShadow.Visible = True
                            LabelMinShadow.Visible = True
                            LabelDotShadow.Visible = True
                        Else
                            LabelHourShadow.Visible = False
                            LabelMinShadow.Visible = False
                            LabelDotShadow.Visible = False
                        End If
                End Select
                bigfloatingclockoclockblinkrepeatedtimes = bigfloatingclockoclockblinkrepeatedtimes + 1
        End Select
    End Sub
    
    Public Sub TimerBigFloatingClockAutoHide_Timer()
        If bigfloatingclockautohidetimeout > 0 Then
            bigfloatingclockautohidetimeout = bigfloatingclockautohidetimeout - 1
        Else
            LabelHour.Visible = True
            LabelMin.Visible = True
            LabelDot.Visible = True
            If FormMainWindow.bigfloatingclockshadowswitch = True Then
                LabelHourShadow.Visible = True
                LabelMinShadow.Visible = True
                LabelDotShadow.Visible = True
            Else
                LabelHourShadow.Visible = False
                LabelMinShadow.Visible = False
                LabelDotShadow.Visible = False
            End If
            TimerBigFloatingClockAutoHide.Enabled = False
            bigfloatingclockautohidetimeout = 50
        End If
    End Sub

    'CAUTION: This Timer has been disabled.
    Public Sub TimerBigFloatingClockRefresh_Timer__DISBLED__()
        '__DISBLED__TimerBigFloatingClockRefresh.Interval = 60000
        'ALWAYS FRONT (CODES FROM INTERNET)
            retValue = SetWindowPos(Me.hWnd, HWND_TOPMOST, Me.CurrentX, Me.CurrentY, 160, 80, SWP_SHOWWINDOW)
        'BACKGROUND TRANSPARENT (CODES FROM INTERNET)
            Me.BackColor = &H0
            Dim rtn As Long
            Dim BorderStyler
            BorderStyler = 0
            rtn = GetWindowLong(hWnd, GWL_EXSTYLE)
            rtn = rtn Or WS_EX_LAYERED 'Or WS_EX_TRANSPARENT 'WARNING: If this code is enabled, FormBigFloatingClock will be uncontrollable.
            SetWindowLong hWnd, GWL_EXSTYLE, rtn
            SetLayeredWindowAttributes hWnd, &H0, 0, LWA_COLORKEY
        'LOCATE POSITION
            Me.Width = 2430
            Me.Height = 1275
            Me.Left = 0
            Me.Top = 0
    End Sub

'[] COMMANDS []

    Public Sub LabelHour_DblClick()
        FormMainWindow.Show
        FormMainWindow.WindowState = 0
    End Sub
    Public Sub LabelMin_DblClick()
        FormMainWindow.bigfloatingclockswitch = True
        Call FormMainWindow.MenuExtrasBigFloatingClock_Click
    End Sub

'[] MOUSEMOVE []

    Public Sub LabelHour_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        If FormMainWindow.bigfloatingclockautohideswitch = False Then Exit Sub
        LabelHour.Visible = False
        LabelMin.Visible = False
        LabelDot.Visible = False
        LabelHourShadow.Visible = False
        LabelMinShadow.Visible = False
        LabelDotShadow.Visible = False
        bigfloatingclockautohidetimeout = 50
        TimerBigFloatingClockAutoHide.Enabled = True
    End Sub
    Public Sub LabelMin_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        If FormMainWindow.bigfloatingclockautohideswitch = False Then Exit Sub
        LabelHour.Visible = False
        LabelMin.Visible = False
        LabelDot.Visible = False
        LabelHourShadow.Visible = False
        LabelMinShadow.Visible = False
        LabelDotShadow.Visible = False
        bigfloatingclockautohidetimeout = 50
        TimerBigFloatingClockAutoHide.Enabled = True
    End Sub
    Public Sub LabelDot_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
        If FormMainWindow.bigfloatingclockautohideswitch = False Then Exit Sub
        LabelHour.Visible = False
        LabelMin.Visible = False
        LabelDot.Visible = False
        LabelHourShadow.Visible = False
        LabelMinShadow.Visible = False
        LabelDotShadow.Visible = False
        bigfloatingclockautohidetimeout = 50
        TimerBigFloatingClockAutoHide.Enabled = True
    End Sub
