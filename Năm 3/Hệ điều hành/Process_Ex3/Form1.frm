VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Giam sat Process"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   375
      Left            =   1380
      TabIndex        =   0
      Top             =   1200
      Width           =   1515
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Mo mot tien trinh da co (giup ta Kiem soat tien trinh)
Private Declare Function OpenProcess Lib "kernel32" _
   (ByVal dwDesiredAccess As Long, ByVal bInheritHandle _
   As Long, ByVal dwProcessId As Long) As Long
   
'Ham sau tra ve trang thai Ket thuc cua mot Tien trinh:
Private Declare Function GetExitCodeProcess Lib "kernel32" _
   (ByVal hProcess As Long, lpExitCode As Long) As Long
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds _
   As Long)
   
Const STILL_ACTIVE = &H103
Const PROCESS_QUERY_INFORMATION = &H400
Dim DuongDan As String


Private Sub Command1_Click()
    'Dim DuongDan As String
    DuongDan = "c:\windows\notepad.exe"
    ChayVaGiamSat DuongDan
End Sub


Sub ChayVaGiamSat(ByVal DuongDan As String)
    Dim hProcess As Long
    Dim RetVal As Long
    
    'The next line launches Duongdan,
    'captures process ID
    ProcessId = Shell(DuongDan, 1)
    
    'Kiem soat Tien trinh co ID la ProcessId (vua chay o tren) - Thong qua Handle cua Tien Trinh: hProcess
    hProcess = OpenProcess(PROCESS_QUERY_INFORMATION, Flase, ProcessId)
    
    Do
        'Lay Trang thai cua Tien Trinh co Handle la hProcess:
        GetExitCodeProcess hProcess, RetVal
        'Sleep command recommended as well
        'as DoEvents
        DoEvents: Sleep 100
    'Loop while the process is active
    Loop While RetVal = STILL_ACTIVE
    MsgBox "Chuong trinh Notepad vua ket thuc !"
End Sub


