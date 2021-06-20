Attribute VB_Name = "MultiThreaded_Main"
 Option Explicit
 
Public Declare Function CreateThread Lib "kernel32" _
(ByVal lpThreadAttributes As Long, _
ByVal dwStackSize As Long, _
ByVal lpStartAddress As Any, _
ByRef lpParameter As Any, _
ByVal dwCreationFlags As Long, _
ByRef lpThreadId As Long) As Long
'lpStartAddress:     'Dia chi bat dau cua Doan Lenh (Ham or Thu tuc) tuong ung voi Thread duoc khoi tao?

' If you only are passing a single variable type like an integer or

' string as the thread parameter, use this version of CreateThread.

' Note that I set the lpParameter type to long.

Public Declare Function CreateThread_ByValParam Lib "kernel32" _
Alias "CreateThread" _
(ByVal lpThreadAttributes As Long, _
ByVal dwStackSize As Long, _
ByVal lpStartAddress As Any, _
ByVal lpParameter As Long, _
ByVal dwCreationFlags As Long, _
ByRef lpThreadId As Long) As Long
'lpStartAddress:     'Dia chi bat dau cua Doan Lenh (Ham or Thu tuc) tuong ung voi Thread duoc khoi tao?

' So you can determine which thread the code is executing in.

Public Declare Function GetCurrentThreadId Lib "kernel32" () As Long

' This is the type that is passed to HamHienMsg so you can do the by
' reference demonstration.

Type PARAM_TYPE

lValue As Long

End Type

Private Declare Function timeGetTime Lib "winmm.dll" () As Long
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)



Public Function HienSo1() As Long

Form1.Label1_2.Caption = "Thread ID: " & CStr(GetCurrentThreadId)

Dim i%
Dim TimeBuf As Long

    For i = 1 To 10
    TimeBuf = timeGetTime
        Form1.Label1.Caption = Str(i)
        'Wait some milliseconds...
        Do While timeGetTime - TimeBuf < 5
            Sleep 300
        Loop
        
    Next


' Just to make the return value different, I return -2.

HienSo1 = -2

End Function

