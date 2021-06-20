VERSION 5.00
Begin VB.Form frmTest 
   BorderStyle     =   1  'Fest Einfach
   Caption         =   "Multithreading Example"
   ClientHeight    =   7080
   ClientLeft      =   3300
   ClientTop       =   2160
   ClientWidth     =   8175
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7080
   ScaleWidth      =   8175
   StartUpPosition =   2  'Bildschirmmitte
   Begin VB.Frame frOutput 
      Caption         =   "Output thread 2 :"
      Height          =   3015
      Index           =   1
      Left            =   4200
      TabIndex        =   23
      Top             =   3960
      Width           =   3855
      Begin VB.PictureBox picOutput 
         Height          =   1695
         Index           =   1
         Left            =   120
         ScaleHeight     =   1635
         ScaleWidth      =   3555
         TabIndex        =   25
         Top             =   1200
         Width           =   3615
         Begin VB.PictureBox picDisplay 
            BorderStyle     =   0  'Kein
            Height          =   615
            Left            =   1440
            ScaleHeight     =   615
            ScaleWidth      =   615
            TabIndex        =   28
            Top             =   600
            Width           =   615
         End
      End
      Begin VB.Label lblOutput 
         Caption         =   $"frmTest.frx":0000
         Height          =   855
         Index           =   1
         Left            =   120
         TabIndex        =   27
         Top             =   360
         Width           =   3615
      End
   End
   Begin VB.Frame frOutput 
      Caption         =   "Output thread 1 :"
      Height          =   3015
      Index           =   0
      Left            =   120
      TabIndex        =   22
      Top             =   3960
      Width           =   3855
      Begin VB.PictureBox picOutput 
         Height          =   1695
         Index           =   0
         Left            =   120
         ScaleHeight     =   1635
         ScaleWidth      =   3555
         TabIndex        =   24
         Top             =   1200
         Width           =   3615
      End
      Begin VB.Label lblOutput 
         Caption         =   $"frmTest.frx":00B2
         Height          =   855
         Index           =   0
         Left            =   120
         TabIndex        =   26
         Top             =   360
         Width           =   3615
      End
   End
   Begin VB.CommandButton cmdStartThread 
      Caption         =   "Start thread 2"
      Height          =   375
      Index           =   1
      Left            =   6000
      TabIndex        =   21
      Top             =   2160
      Width           =   2055
   End
   Begin VB.CommandButton cmdTerminateThread 
      Caption         =   "Terminate thread 2"
      Height          =   375
      Index           =   1
      Left            =   6000
      TabIndex        =   20
      Top             =   3120
      Width           =   2055
   End
   Begin VB.CommandButton cmdSetProperties 
      Caption         =   "Set properties thread 2"
      Height          =   375
      Index           =   1
      Left            =   6000
      TabIndex        =   19
      Top             =   2640
      Width           =   2055
   End
   Begin VB.CommandButton cmdSetProperties 
      Caption         =   "Set properties thread 1"
      Height          =   375
      Index           =   0
      Left            =   6000
      TabIndex        =   2
      Top             =   720
      Width           =   2055
   End
   Begin VB.CommandButton cmdTerminateThread 
      Caption         =   "Terminate thread 1"
      Height          =   375
      Index           =   0
      Left            =   6000
      TabIndex        =   3
      Top             =   1200
      Width           =   2055
   End
   Begin VB.CommandButton cmdStartThread 
      Caption         =   "Start thread 1"
      Height          =   375
      Index           =   0
      Left            =   6000
      TabIndex        =   1
      Top             =   240
      Width           =   2055
   End
   Begin VB.Frame frThreadControl 
      Caption         =   "Thread 2 :"
      Height          =   1815
      Index           =   1
      Left            =   120
      TabIndex        =   11
      Top             =   2040
      Width           =   5775
      Begin VB.ComboBox cmbThreadPriority 
         Height          =   315
         Index           =   1
         ItemData        =   "frmTest.frx":0179
         Left            =   120
         List            =   "frmTest.frx":018C
         Style           =   2  'Dropdown-Liste
         TabIndex        =   13
         Top             =   600
         Width           =   2655
      End
      Begin VB.CheckBox chkEnabled 
         Caption         =   "Enabled"
         Height          =   255
         Index           =   1
         Left            =   3000
         TabIndex        =   12
         Top             =   600
         Value           =   1  'Aktiviert
         Width           =   2655
      End
      Begin VB.Label lblTID 
         Caption         =   "Thread ID :"
         Height          =   255
         Index           =   1
         Left            =   3000
         TabIndex        =   18
         Top             =   1080
         Width           =   2655
      End
      Begin VB.Label lblTH 
         Caption         =   "Thread handle :"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   17
         Top             =   1080
         Width           =   2655
      End
      Begin VB.Label lblPriority 
         Caption         =   "Thread priority :"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label lblThreadHandle 
         Caption         =   "Start thread to see thread handle"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   15
         Top             =   1440
         Width           =   2655
      End
      Begin VB.Label lblThreadID 
         Caption         =   "Start thread to see thread ID"
         Height          =   255
         Index           =   1
         Left            =   3000
         TabIndex        =   14
         Top             =   1440
         Width           =   2655
      End
   End
   Begin VB.Frame frThreadControl 
      Caption         =   "Thread 1 :"
      Height          =   1815
      Index           =   0
      Left            =   120
      TabIndex        =   5
      Top             =   120
      Width           =   5775
      Begin VB.CheckBox chkEnabled 
         Caption         =   "Enabled"
         Height          =   255
         Index           =   0
         Left            =   3000
         TabIndex        =   4
         Top             =   600
         Value           =   1  'Aktiviert
         Width           =   2655
      End
      Begin VB.ComboBox cmbThreadPriority 
         Height          =   315
         Index           =   0
         ItemData        =   "frmTest.frx":01C5
         Left            =   120
         List            =   "frmTest.frx":01D8
         Style           =   2  'Dropdown-Liste
         TabIndex        =   0
         Top             =   600
         Width           =   2655
      End
      Begin VB.Label lblThreadID 
         Caption         =   "Start thread to see thread ID"
         Height          =   255
         Index           =   0
         Left            =   3000
         TabIndex        =   10
         Top             =   1440
         Width           =   2655
      End
      Begin VB.Label lblThreadHandle 
         Caption         =   "Start thread to see thread handle"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   9
         Top             =   1440
         Width           =   2655
      End
      Begin VB.Label lblPriority 
         Caption         =   "Thread priority :"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   8
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label lblTH 
         Caption         =   "Thread handle :"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   7
         Top             =   1080
         Width           =   2655
      End
      Begin VB.Label lblTID 
         Caption         =   "Thread ID :"
         Height          =   255
         Index           =   0
         Left            =   3000
         TabIndex        =   6
         Top             =   1080
         Width           =   2655
      End
   End
   Begin VB.Image imgAnimation 
      Height          =   480
      Index           =   0
      Left            =   6120
      Picture         =   "frmTest.frx":0211
      Top             =   6720
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgAnimation 
      Height          =   480
      Index           =   1
      Left            =   6720
      Picture         =   "frmTest.frx":051B
      Top             =   6720
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgAnimation 
      Height          =   480
      Index           =   2
      Left            =   7320
      Picture         =   "frmTest.frx":0825
      Top             =   6720
      Visible         =   0   'False
      Width           =   480
   End
   Begin VB.Image imgAnimation 
      Height          =   480
      Index           =   3
      Left            =   7920
      Picture         =   "frmTest.frx":0B2F
      Top             =   6720
      Visible         =   0   'False
      Width           =   480
   End
End
Attribute VB_Name = "frmTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'API Declarations
Private Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Private Declare Function GetCurrentProcess Lib "kernel32" () As Long

Private ThreadControl1 As clsThreading
Private ThreadControl2 As clsThreading

Private Sub cmdSetProperties_Click(Index As Integer)
    Dim mThreadPriority As Long
    Dim mEnabled As Boolean
    If Index = 0 Then
        'Get the thread priority
        Select Case cmbThreadPriority(0).Text
            Case "Lowest"
                mThreadPriority = tpLowest
            Case "Below normal"
                mThreadPriority = tpBelowNormal
            Case "Normal"
                mThreadPriority = tpNormal
            Case "Above normal"
                mThreadPriority = tpAboveNormal
            Case "Highest"
                mThreadPriority = tpHighest
        End Select
        
        'Get the 'Enabled' value
        If chkEnabled(0).Value = 1 Then
            mEnabled = True
        ElseIf chkEnabled(0).Value = 0 Then
            mEnabled = False
        End If
        
        'Set the properties
        ThreadControl1.Priority = mThreadPriority
        ThreadControl1.Enabled = mEnabled
    ElseIf Index = 1 Then
        'Get the thread priority
        Select Case cmbThreadPriority(1).Text
            Case "Lowest"
                mThreadPriority = tpLowest
            Case "Below normal"
                mThreadPriority = tpBelowNormal
            Case "Normal"
                mThreadPriority = tpNormal
            Case "Above normal"
                mThreadPriority = tpAboveNormal
            Case "Highest"
                mThreadPriority = tpHighest
        End Select
        
        'Get the 'Enabled' value
        If chkEnabled(1).Value = 1 Then
            mEnabled = True
        ElseIf chkEnabled(1).Value = 0 Then
            mEnabled = False
        End If
        
        'Set the properties
        ThreadControl2.Priority = mThreadPriority
        ThreadControl2.Enabled = mEnabled
    End If
End Sub

Private Sub cmdStartThread_Click(Index As Integer)
    Dim mThreadPriority As Long
    Dim mEnabled As Boolean
    If Index = 0 Then
        'Get the thread priority
        Select Case cmbThreadPriority(0).Text
            Case "Lowest"
                mThreadPriority = tpLowest
            Case "Below normal"
                mThreadPriority = tpBelowNormal
            Case "Normal"
                mThreadPriority = tpNormal
            Case "Above normal"
                mThreadPriority = tpAboveNormal
            Case "Highest"
                mThreadPriority = tpHighest
        End Select
        
        'Get the 'Enabled' value
        If chkEnabled(0).Value = 1 Then
            mEnabled = True
        ElseIf chkEnabled(0).Value = 0 Then
            mEnabled = False
        End If
        
        'Create the thread
        ThreadControl1.CreateNewThread AddressOf ShowMovingLine, mThreadPriority, mEnabled
        'Display the thread handle and the thread ID
        lblThreadHandle(0).Caption = ThreadControl1.ThreadHandle
        lblThreadID(0).Caption = ThreadControl1.ThreadID
    ElseIf Index = 1 Then
        'Get the thread priority
        Select Case cmbThreadPriority(1).Text
            Case "Lowest"
                mThreadPriority = tpLowest
            Case "Below normal"
                mThreadPriority = tpBelowNormal
            Case "Normal"
                mThreadPriority = tpNormal
            Case "Above normal"
                mThreadPriority = tpAboveNormal
            Case "Highest"
                mThreadPriority = tpHighest
        End Select
        
        'Get the 'Enabled' value
        If chkEnabled(1).Value = 1 Then
            mEnabled = True
        ElseIf chkEnabled(1).Value = 0 Then
            mEnabled = False
        End If
        
        'Create the thread
        ThreadControl2.CreateNewThread AddressOf ShowAnimation, mThreadPriority, mEnabled
        'Display the thread handle and the thread ID
        lblThreadHandle(1).Caption = ThreadControl2.ThreadHandle
        lblThreadID(1).Caption = ThreadControl2.ThreadID
    End If
End Sub

Private Sub cmdTerminateThread_Click(Index As Integer)
    'Terminate the thread
    If Index = 0 Then
        ThreadControl1.TerminateCurrentThread
    ElseIf Index = 1 Then
        ThreadControl2.TerminateCurrentThread
    End If
End Sub

Private Sub Form_Load()
    Set ThreadControl1 = New clsThreading
    Set ThreadControl2 = New clsThreading
    'Select the 'Normal' items into the combo boxes
    cmbThreadPriority(0).ListIndex = 2
    cmbThreadPriority(1).ListIndex = 2
    'Center picDisplay in the PictureBox
    picDisplay.Left = picOutput(1).Width / 2 - picDisplay.Width / 2
    picDisplay.Top = picOutput(1).Height / 2 - picDisplay.Height / 2
End Sub

Private Sub Form_Unload(Cancel As Integer)
    'Terminate the Threads
    ThreadControl1.TerminateCurrentThread
    ThreadControl2.TerminateCurrentThread
    'Fully terminate the current process
    Call TerminateProcess(GetCurrentProcess, ByVal 0&)
End Sub
