VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Kiem soat Process"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "End"
      Height          =   465
      Left            =   2670
      TabIndex        =   1
      Top             =   1020
      Width           =   1155
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   465
      Left            =   780
      TabIndex        =   0
      Top             =   1020
      Width           =   1035
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Type PROCESS_INFORMATION


      hProcess As Long
      hThread As Long
      dwProcessId As Long
      dwThreadId As Long

End Type
Private Type STARTUPINFO


      cb As Long
      lpReserved As String
      lpDesktop As String
      lpTitle As String
      dwX As Long
      dwY As Long
      dwXSize As Long
      dwYSize As Long
      dwXCountChars As Long
      dwYCountChars As Long
      dwFillAttribute As Long
      dwFlags As Long
      wShowWindow As Integer
      cbReserved2 As Integer
      lpReserved2 As Long
      hStdInput As Long
      hStdOutput As Long
      hStdError As Long

End Type

'Tao mot tien trinh:
   Private Declare Function CreateProcess Lib "kernel32" Alias _
      "CreateProcessA" (ByVal lpApplicationName As String, ByVal _
      lpCommandLine As String, lpProcessAttributes As Any, _
      lpThreadAttributes As Any, ByVal bInheritHandles As Long, _
      ByVal dwCreationFlags As Long, lpEnvironment As Any, ByVal _
      lpCurrentDriectory As String, lpStartupInfo As STARTUPINFO, _
      lpProcessInformation As PROCESS_INFORMATION) As Long
'Mo mot tien trinh da co:
   Private Declare Function OpenProcess Lib "kernel32.dll" (ByVal _
      dwAccess As Long, ByVal fInherit As Integer, ByVal hObject _
      As Long) As Long
      
'Ket thuc tien trinh dang chay:
   Private Declare Function TerminateProcess Lib "kernel32" (ByVal _
      hProcess As Long, ByVal uExitCode As Long) As Long

'Dong cac Handle: tra lai the bai cho He thong
   Private Declare Function CloseHandle Lib "kernel32" (ByVal _
      hObject As Long) As Long

   Const SYNCHRONIZE = 1048576
   Const NORMAL_PRIORITY_CLASS = &H20&


Dim pInfo As PROCESS_INFORMATION   ' Bien chua cac thong tin ve Process
'pInfo.hProcess: Chua Handle cua Process dang chay, dung de nhan biet va Ket thuc Process


Private Sub Command1_Click()
'Dim pInfo As PROCESS_INFORMATION  'Chuyen len thanh bien toan cuc, de Thu tuc Dong Chuong Trinh co the goi
Dim sInfo As STARTUPINFO
Dim sNull As String

sInfo.cb = Len(sInfo)
success& = CreateProcess(sNull, "Calc.exe", ByVal 0&, ByVal 0&, _
      1&, NORMAL_PRIORITY_CLASS, ByVal 0&, sNull, sInfo, pInfo)

   ' ProcessID& = Shell("Calc.exe", vbNormalFocus)
   ' ProcessHandle& = OpenProcess(SYNCHRONIZE, True, ProcessID&)

   MsgBox "Chuong trinh Calculator da chay!"

End Sub

Private Sub Command2_Click()

   ret& = TerminateProcess(pInfo.hProcess, 0&)  'Ket thuc chuong trinh
   ret& = CloseHandle(pInfo.hThread)   'Tra lai The Bai cua Thread cho he thong
   ret& = CloseHandle(pInfo.hProcess)   'Tra lai The Bai cua Process cho he thong

   ' ret& = TerminateProcess(ProcessHandle&, 0&)
   ' ret& = CloseHandle(ProcessHandle&)
   ' ret& = CloseHandle(ProcessHandle&)

   MsgBox "Chuong trinh Calculator ket thuc!"



End Sub

